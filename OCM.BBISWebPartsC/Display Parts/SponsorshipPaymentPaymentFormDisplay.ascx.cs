#region Usings
using System;
using System.Collections.Generic;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Blackbaud.AppFx.WebAPI.ServiceProxy;
using Const = Blackbaud.AppFx.Constituent.Catalog.WebApiClient;
using Blackbaud.AppFx.Fundraising.Catalog.WebApiClient.AddForms.Revenue;
using Blackbaud.AppFx.Sponsorship.Catalog.WebApiClient.AddForms.Sponsorship;
using Blackbaud.Web.Content.Core;
using Blackbaud.AppFx.XmlTypes.DataForms;
using System.Data.SqlClient;
using OCM.BBISWebParts.Classes;
#endregion


namespace OCM.BBISWebParts
{
    public partial class SponsorshipPaymentPaymentFormDisplay : BBNCExtensions.Parts.CustomPartDisplayBase
    {
        //private const string c_REFERRER = "REFERRER";
        private const bool c_DEBUG = true; //if this is set to true and its my machine then it puts default data in for me 
        //private const string c_HEARDABOUTUSROWS = "HEARDABOUTUSROWS";
        //private const string c_HEARDABOUTUSSUBROWS = "HEARDABOUTUSSUBROWS";
        private const string c_CARTDATA = "PaymentCartData";

        private SponsorshipPaymentPaymentFormOptions _myContent;

        private SponsorshipPaymentPaymentFormOptions MyContent
        {
            get
            {
                if (_myContent == null)
                {
                    _myContent = (SponsorshipPaymentPaymentFormOptions)this.Content.GetContent(typeof(SponsorshipPaymentPaymentFormOptions));

                    if (_myContent == null)
                    {
                        _myContent = new SponsorshipPaymentPaymentFormOptions();
                    }
                }

                return _myContent;
            }
        }

       

        //private string REFERRER
        //{
        //    get
        //    {
        //        return (Session[c_REFERRER] == null ? String.Empty : Session[c_REFERRER].ToString());
        //    }
        //    set
        //    {
        //        Session[c_REFERRER] = value;
        //    }
        //}

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //if (string.IsNullOrWhiteSpace(REFERRER))
                //{
                //    REFERRER =  (Request.UrlReferrer == null ? null : Request.UrlReferrer.ToString());
                //}
                
                //lblReferrer.Text = REFERRER;

                if (this.total == 0)
                {                    
                    lblError.Text = "There was a problem with the sponsorship payment cart. It appears to be empty.";
                    lblError.Font.Bold = true;
                    this.lblError.Visible = true;                    
                    btnSubmit.Enabled = false;
                }
                try
                {
                    this.populateYears();
                    //this.populateHearAbout();
					this.loadConstituentAddress();
                    this.showTotal();
                }
                catch
                {
                    //ignore
                }
            }
        }

        private DataTable cartData
        {
            get
            {                
                return (DataTable)Session[c_CARTDATA];                
            }
            set { Session[c_CARTDATA] = value; }
        }


        private decimal total
        {
            get
            {
                decimal results = 0;

                if (this.cartData != null)
                {
                    foreach (DataRow dr in this.cartData.Rows)
                    {
                        results += Convert.ToInt32(dr["Months"]) * Convert.ToDecimal(dr["Amount"]);
                    }
                }

                return results;
            }
        }

        private void showTotal()
        {
            this.lblTotal.Text = "Total sponsorship payment amount is " + this.total.ToString("c");
        }

		private void loadConstituentAddress()
		{
			Guid constituentID = findConstituent();
			if (constituentID != null)
			{	
				
				try
				{
					Const.ViewForms.Constituent.ConstituentFirstNameLastNameViewFormData constituentName = Const.ViewForms.Constituent.ConstituentFirstNameLastNameViewForm.LoadData(API.AppFxWebServiceProvider, constituentID.ToString());
					this.txtFirstName.Text = constituentName.FIRSTNAME;
					this.txtLastName.Text = constituentName.KEYNAME;

					OCM.BBISWebParts.ConstituentPrimaryAddressOCMViewFormData addressInfo = OCM.BBISWebParts.ConstituentPrimaryAddressOCMViewForm.LoadData(API.AppFxWebServiceProvider, constituentID.ToString());
					if (addressInfo.ISUSADDRESS == true)
					{
						this.txtCity.Text = addressInfo.CITY;
						this.txtZip.Text = addressInfo.POSTCODE;
						this.txtAddress.Text = addressInfo.ADDRESSBLOCK;
						this.txtDayPhone.Text = addressInfo.PHONENUMBER;
						this.txtEmail.Text = addressInfo.EMAILADDRESS;
						ListItem itemToSelect = this.cmbState.Items.FindByText (addressInfo.STATEDESC); 
						if (itemToSelect != null)
						{
							itemToSelect.Selected = true;					
						}
					}
				}
				catch (Exception ex)
				{
					//do nothing
				}

			}
		}

        //private Guid createConsitutent(Guid stateID)
        //{
        //    string addDataForm = "1f9671b3-6740-447c-ad15-ef2718c0e43a";

        //    DataFormLoadRequest request = Const.AddForms.Constituent.IndividualSpouseBusinessAddForm.CreateLoadRequest(this.API.AppFxWebServiceProvider);
        //    request.FormID = new Guid(addDataForm);
        //    Const.AddForms.Constituent.IndividualSpouseBusinessAddFormData data = Const.AddForms.Constituent.IndividualSpouseBusinessAddForm.LoadData(this.API.AppFxWebServiceProvider, request);

        //    data.FIRSTNAME = this.txtFirstName.Text;
        //    data.MIDDLENAME = this.txtMiddle.Text;
        //    data.LASTNAME = this.txtLastName.Text;
        //    data.ADDRESS_ADDRESSBLOCK = this.txtAddress.Text + " " + this.txtAddress2.Text;
        //    data.ADDRESS_CITY = this.txtCity.Text;
        //    data.ADDRESS_POSTCODE = this.txtZip.Text;
        //    data.ADDRESS_STATEID = stateID;
        //    data.PHONE_NUMBER = this.txtDayPhone.Text;
        //    data.EMAILADDRESS_EMAILADDRESS = this.txtEmail.Text;
            
        //    data.Save(this.API.AppFxWebServiceProvider);

        //    return new Guid(data.RecordID);
        //}

		// csm - changed this to return the auth code instead of bool
        private string processPayment()
        {
            BBPSPaymentInfo payment = new BBPSPaymentInfo();

            //chriswh 6/20/2013
            //bug fix to stop the creation of the donation batch
            //since it is already being written directly to the system
            payment.SkipCreateGiftTransaction = true;
            
            payment.DemoMode = MyContent.DemoMode;
            payment.MerchantAcctID = MyContent.MerchantAccountID;
            payment.Bbpid = Utility.GetBbbid(MyContent.MerchantAccountID, this.API.Transactions.MerchantAccounts);
            payment.SkipCardValidation = MyContent.DemoMode;
            
            foreach (DataRow dr in this.cartData.Rows)
            {
                int designationId = Utility.GetBbncDesignationIdFromSponsorshipOpportunity(dr["Id"].ToString());
                decimal amount = Convert.ToInt32(dr["Months"]) * Convert.ToDecimal(dr["Amount"]);

                payment.AddDesignationInfo(amount, "BBIS Child Sponsorship Payment Transaction", designationId);
            }

            payment.AppealID = 1;
            payment.Comments = "";
            
            payment.PaymentMethod = BBNCExtensions.API.Transactions.PaymentArgs.ePaymentMethod.CreditCard;
            payment.CreditCardCSC = this.txtCcSecurityCode.Text;
            payment.CreditCardExpirationMonth = Convert.ToInt32(this.cmbCcExpMonth.SelectedValue);
            payment.CreditCardExpirationYear = Convert.ToInt32(this.cmbCcExpYear.SelectedValue);
            payment.CreditCardHolderName = this.txtCcName.Text;
            payment.CreditCardNumber = this.txtCcNumber.Text; //VIOLATION of PCI Compliance - as a developer we can by no means ever write code that consumes someones credit card number
            payment.CreditCardType = (BBNCExtensions.Interfaces.Services.CreditCardType)Enum.Parse(typeof(BBNCExtensions.Interfaces.Services.CreditCardType), this.cmbCcType.SelectedValue);			

            payment.DonorStreetAddress = this.txtAddress.Text;
            payment.DonorCity = this.txtCity.Text;
            payment.DonorStateProvince = this.cmbCountry.SelectedValue == "US" ? this.cmbState.SelectedValue : this.txtRegion.Text;
            payment.DonorZIP = this.txtZip.Text;
            
            payment.EmailAddress = this.txtEmail.Text;
            
            BBNCExtensions.API.Transactions.Donations.RecordDonationReply reply = this.API.Transactions.RecordDonation(payment.GeneratePaymentArgs());
			

            if (!payment.InterpretPaymentReply(reply).Success)
            {
                this.lblError.Visible = true;
                this.lblError.Text = payment.InterpretPaymentReply(reply).Message;
                return "";
            }
            else
            {
				if ((reply.CreditCardAuthorizationResponse == null) || (reply.CreditCardAuthorizationResponse.AUTHCODE == ""))
				{ 
					return "Success-NoAuthCode";
				}
				else
				{
					return reply.CreditCardAuthorizationResponse.AUTHCODE;
				}
            }
        }

        private void populateYears()
        {
            this.cmbCcExpYear.Items.Clear();
            this.cmbCcExpYear.Items.Add(new ListItem("-- Year --", ""));

            for (int i = 0; i < 15; i++)
            {
                int year = DateTime.Now.Year + i;
                this.cmbCcExpYear.Items.Add(new ListItem(year.ToString(), year.ToString()));
            }
        }

        //private void populateHearAbout()
        //{
        //    this.cmbHearAbout.Items.Clear();
        //    this.cmbHearAbout.Items.Add(new ListItem("-- Select --", ""));

        //    foreach (var row in GetHeardAboutUsRows())
        //    {
        //        ListItem item = new ListItem(row.SOURCEDESC);
        //        item.Attributes.Add("data", row.ADDITIONALINFORMATIONCAPTION);
        //        item.Attributes.Add("appealid", row.APPEALID.ToString());
        //        this.cmbHearAbout.Items.Add(item);
        //    }
        //}

        //private MoM.DataLists.WebsiteSponsorshipCheckoutSourceMainDataListRow[] GetHeardAboutUsRows()
        //{
        //    MoM.DataLists.WebsiteSponsorshipCheckoutSourceMainDataListRow[] rows = BBSession.TryItem<MoM.DataLists.WebsiteSponsorshipCheckoutSourceMainDataListRow[]>(c_HEARDABOUTUSROWS);

        //    if (rows == null)
        //    {
        //        DataListLoadRequest request = MoM.DataLists.WebsiteSponsorshipCheckoutSourceMainDataList.CreateRequest(this.API.AppFxWebServiceProvider);
        //        request.ContextRecordID = this.API.Users.CurrentUser.BackOfficeGuid.ToString();
        //        rows = MoM.DataLists.WebsiteSponsorshipCheckoutSourceMainDataList.GetRows(this.API.AppFxWebServiceProvider, request);

        //        BBSession.Add(c_HEARDABOUTUSROWS, rows);
        //    }

        //    return rows;
        //}

        //private MoM.DataLists.WebsiteSponsorshipCheckoutSourceRepsDataListRow[] GetHeardAboutUsSubRows()
        //{
        //    MoM.DataLists.WebsiteSponsorshipCheckoutSourceRepsDataListRow[] rows = BBSession.TryItem<MoM.DataLists.WebsiteSponsorshipCheckoutSourceRepsDataListRow[]>(c_HEARDABOUTUSSUBROWS);

        //    if (rows == null)
        //    {
        //        DataListLoadRequest request = MoM.DataLists.WebsiteSponsorshipCheckoutSourceRepsDataList.CreateRequest(this.API.AppFxWebServiceProvider);
        //        request.ContextRecordID = this.API.Users.CurrentUser.BackOfficeGuid.ToString();
        //        rows = MoM.DataLists.WebsiteSponsorshipCheckoutSourceRepsDataList.GetRows(this.API.AppFxWebServiceProvider, request);

        //        BBSession.Add(c_HEARDABOUTUSSUBROWS, rows);
        //    }

        //    return rows;
        //}

        #region "UI behavioral methods"
        protected void cmbCountry_SelectedIndexChanged(object sender, EventArgs e)
        {
         Country_SelectedIndexChanged(cmbCountry, txtRegion, reqRegion, cmbState, reqState, lblProvinceRegionRequired1);
        }

        private void Country_SelectedIndexChanged(DropDownList cmbCountry, TextBox txtRegion, RequiredFieldValidator reqRegion, DropDownList cmbState, RequiredFieldValidator reqState, Label lblProvinceRegionRequired)
        {
            bool enabled = (cmbCountry.SelectedValue.Equals("US") ? false : true);
            
            txtRegion.Enabled = enabled;            
            cmbState.Enabled = !enabled;
            reqState.Enabled = !enabled;
            reqRegion.Enabled = enabled;
            lblProvinceRegionRequired.Visible = enabled;            
        }

        //protected void cmbHearAbout_SelectedIndexChanged(object sender, EventArgs e)
        //{
        //    foreach (var row in GetHeardAboutUsRows())
        //    {
        //        if (row.SOURCEDESC == this.cmbHearAbout.SelectedItem.Text)
        //        {
        //            this.lblHearAbout.Text = row.ADDITIONALINFORMATIONCAPTION;
        //            this.trHearAbout.Visible = row.HASADDITIONALINFORMATION;

        //            if (row.ADDITIONALINFORMATIONDATALISTID != Guid.Empty)
        //            {
        //                txtHearAboutResponse.Visible = false;
        //                ddlHearAboutResponse.Visible = true;

        //                foreach (var row2 in GetHeardAboutUsSubRows())
        //                {
        //                    ListItem item = new ListItem(row2.SOURCEDESC, row2.APPEALID.ToString());
        //                    item.Attributes.Add("data", row2.SOLICITORID.ToString());
        //                    ddlHearAboutResponse.Items.Add(item);
        //                }
        //            }
        //            else
        //            {
        //                txtHearAboutResponse.Visible = true;
        //                ddlHearAboutResponse.Visible = false;
        //            }

        //            break;
        //        }
        //    }   

            
        //}
        #endregion

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                if (validCard())
                {
                    Guid constituentID = this.findConstituent();                    

                    //bool redirectToThankYou = false;
					string authCode = this.processPayment();
					if (authCode != "")
                    {
						this.createSponsorshipPayment(constituentID, authCode);
						// CSM - moved the email and cart data so it only happens if the payment was successfully processed 
						//redirectToThankYou = true;
						SendConfirmationEmail(GetMergeData());
						cartData = null;
						Utility.RedirectToBBISPage(MyContent.ThankYouPageID);
					}
                    
                    /*
                    SendConfirmationEmail(GetMergeData());

                    cartData = null;

                    if (redirectToThankYou)
                    {
                        Utility.RedirectToBBISPage(MyContent.ThankYouPageID);
                    }
					*/
                }
            }
            catch (Exception ex)
            {
                this.lblError.Visible = true;
                this.lblError.Text = ex.Message + "<br /><br />" + ex.StackTrace;
            }
        }

        private bool validCard()
        {
            DateTime cardDate = new DateTime(Convert.ToInt32(this.cmbCcExpYear.SelectedValue), Convert.ToInt32(this.cmbCcExpMonth.SelectedValue), 1);
            
            if (cardDate < DateTime.Now)
            {
                this.lblError.Visible = true;
                this.lblError.Text = "Credit Card is expired.";
                return false;
            }
            else
            {
                return true;
            }
        }

        private Guid findConstituent()
        {
            Guid id = Guid.Empty;            
            
            var constit = new Blackbaud.Web.Content.Core.Data.ShelbyConstituent(BBWebPrincipal.Current.User);
            id = new Guid(Blackbaud.Web.Content.Core.Data.ShelbyConstituent.get_GetConstituentsGuid(constit.RecordID));
            
            return id;
        }

        private Guid GetStateID(string stateAbbreviation)
        {
            Guid stateID = Guid.Empty;

            var states = Blackbaud.AppFx.WebAPI.SimpleDataLists.LoadSimpleDataList(BBNCExtensions.API.NetCommunity.Current().AppFxWebServiceProvider, new Guid("7FA91401-596C-4F7C-936D-6E41683121D7"));

            foreach(var s in states)
            {
                if(s.Label.Equals(stateAbbreviation))
                {
                    stateID = new Guid(s.Value);
                }
            }

            return stateID;
        }

        private void createSponsorshipPayment(Guid constituentId, string authCode)
        {
            DataFormLoadRequest request = PaymentAddForm.CreateLoadRequest(this.API.AppFxWebServiceProvider);
            request.FormID = new Guid("3e5b7b99-fb01-49d4-9020-c953006b7d0f");

            //List<string> giftsToProcess = new List<string>();
            //if (ViewState["selectedSponsorships"] != null)
            //{
            //    giftsToProcess = ViewState["selectedSponsorships"] as List<string>;
            //}
            //else
            //{
            //    giftsToProcess.Add(ViewState["GiftId"].ToString());
            //}

            //decimal enteredAmount = Convert.ToDecimal(this.lblAmount.Text);
            //decimal amount = enteredAmount / giftsToProcess.Count;
            //decimal runningTotal = 0;
            //amount = Math.Round(amount, 2);

            //for (int i=0; i < giftsToProcess.Count; i++)
            //{
            //    // if this is the last gift to process, check to see if we need to adjust for rounding
            //    if (i + 1 == giftsToProcess.Count)
            //    {
            //        if (runningTotal + amount != enteredAmount) amount = enteredAmount - runningTotal;
            //    }

            foreach (DataRow dr in cartData.Rows)
            {
                decimal paymentAmount = Convert.ToInt32(dr["Months"]) * Convert.ToDecimal(dr["Amount"]);

                PaymentAddFormData data = PaymentAddForm.LoadData(this.API.AppFxWebServiceProvider, request);
                data.CONSTITUENTID = this.API.Users.CurrentUser.BackOfficeGuid;
                data.DATE = DateTime.Now;
                data.AMOUNT = paymentAmount;
                data.PAYMENTMETHODCODE_IDVALUE = Blackbaud.AppFx.Fundraising.Catalog.WebApiClient.AddForms.Revenue.PaymentAddFormEnums.PAYMENTMETHODCODE.Credit_Card;
                data.APPLICATIONCODE_IDVALUE = Blackbaud.AppFx.Fundraising.Catalog.WebApiClient.AddForms.Revenue.PaymentAddFormEnums.APPLICATIONCODE.Recurring_Gift;
                data.REVENUESTREAMS = new PaymentAddFormData.REVENUESTREAMS_DATAITEM[1];
                data.REVENUESTREAMS[0] = new PaymentAddFormData.REVENUESTREAMS_DATAITEM();
                data.REVENUESTREAMS[0].APPLICATIONCODE_IDVALUE = Blackbaud.AppFx.Fundraising.Catalog.WebApiClient.AddForms.Revenue.PaymentAddFormEnums.REVENUESTREAMS_APPLICATIONCODE.Recurring_Gift;
                data.REVENUESTREAMS[0].APPLIED = paymentAmount;
                data.REVENUESTREAMS[0].APPLICATIONID = new Guid(Convert.ToString(dr["Id"]));
                //data.REVENUESTREAMS[0].APPLICATIONID = new Guid(giftsToProcess[i]);
                data.CREDITCARDNUMBER = this.txtCcNumber.Text;
                data.CARDHOLDERNAME = this.txtCcName.Text;
                data.EXPIRESON = new Blackbaud.AppFx.FuzzyDate(Convert.ToInt32(this.cmbCcExpYear.SelectedValue), Convert.ToInt32(this.cmbCcExpMonth.SelectedValue));
                data.CREDITTYPECODEID = Utility.GetCrmCC(this.cmbCcType.SelectedValue);
                data.RECEIPTAMOUNT = paymentAmount;
                data.SOURCECODE = "BBIS";
				data.AUTHORIZATIONCODE = authCode;

                data.Save(this.API.AppFxWebServiceProvider);

                //runningTotal += amount;
            }


        }
      
        #region Miscellaneous
        private Blackbaud.AppFx.Sponsorship.Catalog.WebApiClient.AddForms.Sponsorship.SponsorshipAddFormEnums.GENDERCODE getGender(string gender)
        {
            switch (gender)
            {
                case "boy":
                    return Blackbaud.AppFx.Sponsorship.Catalog.WebApiClient.AddForms.Sponsorship.SponsorshipAddFormEnums.GENDERCODE.Male;
                case "girl":
                    return Blackbaud.AppFx.Sponsorship.Catalog.WebApiClient.AddForms.Sponsorship.SponsorshipAddFormEnums.GENDERCODE.Female;
            }

            return Blackbaud.AppFx.Sponsorship.Catalog.WebApiClient.AddForms.Sponsorship.SponsorshipAddFormEnums.GENDERCODE.Male;
        }
        #endregion

        #region "Confirmation email and merge field methods"
        private List<MyMergeData> GetMergeData()
        {
            List<MyMergeData> mergeData = new List<MyMergeData>();

            MyMergeData myData = new MyMergeData();

            myData.DonorFirstName = txtFirstName.Text;
            myData.CreditCardHolderName = txtCcName.Text;

            string ccNumber = txtCcNumber.Text;

            myData.CreditCardNumber = ccNumber.Substring(ccNumber.Length - 4);
            myData.CreditCardType = cmbCcType.SelectedValue;
            myData.DonorAddressLines = string.Concat(txtAddress.Text, Environment.NewLine, txtAddress2.Text);
            myData.DonorCity = txtCity.Text;
            myData.DonorCountry = cmbCountry.SelectedValue;
            //myData.DonorCurrentSponsor = radIsSponsor.SelectedValue;
            myData.DonorDayPhone = txtDayPhone.Text;
            myData.DonorEmail = txtEmail.Text;
            //myData.DonorEveningPhone = txtNightPhone.Text;

            //string hearAbout = string.Concat(cmbHearAbout.SelectedItem.Text, " - ", txtHearAboutResponse.Text).Trim();
            //myData.DonorHearAboutUs = (hearAbout.Substring(hearAbout.Length - 1).Equals("-") ? hearAbout.Substring(0, hearAbout.Length - 1) : hearAbout);

            myData.DonorLastName = txtLastName.Text;
            myData.DonorMiddleName = txtMiddle.Text;
            myData.DonorState = cmbState.Text;
            myData.DonorZipCode = txtZip.Text;
            myData.TotalCost = this.total.ToString("c");

            List<ChildMergeData> children = null;

            if (cartData != null)
            {
                children = new List<ChildMergeData>();

                foreach (DataRow item in cartData.Rows)
                {
                    ChildMergeData kid = new ChildMergeData();
                    kid.Name = item["Name"].ToString();
                    kid.LookupID = item["Number"].ToString();
                    kid.Gender = "";
                    kid.DOB = "";
                    kid.Location = "";
                    kid.Amount = ((decimal)(int)item["Months"] * (decimal)item["Amount"]).ToString("c");
                    children.Add(kid);
                }
                myData.Children = children.ToArray();
            }

            mergeData.Add(myData);

            return mergeData;
        }

        private void SendConfirmationEmail(List<MyMergeData> mergeData)
        {
            var emailOptions = MyContent.EmailOptions;
            var template = new EmailTemplate(emailOptions.TemplateID);
            var email = new EMail(template);
            email.Save();

            var name = string.Empty;
            var emailAddress = string.Empty;

            var myData = mergeData[0];

            if (myData != null)
            {
                name = string.Concat(myData.DonorFirstName, " ", myData.DonorLastName).Trim();
                emailAddress = myData.DonorEmail;

                if (!string.IsNullOrWhiteSpace(emailAddress))
                {
                    MergeFieldsData[] provider = { new MergeFieldsData(mergeData.ToArray()) };
                    var html = emailOptions.HTML;

                    email.ContentHTML = Expand(emailOptions.HTML, mergeData.ToArray());
                    email.FromAddress = emailOptions.FromAddress;
                    email.FromDisplayName = emailOptions.FromName;
                    email.Subject = emailOptions.Subject;
                    email.ReplyAddress = emailOptions.ReplyAddress;

                    try
                    {
                        email.Send(emailAddress, name, API.Users.CurrentUser.RaisersEdgeID, API.Users.CurrentUser.UserID, provider, this.Page);
                    }
                    catch (Exception ex)
                    {
                        Common.LogErrorToDB(ex, false);
                    }
                }
            }
        }

        private string Expand(string html, IEnumerable<object> data)
        {
            if (html.IndexOf(HTMLHelper.MERGE_FIELD_ISLOOP_ATTR) < 0)
            {
                return html;
            }

            var sb = new System.Text.StringBuilder();
            var tw = new System.IO.StringWriter(sb);
            var hw = new HtmlTextWriter(tw);

            IEnumerable<string> sections = null;

            if (data is MyMergeData[])
            {
                sections = Blackbaud.Web.Content.Core.MergeFieldHelper.GetSections(ref html, (int)MergeFieldsProvider.eMyFields.BEGINSPONSORSHIPLOOP, (int)MergeFieldsProvider.eMyFields.ENDSPONSORSHIPLOOP, true);
            }
            else if (data is ChildMergeData[])
            {
                sections = Blackbaud.Web.Content.Core.MergeFieldHelper.GetSections(ref html, (int)MergeFieldsProvider.eMyFields.BEGINCHILDLOOP, (int)MergeFieldsProvider.eMyFields.ENDCHILDLOOP, true);
            }

            if (sections != null)
            {
                foreach (var sectionHTML in sections)
                {
                    if (!string.IsNullOrWhiteSpace(sectionHTML))
                    {
                        int itemRowNumber = 0;

                        foreach (var dataItem in data)
                        {
                            string workString = sectionHTML;

                            if (dataItem is MyMergeData)
                            {
                                workString = Expand(workString, ((MyMergeData)dataItem).Children);
                            }

                            Control htmlControl = Page.ParseControl(string.Concat(HTMLHelper.CORE_CONTROLS_REGISTER_DIRECTIVE, workString));

                            AssignRowNumbers(htmlControl.Controls, itemRowNumber);
                            htmlControl.RenderControl(hw);

                            itemRowNumber += 1;
                        }

                        html = html.Replace(sectionHTML, sb.ToString());
                    }
                }
            }

            return html;
        }

        private static void AssignRowNumbers(ControlCollection ctls, int itemRowNumber)
        {
            string MERGE_FIELD_ID_ATTR = "fieldid";
            string MERGE_FIELD_ROWNUMBER_ATTR = "rownumber";
            string MERGE_FIELD_ISLOOP_ATTR = "isloop";

            foreach (Control ctl in ctls)
            {
                System.Web.UI.HtmlControls.HtmlImage img = ctl as System.Web.UI.HtmlControls.HtmlImage;

                if (img != null)
                {
                    System.Web.UI.AttributeCollection attrs = img.Attributes;
                    int fieldID = DataObject.safeDBFieldIntValue(attrs[MERGE_FIELD_ID_ATTR]);
                    bool isLoop = DataObject.safeDBFieldBooleanValue(attrs[MERGE_FIELD_ISLOOP_ATTR]);

                    if (fieldID > 0)
                    {
                        if (!isLoop)
                        {
                            string rowNumAttr = attrs[MERGE_FIELD_ROWNUMBER_ATTR];

                            if (rowNumAttr == null)
                            {
                                rowNumAttr = "";
                            }

                            if (rowNumAttr.Length > 0)
                            {
                                rowNumAttr = string.Concat(itemRowNumber, "_", rowNumAttr);
                            }
                            else
                            {
                                rowNumAttr = itemRowNumber.ToString();
                            }

                            attrs[MERGE_FIELD_ROWNUMBER_ATTR] = rowNumAttr;
                        }

                        attrs["runat"] = "server";
                    }
                }

                if (ctl.Controls.Count > 0)
                {
                    AssignRowNumbers(ctl.Controls, itemRowNumber);
                }
            }
        }
        #endregion
        
        #region "Language Fields"
        public override void RegisterLanguageFields()
        {
            //string LANGGUID_lblHowDidYouHearAboutUs = "18c9e932-fe88-421b-b4a5-447896209302";

            //this.RegisterLanguageField(LANGGUID_lblHowDidYouHearAboutUs, lblHowDidYouHearAboutUs, "Hear about us", "How did you hear about us?", "Payment screen options", true);
        }
        #endregion
    }
}