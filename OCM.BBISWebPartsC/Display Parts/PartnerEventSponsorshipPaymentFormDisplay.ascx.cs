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
using Blackbaud.Web.Content.Core;
using OCM.BBISWebParts.Classes;

namespace OCM.BBISWebParts
{
    /// <summary>
    /// For simplicity, the Event process does not have a cart. Clicking the "Sponsor" button goes directly to this checkout form and bypasses the cart.
	/// Therefore, this form needs to populate the session cart with the child id passed in the url.
    /// </summary>
	public partial class PartnerEventSponsorshipPaymentFormDisplay : BBNCExtensions.Parts.CustomPartDisplayBase
    {
        private const string c_Referrer = "REFERRER";
		private const int c_ReferenceMaxLength = 255;

		private const string LockError = "Could not lock child.";
		private const string LockUnsuccessful = "Child is locked by another user.";
		private const string ChildNotEligible = "Child is not eligible.";
		private const string ChildNotReserved = "Child is not reserved.";

//		private Guid hillsAliveAppealID = new Guid("ac6577b1-bdd1-4132-8d7f-5af449a8825e"); // Hills Alive 2015

		private Guid _childID;
		private Guid ChildID
		{
			get
			{
				if (_childID == Guid.Empty)
				{
					//get child id from the querystring
					_childID = new Guid();

					if (Request.QueryString["ID"] != null)
					{
						Guid.TryParse(Request.QueryString["ID"], out _childID);
					}
				}

				return _childID;
			}
		}

		private PartnerEventSponsorshipPaymentFormOptions _myContent;
		private PartnerEventSponsorshipPaymentFormOptions MyContent
		{
			get
			{
				if (_myContent == null)
				{
					_myContent = (PartnerEventSponsorshipPaymentFormOptions)this.Content.GetContent(typeof(PartnerEventSponsorshipPaymentFormOptions));

					if (_myContent == null)
					{
						_myContent = new PartnerEventSponsorshipPaymentFormOptions();
					}
				}

				return _myContent;
			}
		}


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
				if (MyContent.DemoLongReferralMode)
				{
					Session[c_Referrer] += "1234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890";
				}
				lblReferrer.Text = "v7 - " + (Session[c_Referrer] == null ? String.Empty : Session[c_Referrer].ToString()) ;
				lblReferrer.Visible = MyContent.DemoMode;
				Session["CartData"] = null;


				if (ChildID == Guid.Empty)
				{
					lblError.Text = "There was a problem. Child was not specified.";
                    lblError.Font.Bold = true;
                    this.lblError.Visible = true;                    
                    btnSubmit.Enabled = false;
				}
				else
				{
					LoadChild();
					if (this.total == 0)
					{
						//    Response.Redirect("/");
					}

					this.showTotal();
				}

				//this.populateHearAbout();
				this.populateYears();

            }
        }


		private DataTable cartData
		{
			get
			{
				if (Session["CartData"] == null)
				{
					DataTable dt = new DataTable();
					dt.Columns.Add("Id", typeof(Guid));
					dt.Columns.Add("Gender", typeof(string));
					dt.Columns.Add("Number", typeof(string));
					dt.Columns.Add("Name", typeof(string));
					dt.Columns.Add("Months", typeof(int));
					dt.Columns.Add("Amount", typeof(decimal));
					dt.Columns.Add("CountryName", typeof(string));
					dt.Columns.Add("BirthDate", typeof(string));
					Session["CartData"] = dt;
				}

				return (DataTable)Session["CartData"];
			}
			set
			{
				Session["CartData"] = value;
			}
		}

		private void LoadChild()
		{
			try
			{
			
				if (LockChild (ChildID))
				{
					this.AddSponsorship();

				}
			}

			catch (Exception ex)
			{
				this.lblError.Text = ex.Message + "<br /><br />" + ex.StackTrace;
				this.lblError.Visible = true;
			}
		}


		private Boolean LockChild (Guid childID)
		{
			Boolean childLocked = false;

			try
				{
					string addDataForm = "b46fe5b4-0fbf-4dfc-8f9b-e6b19f281720";

					DataFormLoadRequest request = OCM.BBISWebParts.WebsiteChildLockAddDataForm.CreateLoadRequest(this.API.AppFxWebServiceProvider);
					request.FormID = new Guid(addDataForm);
					OCM.BBISWebParts.WebsiteChildLockAddDataFormData data = OCM.BBISWebParts.WebsiteChildLockAddDataForm.LoadData(this.API.AppFxWebServiceProvider, request);

					data.ContextRecordID = ChildID.ToString();
					data.SESSIONID = Session.SessionID.ToString();

					// if this is successful, then the child was locked.  
					data.Save(this.API.AppFxWebServiceProvider);

					// *****  this.LoadChildInfo(id);  *****


					if (ChildID != Guid.Empty) childLocked = true;

				}
				
			catch (Exception ex)
				{
					// Determine if Child could not be locked
					if (ex.Message.ToString().Contains(LockError))
					{
						if (ex.Message.ToString().Contains(LockUnsuccessful))
						{
							string childLockedPageURL = Utility.GetBBISPageUrl(MyContent.ChildLockedPageID) + "{0}id=" + ChildID;
							childLockedPageURL = childLockedPageURL.IndexOf("?") > -1 ? String.Format(childLockedPageURL, "&") : String.Format(childLockedPageURL, "?");
							Response.Redirect(childLockedPageURL, false);
						}
						else if (ex.Message.ToString().Contains(ChildNotEligible))
						{
							string childIneligiblePageURL = Utility.GetBBISPageUrl(MyContent.ChildIneligiblePageID) + "{0}id=" + ChildID;
							childIneligiblePageURL = childIneligiblePageURL.IndexOf("?") > -1 ? String.Format(childIneligiblePageURL, "&") : String.Format(childIneligiblePageURL, "?");
							Response.Redirect(childIneligiblePageURL, false);
						}
						else if (ex.Message.ToString().Contains(ChildNotReserved))
						{
							string childUnavailablePageURL = Utility.GetBBISPageUrl(MyContent.ChildUnavailablePageID) + "{0}id=" + ChildID;
							childUnavailablePageURL = childUnavailablePageURL.IndexOf("?") > -1 ? String.Format(childUnavailablePageURL, "&") : String.Format(childUnavailablePageURL, "?");
							Response.Redirect(childUnavailablePageURL, false);
						}

					}
					else
					{
						this.lblError.Text = ex.Message + "<br /><br />" + ex.StackTrace;
						this.lblError.Visible = true;
					}
				}

			return childLocked;
		}

		private void AddSponsorship()
		{
			if (ChildID != Guid.Empty)
			{
				// grab off session once
				DataTable dt = this.cartData;
				//string id = Convert.ToString(Request.QueryString["id"]);

				// if the id is already in the cart, don't re-add it.
				DataRow[] check = dt.Select("id = '" + ChildID.ToString() + "'");
				if (check.Length == 0)
				{
					DataFormLoadRequest opportunityRequest = OCM.BBISWebParts.WebsiteChildInfoViewForm.CreateRequest(this.API.AppFxWebServiceProvider);
					opportunityRequest.FormID = new Guid("9860f33f-efeb-478b-a312-f7e1c3bd4244");
					opportunityRequest.RecordID = ChildID.ToString();
					opportunityRequest.ContextRecordID = ChildID.ToString();
					OCM.BBISWebParts.WebsiteChildInfoViewFormData opportunity = OCM.BBISWebParts.WebsiteChildInfoViewForm.LoadData(this.API.AppFxWebServiceProvider, opportunityRequest);

					DataRow dr = dt.NewRow();
					dr["ID"] = ChildID;
					dr["Number"] = opportunity.CHILDLOOKUPID;
					dr["Name"] = opportunity.CHILDNAME;
					dr["Months"] = 1;
					dr["Amount"] = Classes.Utility.GetSponsorshipAmount();
					dr["Gender"] = opportunity.GENDER;
					dr["CountryName"] = opportunity.COUNTRYNAME;
					dr["Birthdate"] = opportunity.BIRTHDATE;
					dt.Rows.Add(dr);

					// add data back to session
					this.cartData = dt;
				}
			}
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
						// Change to this if edit cart is removed 
						// results += Convert.ToDecimal(dr["Amount"]);
					}
                }
                return results;
            }
        }

        private void showTotal()
        {
            this.lblTotal.Text = "Sponsorship amount is " + this.total.ToString("c") + " per month."; 
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
            data.PHONE_NUMBER = this.txtMobilePhone.Text;
            data.EMAILADDRESS_EMAILADDRESS = this.txtEmail.Text;            

            data.Save(this.API.AppFxWebServiceProvider);

            return new Guid(data.RecordID);
        }

		// Not used
		//public void addGift(Guid constituentId)
		//{
		//    DataFormLoadRequest request = RecurringGiftAddForm.CreateLoadRequest(this.API.AppFxWebServiceProvider);
		//    request.FormID = new Guid("47a3c222-5e99-44a2-a5ce-5989d18f5a13");
		//    RecurringGiftAddFormData data = RecurringGiftAddForm.LoadData(this.API.AppFxWebServiceProvider, request);

		//    data.AMOUNT = this.total;
		//    data.CONSTITUENTID = constituentId;
		//    data.CARDHOLDERNAME = this.txtCcName.Text;
		//    data.CREDITCARDNUMBER = this.txtCcNumber.Text;
		//    data.CREDITTYPECODEID = Utility.GetCrmCC(this.cmbCcType.SelectedValue);
		//    data.EXPIRESON = new Blackbaud.AppFx.FuzzyDate(Convert.ToInt32(this.cmbCcExpYear.SelectedValue), Convert.ToInt32(this.cmbCcExpMonth.SelectedValue));
		//    data.DATE = DateTime.Now;
		//    data.STARTDATE = DateTime.Now;
		//    data.SPLITS = new RecurringGiftAddFormData.SPLITS_DATAITEM[1];
		//    data.SPLITS[0] = new RecurringGiftAddFormData.SPLITS_DATAITEM();
		//    data.SPLITS[0].AMOUNT = this.total;
		//    data.SPLITS[0].DESIGNATIONID = new Guid("1B2EB1A9-2FC3-4AD1-A28C-2920799C3FDF");

		//    data.Save(this.API.AppFxWebServiceProvider);
		//}

        private bool processPayment()
        {
			// CSM - This method should only be called when making a one time gift.
			//		 This needs to be changed to use the same processing as the sponsorship payment part instead of going into the web donation batch, since it can't link it to the specific recurring gift

			// SponsorshipPaymentFormOptionsOCM2 options = (SponsorshipPaymentFormOptionsOCM2)this.Content.GetContent(typeof(SponsorshipPaymentFormOptionsOCM2));
            
            BBPSPaymentInfo payment = new BBPSPaymentInfo();
			
			//payment.DemoMode = MyContent.DemoMode;
			//payment.MerchantAcctID = 14;
			//payment.Bbpid = Utility.GetBbbid(14, this.API.Transactions.MerchantAccounts);
			//payment.SkipCardValidation = false;

			payment.DemoMode = MyContent.DemoMode;
			payment.MerchantAcctID = MyContent.MerchantAccountID;
			payment.Bbpid = Utility.GetBbbid(MyContent.MerchantAccountID, this.API.Transactions.MerchantAccounts);
			payment.SkipCardValidation = MyContent.DemoMode;

            foreach (DataRow dr in this.cartData.Rows)
            {
                int designationId = Utility.GetBbncDesignationIdFromSponsorshipOpportunity(dr["Id"].ToString());
                decimal amount = Convert.ToInt32(dr["Months"]) * Convert.ToDecimal(dr["Amount"]);

                payment.AddDesignationInfo(amount, "BBIS Child Sponsorship Transaction", designationId);
            }
            
            payment.AppealID = 1;
            payment.Comments = "";            

			//if (this.radPayment.SelectedValue == "Check") 
			//{
			//    // CSM - Since this method is only called when a person makes a one time credit card payment, it should never get here.
			//    payment.PaymentMethod = BBNCExtensions.API.Transactions.PaymentArgs.ePaymentMethod.Check;
			//} 
			//else 
			//{
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
                    payment.DonorZIP = this.txtZip.Text;
                }
                else
                {                    
                    payment.DonorStreetAddress = this.txtBillingAddress.Text;
                    payment.DonorCity = this.txtBillingCity.Text;
                    payment.DonorZIP = this.txtBillingZip.Text;
                }
                
            //}
            
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

		//private void populateHearAbout()
		//{
		//    DataListLoadRequest request = Blackbaud.CustomFx.ChildSponsorship.CrmObjects.DataLists.NOTUSED.WebsiteSponsorshipCheckoutSourceDataList.CreateRequest(this.API.AppFxWebServiceProvider);
		//    request.DataListID = new Guid("37fe2ce9-1889-49b9-86fe-75cbd3af0af1");
		//    request.ContextRecordID = this.API.Users.CurrentUser.BackOfficeGuid.ToString();
		//    Blackbaud.CustomFx.ChildSponsorship.CrmObjects.DataLists.NOTUSED.WebsiteSponsorshipCheckoutSourceDataListRow[] rows = Blackbaud.CustomFx.ChildSponsorship.CrmObjects.DataLists.NOTUSED.WebsiteSponsorshipCheckoutSourceDataList.GetRows(this.API.AppFxWebServiceProvider, request);

		//    this.cmbHearAbout.Items.Clear();
		//    this.cmbHearAbout.Items.Add(new ListItem("-- Select --",""));
		//    foreach (Blackbaud.CustomFx.ChildSponsorship.CrmObjects.DataLists.NOTUSED.WebsiteSponsorshipCheckoutSourceDataListRow row in rows)
		//    {
		//        ListItem item = new ListItem(row.SOURCEDESC, row.SOURCEDESC);
		//        item.Attributes.Add("data", row.ADDITIONALINFORMATIONCAPTION);
		//        this.cmbHearAbout.Items.Add(new ListItem(row.SOURCEDESC, row.SOURCEDESC));
		//    }
            
		//}

      
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
			//if (this.radIsSponsor.SelectedValue == "Yes")
			//{
			//    this.trSponsorId.Visible = true;
			//    this.trHearAboutSelection.Visible = false;
			//    this.trHearAbout.Visible = false;
			//}
			//else
			//{
			//    this.trSponsorId.Visible = false;
			//    this.trHearAboutSelection.Visible = true;
			//    this.showHideHearAbout();
			//}
        }

		//private void showHideHearAbout()
		//{
		//    DataListLoadRequest request = Blackbaud.CustomFx.ChildSponsorship.CrmObjects.DataLists.NOTUSED.WebsiteSponsorshipCheckoutSourceDataList.CreateRequest(this.API.AppFxWebServiceProvider);
		//    request.DataListID = new Guid("37fe2ce9-1889-49b9-86fe-75cbd3af0af1");
		//    request.ContextRecordID = this.API.Users.CurrentUser.BackOfficeGuid.ToString();
		//    Blackbaud.CustomFx.ChildSponsorship.CrmObjects.DataLists.NOTUSED.WebsiteSponsorshipCheckoutSourceDataListRow[] rows = Blackbaud.CustomFx.ChildSponsorship.CrmObjects.DataLists.NOTUSED.WebsiteSponsorshipCheckoutSourceDataList.GetRows(this.API.AppFxWebServiceProvider, request);

		//    foreach (Blackbaud.CustomFx.ChildSponsorship.CrmObjects.DataLists.NOTUSED.WebsiteSponsorshipCheckoutSourceDataListRow row in rows)
		//    {
		//        if (row.SOURCEDESC == this.cmbHearAbout.SelectedValue)
		//        {
		//            this.lblHearAbout.Text = row.ADDITIONALINFORMATIONCAPTION;
		//            this.trHearAbout.Visible = row.HASADDITIONALINFORMATION; // !String.IsNullOrWhiteSpace(row.ADDITIONALINFORMATIONCAPTION);
		//            break;
		//        }
		//    }
		//}

		//protected void cmbHearAbout_SelectedIndexChanged(object sender, EventArgs e)
		//{
		//    this.showHideHearAbout();
		//}

		//protected void radPayment_SelectedIndexChanged(object sender, EventArgs e)
		//{
		//    if (radPayment.SelectedValue == "Check")
		//    {
		//        this.pnlCheck.Visible = true;
		//        this.pnlCC.Visible = false;
		//    }
		//    else
		//    {
		//        this.pnlCheck.Visible = false;
		//        this.pnlCC.Visible = true;
		//    }
		//}

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
				{
					if (LockChild (ChildID))
					{
					
						if (validCard())
						{

							if (MyContent.ReferralText != string.Empty)
							{
								if (Session[c_Referrer] == null)
								{
									Session[c_Referrer] = MyContent.ReferralText;
								}
								else
								{
									Session[c_Referrer] = MyContent.ReferralText + "; " + Session[c_Referrer];
								}
							}
							if (this.radIsSponsor.SelectedValue == "Yes")
							{ 
								if (Session[c_Referrer] == null)
								{
									Session[c_Referrer] = "Is Sponsor";
								}
								else
								{
									Session[c_Referrer] = "Is Sponsor; " + Session[c_Referrer];
								}
							}
														
							if (!MyContent.DemoMode)
							{



								Guid searchId = this.findConstituent();
								Guid constituentId = searchId == Guid.Empty ? this.createConsitutent() : searchId;  //new Guid("AB7BD96E-F277-4C5F-B9FE-2D5E9DB1F9E7"); //
								//this.addGift(constituentId);
								// ***** ADD THIS BACK AFTER TESTING EMAIL *****
								this.createSponsorship(constituentId);

								//if (this.radPayment.SelectedValue == "Check")
								//{
								//	  SendConfirmationEmail(GetMergeData()); 
								//    Session["CartData"] = null;
								//    Response.Redirect(MyContent.ThankYouPage);
								//}
								//else
								//{
							}
							SendConfirmationEmail(GetMergeData()); 
							Session["CartData"] = null;
							string thankYouPageURL = Utility.GetBBISPageUrl(MyContent.ThankYouPageID);
							Response.Redirect(thankYouPageURL, false);

						
							//}
						}
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
            //if (this.radPayment.SelectedValue == "Check") return true;

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
			data.EXACTMATCHONLY = true;

			// CSM - Modified to only use the lookup id if it is non-blank
			//if ((this.radIsSponsor.SelectedValue == "Yes") && (this.txtSponsorId.Text.Trim() != ""))
			//{
			//    data.LOOKUPID = this.txtSponsorId.Text;
			//    data.KEYNAME = this.txtLastName.Text;
			//    data.CITY = this.txtCity.Text;
			//    data.POSTCODE = this.txtZip.Text;
			//}
			//else
			//{
                data.FIRSTNAME = this.txtFirstName.Text;
                data.KEYNAME = this.txtLastName.Text;
                data.CITY = this.txtCity.Text;
                data.POSTCODE = this.txtZip.Text;
                data.ADDRESSBLOCK = this.txtAddress.Text;
            //}
            

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
				data.PAYMENTMETHODCODE_IDVALUE = Blackbaud.AppFx.Sponsorship.Catalog.WebApiClient.AddForms.Sponsorship.SponsorshipAddFormEnums.PAYMENTMETHODCODE.Credit_Card;
                data.CARDHOLDERNAME = this.txtCcName.Text;
                data.CREDITCARDNUMBER = this.txtCcNumber.Text;
                data.CREDITTYPECODEID = Utility.GetCrmCC(this.cmbCcType.SelectedValue);
				data.FREQUENCYCODE_IDVALUE = Blackbaud.AppFx.Sponsorship.Catalog.WebApiClient.AddForms.Sponsorship.SponsorshipAddFormEnums.FREQUENCYCODE.Monthly;
                data.EXPIRESON = new Blackbaud.AppFx.FuzzyDate(Convert.ToInt32(this.cmbCcExpYear.SelectedValue), Convert.ToInt32(this.cmbCcExpMonth.SelectedValue));
                data.AUTOPAY = true;
                
                data.AMOUNT = Convert.ToDecimal(dr["Amount"]);
                
                data.SPONSORSHIPPROGRAMID = new Guid("32FA809A-5EF1-4A17-862C-7DFE0AB49F19");                
                data.STARTDATE = DateTime.Now;
                data.REVENUESCHEDULESTARTDATE = DateTime.Now;
                data.GENDERCODE_IDVALUE = this.getGender(dr["Gender"].ToString());                
                data.ISHIVPOSITIVECODE_IDVALUE = Blackbaud.AppFx.Sponsorship.Catalog.WebApiClient.AddForms.Sponsorship.SponsorshipAddFormEnums.ISHIVPOSITIVECODE.No;                
                data.HASCONDITIONCODE_IDVALUE = Blackbaud.AppFx.Sponsorship.Catalog.WebApiClient.AddForms.Sponsorship.SponsorshipAddFormEnums.HASCONDITIONCODE.No;
                data.ISORPHANEDCODE_IDVALUE = Blackbaud.AppFx.Sponsorship.Catalog.WebApiClient.AddForms.Sponsorship.SponsorshipAddFormEnums.ISORPHANEDCODE.No;                
                data.GIFTRECIPIENT = false;
				if (MyContent.AppealID != string.Empty) data.APPEALID = new Guid(MyContent.AppealID); 				
				data.REFERENCE = ((Session[c_Referrer] == null ? String.Empty : Session[c_Referrer].ToString()) + "; "); // + cmbHearAbout.SelectedValue.ToString() + "-" + txtHearAboutResponse.Text);
				if (data.REFERENCE.Length > c_ReferenceMaxLength)
				{
					data.REFERENCE = data.REFERENCE.Substring(0, c_ReferenceMaxLength);
				}
                data.Save(this.API.AppFxWebServiceProvider);
            }

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
            myData.DonorCountry = "US";
            //myData.DonorCurrentSponsor = radIsSponsor.SelectedValue;
            myData.DonorDayPhone = txtMobilePhone.Text;
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
    }
}
