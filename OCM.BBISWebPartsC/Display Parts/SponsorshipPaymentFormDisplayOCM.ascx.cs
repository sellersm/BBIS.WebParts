using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

using Blackbaud.AppFx.WebAPI;
using Blackbaud.AppFx.WebAPI.ServiceProxy;
using Blackbaud.AppFx.Constituent.Catalog.WebApiClient.AddForms.Constituent;
using Blackbaud.AppFx.Constituent.Catalog.WebApiClient.SearchLists.Constituent;
using Blackbaud.AppFx.Fundraising.Catalog.WebApiClient.AddForms.Revenue;
using Blackbaud.AppFx.Sponsorship.Catalog.WebApiClient.AddForms.Sponsorship;
using OCM.BBISWebParts.Classes;

namespace OCM.BBISWebParts
{
    public partial class SponsorshipPaymentFormDisplayOCM : BBNCExtensions.Parts.CustomPartDisplayBase
    {
        private const string c_Referrer = "REFERRER";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
               SponsorshipPaymentFormOptionsOCM options = (SponsorshipPaymentFormOptionsOCM)this.Content.GetContent(typeof(SponsorshipPaymentFormOptionsOCM));
               lblReferrer.Text = "v2 - " + (Session[c_Referrer] == null ? String.Empty : Session[c_Referrer].ToString());
               lblReferrer.Visible = options.DemoMode;
         
                if (this.total == 0)
                {
                //    Response.Redirect("/");
                }
                try
                {
                    this.populateYears();
                    this.populateHearAbout();
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
            get { return (DataTable)Session["CartData"]; }
            set { Session["CartData"] = value;}
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
            this.lblTotal.Text = "Total sponsorship amount is " + this.total.ToString("c"); 
        }

        private Guid createConsitutent()
        {
            string addDataForm = "1f9671b3-6740-447c-ad15-ef2718c0e43a";

            DataFormLoadRequest request = IndividualSpouseBusinessAddForm.CreateLoadRequest(this.API.AppFxWebServiceProvider);
            request.FormID = new Guid(addDataForm);            
            IndividualSpouseBusinessAddFormData data = IndividualSpouseBusinessAddForm.LoadData(this.API.AppFxWebServiceProvider, request);
            
            data.FIRSTNAME = this.txtFirstName.Text;
            data.MIDDLENAME = this.txtMiddle.Text;
            data.LASTNAME = this.txtLastName.Text;
            data.ADDRESS_ADDRESSBLOCK = this.txtAddress.Text + " " + this.txtAddress2.Text;
            data.ADDRESS_CITY = this.txtCity.Text;
            data.ADDRESS_STATEID = GetStateID(cmbState.Text);
            data.ADDRESS_POSTCODE = this.txtZip.Text;
            data.PHONE_NUMBER = this.txtDayPhone.Text;
            data.EMAILADDRESS_EMAILADDRESS = this.txtEmail.Text;            

            data.Save(this.API.AppFxWebServiceProvider);

            return new Guid(data.RecordID);
        }

        public void addGift(Guid constituentId)
        {
            DataFormLoadRequest request = RecurringGiftAddForm.CreateLoadRequest(this.API.AppFxWebServiceProvider);
            request.FormID = new Guid("47a3c222-5e99-44a2-a5ce-5989d18f5a13");
            RecurringGiftAddFormData data = RecurringGiftAddForm.LoadData(this.API.AppFxWebServiceProvider, request);

            data.AMOUNT = this.total;
            data.CONSTITUENTID = constituentId;
            data.CARDHOLDERNAME = this.txtCcName.Text;
            data.CREDITCARDNUMBER = this.txtCcNumber.Text;
            data.CREDITTYPECODEID = Utility.GetCrmCC(this.cmbCcType.SelectedValue);
            data.EXPIRESON = new Blackbaud.AppFx.FuzzyDate(Convert.ToInt32(this.cmbCcExpYear.SelectedValue), Convert.ToInt32(this.cmbCcExpMonth.SelectedValue));
            data.DATE = DateTime.Now;
            data.STARTDATE = DateTime.Now;
            data.SPLITS = new RecurringGiftAddFormData.SPLITS_DATAITEM[1];
            data.SPLITS[0] = new RecurringGiftAddFormData.SPLITS_DATAITEM();
            data.SPLITS[0].AMOUNT = this.total;
            data.SPLITS[0].DESIGNATIONID = new Guid("1B2EB1A9-2FC3-4AD1-A28C-2920799C3FDF");

            data.Save(this.API.AppFxWebServiceProvider);
        }

        private bool processPayment()
        {
            SponsorshipPaymentFormOptionsOCM options = (SponsorshipPaymentFormOptionsOCM)this.Content.GetContent(typeof(SponsorshipPaymentFormOptionsOCM));
            
            BBPSPaymentInfo payment = new BBPSPaymentInfo();
            payment.DemoMode = options.DemoMode;
            payment.MerchantAcctID = 14;
            payment.Bbpid = Utility.GetBbbid(14, this.API.Transactions.MerchantAccounts);
            payment.SkipCardValidation = false;
            foreach (DataRow dr in this.cartData.Rows)
            {
                int designationId = Utility.GetBbncDesignationIdFromSponsorshipOpportunity(dr["Id"].ToString());
                decimal amount = Convert.ToInt32(dr["Months"]) * Convert.ToDecimal(dr["Amount"]);

                payment.AddDesignationInfo(amount, "BBIS Child Sponsorship Transaction", designationId);
            }
            
            payment.AppealID = 1;
            payment.Comments = "";            
            if (this.radPayment.SelectedValue == "Check")
            {
                payment.PaymentMethod = BBNCExtensions.API.Transactions.PaymentArgs.ePaymentMethod.Check;
            } 
            else 
            {
                payment.PaymentMethod = BBNCExtensions.API.Transactions.PaymentArgs.ePaymentMethod.CreditCard;

                payment.CreditCardCSC = this.txtCcSecurityCode.Text;
                payment.CreditCardExpirationMonth = Convert.ToInt32(this.cmbCcExpMonth.SelectedValue);
                payment.CreditCardExpirationYear = Convert.ToInt32(this.cmbCcExpYear.SelectedValue);
                payment.CreditCardHolderName = this.txtCcName.Text;
                payment.CreditCardNumber = this.txtCcNumber.Text;
                payment.CreditCardType = (BBNCExtensions.Interfaces.Services.CreditCardType)Enum.Parse(typeof(BBNCExtensions.Interfaces.Services.CreditCardType), this.cmbCcType.SelectedValue);

                if (this.radBilling.SelectedValue == "Yes")
                {
                    payment.DonorStreetAddress = this.txtAddress.Text;
                    payment.DonorCity = this.txtCity.Text;
                    payment.DonorStateProvince = this.cmbCountry.SelectedValue == "US" ? this.cmbState.SelectedValue : this.txtRegion.Text;
                    payment.DonorZIP = this.txtZip.Text;
                }
                else
                {                    
                    payment.DonorStreetAddress = this.txtBillingAddress.Text;
                    payment.DonorCity = this.txtBillingCity.Text;
                    payment.DonorStateProvince = this.cmbCountry.SelectedValue == "US" ? this.cmbBillingState.SelectedValue : this.txtBillingRegion.Text;
                    payment.DonorZIP = this.txtBillingZip.Text;
                }
                
            }
            
            payment.EmailAddress = this.txtEmail.Text;
            BBNCExtensions.API.Transactions.Donations.RecordDonationReply reply = this.API.Transactions.RecordDonation(payment.GeneratePaymentArgs());
            if (!payment.InterpretPaymentReply(reply).Success)
            {
                this.lblError.Visible = true;
                this.lblError.Text = payment.InterpretPaymentReply(reply).Message;
                return false;
            }
            else
            {
                return true;
            }
        }

        private void populateYears()
        {
            this.cmbCcExpYear.Items.Clear();
            this.cmbCcExpYear.Items.Add(new ListItem("-- Year --", ""));
            for (int i=0;i<15;i++)
            {
                int year = DateTime.Now.Year + i;
                this.cmbCcExpYear.Items.Add(new ListItem(year.ToString(), year.ToString()));
            }
        }

        private void populateHearAbout()
        {
            DataListLoadRequest request = Blackbaud.CustomFx.ChildSponsorship.CrmObjects.DataLists.NOTUSED.WebsiteSponsorshipCheckoutSourceDataList.CreateRequest(this.API.AppFxWebServiceProvider);
            request.DataListID = new Guid("37fe2ce9-1889-49b9-86fe-75cbd3af0af1");
            request.ContextRecordID = this.API.Users.CurrentUser.BackOfficeGuid.ToString();
            Blackbaud.CustomFx.ChildSponsorship.CrmObjects.DataLists.NOTUSED.WebsiteSponsorshipCheckoutSourceDataListRow[] rows = Blackbaud.CustomFx.ChildSponsorship.CrmObjects.DataLists.NOTUSED.WebsiteSponsorshipCheckoutSourceDataList.GetRows(this.API.AppFxWebServiceProvider, request);

            this.cmbHearAbout.Items.Clear();
            this.cmbHearAbout.Items.Add(new ListItem("-- Select --",""));
            foreach (Blackbaud.CustomFx.ChildSponsorship.CrmObjects.DataLists.NOTUSED.WebsiteSponsorshipCheckoutSourceDataListRow row in rows)
            {
                ListItem item = new ListItem(row.SOURCEDESC, row.SOURCEDESC);
                item.Attributes.Add("data", row.ADDITIONALINFORMATIONCAPTION);
                this.cmbHearAbout.Items.Add(new ListItem(row.SOURCEDESC, row.SOURCEDESC));
            }
            
        }

        protected void cmbCountry_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (this.cmbCountry.SelectedValue == "US")
            {
                this.txtRegion.Enabled = false;
                this.cmbState.Enabled = true;
                this.reqState.Enabled = true;
                this.reqRegion.Enabled = false;
            }
            else
            {
                this.txtRegion.Enabled = true;
                this.cmbState.Enabled = false;
                this.reqState.Enabled = false;
                this.reqRegion.Enabled = true;
            }
        }

        protected void cmbBillingCountry_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (this.cmbBillingCountry.SelectedValue == "US")
            {
                this.txtBillingRegion.Enabled = false;
                this.cmbBillingState.Enabled = true;
                this.reqBillingState.Enabled = true;
                this.reqBillingRegion.Enabled = false;
            }
            else
            {
                this.txtBillingRegion.Enabled = true;
                this.cmbBillingState.Enabled = false;
                this.reqBillingState.Enabled = false;
                this.reqBillingRegion.Enabled = true;
            }
        }

        protected void radBilling_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (radBilling.SelectedValue == "Yes")
            {
                this.pnlBillingAddress.Visible = false;
            }
            else
            {
                this.pnlBillingAddress.Visible = true;
            }
        }

        protected void radIsSponsor_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (this.radIsSponsor.SelectedValue == "Yes")
            {
                this.trSponsorId.Visible = true;
                this.trHearAboutSelection.Visible = false;
                this.trHearAbout.Visible = false;
            }
            else
            {
                this.trSponsorId.Visible = false;
                this.trHearAboutSelection.Visible = true;
                this.showHideHearAbout();
            }
        }

        private void showHideHearAbout()
        {
            DataListLoadRequest request = Blackbaud.CustomFx.ChildSponsorship.CrmObjects.DataLists.NOTUSED.WebsiteSponsorshipCheckoutSourceDataList.CreateRequest(this.API.AppFxWebServiceProvider);
            request.DataListID = new Guid("37fe2ce9-1889-49b9-86fe-75cbd3af0af1");
            request.ContextRecordID = this.API.Users.CurrentUser.BackOfficeGuid.ToString();
            Blackbaud.CustomFx.ChildSponsorship.CrmObjects.DataLists.NOTUSED.WebsiteSponsorshipCheckoutSourceDataListRow[] rows = Blackbaud.CustomFx.ChildSponsorship.CrmObjects.DataLists.NOTUSED.WebsiteSponsorshipCheckoutSourceDataList.GetRows(this.API.AppFxWebServiceProvider, request);

            foreach (Blackbaud.CustomFx.ChildSponsorship.CrmObjects.DataLists.NOTUSED.WebsiteSponsorshipCheckoutSourceDataListRow row in rows)
            {
                if (row.SOURCEDESC == this.cmbHearAbout.SelectedValue)
                {
                    this.lblHearAbout.Text = row.ADDITIONALINFORMATIONCAPTION;
                    this.trHearAbout.Visible = row.HASADDITIONALINFORMATION; // !String.IsNullOrWhiteSpace(row.ADDITIONALINFORMATIONCAPTION);
                    break;
                }
            }
        }

        protected void cmbHearAbout_SelectedIndexChanged(object sender, EventArgs e)
        {
            this.showHideHearAbout();
        }

        protected void radPayment_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (radPayment.SelectedValue == "Check")
            {
                this.pnlCheck.Visible = true;
                this.pnlCC.Visible = false;
            }
            else
            {
                this.pnlCheck.Visible = false;
                this.pnlCC.Visible = true;
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            SponsorshipPaymentFormOptionsOCM options = (SponsorshipPaymentFormOptionsOCM)this.Content.GetContent(typeof(SponsorshipPaymentFormOptionsOCM));
            if (options != null)
            {
                try
                {

                    if (validCard())
                    {
                        Guid searchId = this.findConstituent();
                        Guid constituentId = searchId == Guid.Empty ? this.createConsitutent() : searchId;  //new Guid("AB7BD96E-F277-4C5F-B9FE-2D5E9DB1F9E7"); //
                        //this.addGift(constituentId);
                        this.createSponsorship(constituentId);
                        if (this.radPayment.SelectedValue == "Check")
                        {
                            Response.Redirect(options.ThankYouPage);
                        }
                        else
                        {
                            if (this.processPayment())
                            {
                                Session["CartData"] = null;                                
                                Response.Redirect(options.ThankYouPage);
                            }
                        }
                    }
                    
                }
                catch (Exception ex)
                {
                    this.lblError.Visible = true;
                    this.lblError.Text = ex.Message + "<br /><br />" + ex.StackTrace;
                }
            }
        }

        private bool validCard()
        {
            if (this.radPayment.SelectedValue == "Check") return true;

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
            SearchListLoadRequest request = ConstituentSearch.CreateRequest(this.API.AppFxWebServiceProvider);
            request.SearchListID = new Guid("23c5c603-d7d8-4106-aecc-65392b563887");

            ConstituentSearchFilterData data = new ConstituentSearchFilterData();
            data.CONSTITUENTTYPE = 1;

            if (this.radIsSponsor.SelectedValue == "")
            {
                data.LOOKUPID = this.txtSponsorId.Text;
            }
            else
            {
                data.FIRSTNAME = this.txtFirstName.Text;
                data.KEYNAME = this.txtLastName.Text;
                data.CITY = this.txtCity.Text;
                data.POSTCODE = this.txtZip.Text;
                data.ADDRESSBLOCK = this.txtAddress.Text;
            }
            

            string[] ids = ConstituentSearch.GetIDs(this.API.AppFxWebServiceProvider, data);
            if (ids.Length > 0)
            {
                if (ids.Length > 1)
                {
                    return new Guid(ids[0]);
                } 
                else 
                {
                    return new Guid(ids[0]);
                }
            }
            
            return Guid.Empty;
        }

        private Guid GetStateID(string stateAbbreviation)
        {
            Guid stateID = Guid.Empty;

            var states = Blackbaud.AppFx.WebAPI.SimpleDataLists.LoadSimpleDataList(BBNCExtensions.API.NetCommunity.Current().AppFxWebServiceProvider, new Guid("7FA91401-596C-4F7C-936D-6E41683121D7"));

            foreach (var s in states)
            {
                if (s.Label.Equals(stateAbbreviation))
                {
                    stateID = new Guid(s.Value);
                }
            }

            return stateID;
        }

        private void createSponsorship(Guid constituentId)
        {
            foreach (DataRow dr in this.cartData.Rows)
            {
                DataFormLoadRequest request = SponsorshipAddForm.CreateLoadRequest(this.API.AppFxWebServiceProvider);
                request.FormID = new Guid("8a73db30-db6b-4f03-869e-3a649887fba7");                
                SponsorshipAddFormData data = SponsorshipAddForm.LoadData(this.API.AppFxWebServiceProvider, request);
                
                data.REVENUECONSTITUENTID = constituentId;
                data.SPONSORSHIPCONSTITUENTID = constituentId;
                data.SPONSORSHIPOPPORTUNITYIDCHILD = new Guid(dr["Id"].ToString());

                if (this.radPayment.SelectedValue == "CC")
                {
                    data.PAYMENTMETHODCODE_IDVALUE = Blackbaud.AppFx.Sponsorship.Catalog.WebApiClient.AddForms.Sponsorship.SponsorshipAddFormEnums.PAYMENTMETHODCODE.Credit_Card;
                    data.CARDHOLDERNAME = this.txtCcName.Text;
                    data.CREDITCARDNUMBER = this.txtCcNumber.Text;
                    data.CREDITTYPECODEID = Utility.GetCrmCC(this.cmbCcType.SelectedValue);
                    data.FREQUENCYCODE_IDVALUE = this.getFrequency();
                    data.EXPIRESON = new Blackbaud.AppFx.FuzzyDate(Convert.ToInt32(this.cmbCcExpYear.SelectedValue), Convert.ToInt32(this.cmbCcExpMonth.SelectedValue));
                    data.AUTOPAY = true;
                }
                else
                {
                    data.AUTOPAY = false;
                }
                
                data.AMOUNT = Convert.ToDecimal(dr["Amount"]);
                
                data.SPONSORSHIPPROGRAMID = new Guid("32FA809A-5EF1-4A17-862C-7DFE0AB49F19");                
                data.STARTDATE = DateTime.Now;
                data.REVENUESCHEDULESTARTDATE = DateTime.Now;
                data.GENDERCODE_IDVALUE = this.getGender(dr["Gender"].ToString());                
                data.ISHIVPOSITIVECODE_IDVALUE = Blackbaud.AppFx.Sponsorship.Catalog.WebApiClient.AddForms.Sponsorship.SponsorshipAddFormEnums.ISHIVPOSITIVECODE.No;                
                data.HASCONDITIONCODE_IDVALUE = Blackbaud.AppFx.Sponsorship.Catalog.WebApiClient.AddForms.Sponsorship.SponsorshipAddFormEnums.HASCONDITIONCODE.No;
                data.ISORPHANEDCODE_IDVALUE = Blackbaud.AppFx.Sponsorship.Catalog.WebApiClient.AddForms.Sponsorship.SponsorshipAddFormEnums.ISORPHANEDCODE.No;                
                data.GIFTRECIPIENT = false;
                data.REFERENCE = (Session[c_Referrer] == null ? String.Empty : Session[c_Referrer].ToString())+ "; " + cmbHearAbout.SelectedValue.ToString() + "-" + txtHearAboutResponse.Text; 

                data.Save(this.API.AppFxWebServiceProvider);
            }

        }

        private Blackbaud.AppFx.Sponsorship.Catalog.WebApiClient.AddForms.Sponsorship.SponsorshipAddFormEnums.FREQUENCYCODE getFrequency()
        {
            switch (this.radCcRecurrence.SelectedValue)
            {
                case "3":
                    return Blackbaud.AppFx.Sponsorship.Catalog.WebApiClient.AddForms.Sponsorship.SponsorshipAddFormEnums.FREQUENCYCODE.Monthly;
                case "2":
                    return Blackbaud.AppFx.Sponsorship.Catalog.WebApiClient.AddForms.Sponsorship.SponsorshipAddFormEnums.FREQUENCYCODE.Quarterly;
                case "0":
                    return Blackbaud.AppFx.Sponsorship.Catalog.WebApiClient.AddForms.Sponsorship.SponsorshipAddFormEnums.FREQUENCYCODE.Annually;
            }

            return Blackbaud.AppFx.Sponsorship.Catalog.WebApiClient.AddForms.Sponsorship.SponsorshipAddFormEnums.FREQUENCYCODE.Monthly;
        }

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
    }
}
