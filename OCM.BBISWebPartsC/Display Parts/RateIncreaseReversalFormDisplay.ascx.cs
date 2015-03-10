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
using Blackbaud.AppFx.Constituent.Catalog.WebApiClient.AddForms.ConstituentNote;
using Blackbaud.AppFx.Constituent.Catalog.WebApiClient.SearchLists.Constituent;
using Blackbaud.AppFx.Fundraising.Catalog.WebApiClient.AddForms.Revenue;
using Blackbaud.AppFx.Sponsorship.Catalog.WebApiClient.AddForms.Sponsorship;
using OCM.BBISWebParts.Classes;
using Blackbaud.Web.Content.Core;
using System.Text.RegularExpressions;

namespace OCM.BBISWebParts
{
	public partial class RateIncreaseReversalFormDisplay : BBNCExtensions.Parts.CustomPartDisplayBase
    {
		private decimal MinimumPaymentAmount = 5;
		private Int16 SponsorIDPositioninQueryStringParameter = 5;
		private Int16 SponsorIDLength = 6;

		private decimal _paymentAmount;

		private RateIncreaseReversalFormOptions _options;

		private RateIncreaseReversalFormOptions Options
		{
			get
			{
				if (_options == null)
				{
					_options = (RateIncreaseReversalFormOptions)this.Content.GetContent(typeof(RateIncreaseReversalFormOptions));

					if (_options == null)
					{
						_options = new RateIncreaseReversalFormOptions();
					}
				}

				return _options;
			}
		}

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            { 
                try
                {
					updateAll.Visible = true;
					updateCCInfo.Visible = false;
					updateBillingInfo.Visible = false;

					this.lblReversalRequest.Text = Options.ReversalCheckboxText;
					this.cblReversal.Items[0].Selected = false;  

					this.lblPaymentRequest.Text = Options.PaymentCheckboxText;
					this.cblPayment.Items[0].Selected = false;  

					this.populateYears();
					this.populateSponsorID();

					this.trInstructions1.Visible = !Options.EmailResponseMode;
					this.trInstructions2.Visible = Options.EmailResponseMode;
				}
				
                catch
                {
                    //ignore
                }
            }
		}

		/// <summary>
		/// This populates the years for the credit card expiration date
		/// </summary>
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
		
		/// <summary>
		/// Get the sponsor's constituent lookup id from the query string and set txtSponsorId to that value if found.
		/// The sponsor id is nested within the query string parameter "c"
		/// It starts with the 6th character (5 in a zero based index which is stored in SponsorIDPositioninQueryStringParameter) 
		/// and usually is padded with extra numbers 
		/// e.g. c=17614056859550 where the constituent lookup id = 056859
		/// Validation of the format of the characters found is left to the data validation perfomed on submit
		/// </summary>
		private void populateSponsorID()
		{
			if (Request.QueryString["c"] != null)
			{
				string sponsorID = Request.QueryString["c"].ToString();
				if (sponsorID.Length >= SponsorIDPositioninQueryStringParameter + SponsorIDLength)
				{
					this.txtSponsorId.Text =  sponsorID.Substring(SponsorIDPositioninQueryStringParameter,SponsorIDLength);
				}
			}
		}

		/// <summary>
		/// When the country changes, determine if the state or region should be enabled and required based on the country 
        /// </summary>
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

		/// <summary>
		/// Hide or show the Payment form based on the "payment" checkbox
		/// </summary>
		protected void cblPayment_SelectedIndexChanged(object sender, EventArgs e)
		{
			if (this.cblPayment.Items[0].Selected)
			{
				this.updateCCInfo.Visible = true;
				this.updateBillingInfo.Visible = true;
			}
			else
			{
				this.txtCcNumber.Text = "";
				this.updateCCInfo.Visible = false;
				this.updateBillingInfo.Visible = false;
			}

		}

		/// <summary>
		/// Determine if the Form data is valid to proceed with processing
		/// </summary>
		/// <returns></returns>
		private bool ValidForm()
		{
			bool validForm = false;

			this.lblError.Text = "";


			if (!((cblPayment.Items[0].Selected) || (cblReversal.Items[0].Selected))) //  Make sure at least one of the check boxes is checked
			{
				this.lblError.Text = Options.ErrorNoCheckboxesCheckedText;
				validForm = false;
			}
			else
				validForm = (ValidCard() && ValidSponsorID() && ValidPaymentAmount());


			this.lblError.Visible = !validForm;
			return validForm;
		}
	
		
		/// <summary>
		/// Basic validation of credit card information entered in form
		/// </summary>
		/// <returns>true if card is valid or "payment" checkbox is not checked</returns>
		private bool ValidCard()
		{
			if (!this.cblPayment.Items[0].Selected)
				return true; // only validate if they selected to make a payment

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

		/// <summary>
		/// Validation of Sponsor ID entered in form
		/// </summary>
		/// <returns>true if Sponsor ID is valid</returns>
		private bool ValidSponsorID()
		{
			if (txtSponsorId.Text == null || txtSponsorId.Text == "")
				return false; // The error message should be generated as a required field, but I want this to return false, since it isn't valid

			if (Regex.IsMatch(txtSponsorId.Text.Trim(), @"^\d+$") && txtSponsorId.Text.Trim().Length == 6)
				return true;
			else
			{
				this.lblError.Visible = true;
				this.lblError.Text = "Sponsor ID should be 6 numbers.";
				return false;
			}

		}

		/// <summary>
		/// Validation of Payment Amount entered in form
		/// Also sets _paymentAmount with the amount cast as a decimal, which is used during the payment processing
		/// </summary>
		/// <returns>true if (Payment Amount is a number and greater than minimum amount) or "payment" checkbox is not checked</returns>
		private bool ValidPaymentAmount()
		{
			if (!this.cblPayment.Items[0].Selected)
				return true; // only validate if they selected to make a payment

			if (txtPaymentAmount.Text == null || txtPaymentAmount.Text == "")
				return false;  // The error message should be generated as a required field, but I want this to return false, since it isn't valid

			if (!decimal.TryParse(txtPaymentAmount.Text, out _paymentAmount))
			{
				this.lblError.Visible = true;
				this.lblError.Text = "Payment Amount must be a number.";
				return false;
			}
			else
				if (_paymentAmount < MinimumPaymentAmount)
				{
					this.lblError.Visible = true;
					this.lblError.Text = "Payment Amount must be at least $" + MinimumPaymentAmount.ToString();
					return false;
				}
				else
					return true;
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

		/// <summary>
		/// Find the Constituent ID for the lookup id entered in txtSponsorId
		/// The Last Name entered in txtReversalResponseLastName must also match
		/// </summary>
		/// <returns>ConstituentID</returns>
		private Guid findConstituent()
		{
			SearchListLoadRequest request = ConstituentSearch.CreateRequest(this.API.AppFxWebServiceProvider);
			request.SearchListID = new Guid("23c5c603-d7d8-4106-aecc-65392b563887");

			ConstituentSearchFilterData data = new ConstituentSearchFilterData();
			data.CONSTITUENTTYPE = 1;
			data.EXACTMATCHONLY = true;

			data.LOOKUPID = this.txtSponsorId.Text.Trim();
			data.KEYNAME = this.txtReversalResponseLastName.Text.Trim();

			string[] ids = ConstituentSearch.GetIDs(this.API.AppFxWebServiceProvider, data);
			if (ids.Length > 0)
				return new Guid(ids[0]);

			return Guid.Empty;
		}

		/// <summary>
		/// Create a constituent based on the information provided
		/// If no payment was entered, only the last name is used.  The Sponsor ID entered is placed in the First Name.
		/// If a payment was entered, all payment contact information is used.
		/// </summary>
		/// <returns>ConstituentID of constituent created</returns>
		private Guid CreateConsitutent()
		{
			string addDataForm = "1f9671b3-6740-447c-ad15-ef2718c0e43a";

			DataFormLoadRequest request = IndividualSpouseBusinessAddForm.CreateLoadRequest(this.API.AppFxWebServiceProvider);
			request.FormID = new Guid(addDataForm);
			IndividualSpouseBusinessAddFormData data = IndividualSpouseBusinessAddForm.LoadData(this.API.AppFxWebServiceProvider, request);

			if (this.cblPayment.Items[0].Selected)
			{
				data.FIRSTNAME = this.txtFirstName.Text.Trim();
				data.MIDDLENAME = this.txtMiddle.Text;
				data.LASTNAME = this.txtLastName.Text.Trim();
				data.ADDRESS_ADDRESSBLOCK = this.txtAddress.Text + " " + this.txtAddress2.Text;
				data.ADDRESS_CITY = this.txtCity.Text;
				data.ADDRESS_STATEID = GetStateID(cmbState.Text);
				data.ADDRESS_POSTCODE = this.txtZip.Text;
				data.PHONE_NUMBER = this.txtDayPhone.Text;
				data.EMAILADDRESS_EMAILADDRESS = this.txtEmail.Text;			
			}
			else
			{
				data.LASTNAME = this.txtReversalResponseLastName.Text.Trim();
				data.FIRSTNAME = this.txtSponsorId.Text.Trim();
			}
			data.Save(this.API.AppFxWebServiceProvider);

			return new Guid(data.RecordID);
		}

		/*public void addGift(Guid constituentId)
		  {
			  DataFormLoadRequest request = RecurringGiftAddForm.CreateLoadRequest(this.API.AppFxWebServiceProvider);
			  request.FormID = new Guid("47a3c222-5e99-44a2-a5ce-5989d18f5a13");
			  RecurringGiftAddFormData data = RecurringGiftAddForm.LoadData(this.API.AppFxWebServiceProvider, request);

			  data.AMOUNT =  Convert.ToDecimal(this.txtPaymentAmount.Text);
			  data.CONSTITUENTID = constituentId;
			  data.CARDHOLDERNAME = this.txtCcName.Text;
			  data.CREDITCARDNUMBER = this.txtCcNumber.Text;
			  data.CREDITTYPECODEID = Utility.GetCrmCC(this.cmbCcType.SelectedValue);
			  data.EXPIRESON = new Blackbaud.AppFx.FuzzyDate(Convert.ToInt32(this.cmbCcExpYear.SelectedValue), Convert.ToInt32(this.cmbCcExpMonth.SelectedValue));
			  data.DATE = DateTime.Now;
			  data.STARTDATE = DateTime.Now;
			  data.SPLITS = new RecurringGiftAddFormData.SPLITS_DATAITEM[1];
			  data.SPLITS[0] = new RecurringGiftAddFormData.SPLITS_DATAITEM();
			  data.SPLITS[0].AMOUNT = Convert.ToDecimal(this.txtPaymentAmount.Text);
			  data.SPLITS[0].DESIGNATIONID = new Guid("1B2EB1A9-2FC3-4AD1-A28C-2920799C3FDF");

			  data.Save(this.API.AppFxWebServiceProvider);
		  }
		  */

		/// <summary>
		/// This is where the credit card is charged
		/// </summary>
		/// <returns>Authorization Code or "Success-NoAuthCode" if transaction was successful, but no authorization code was returned</returns>
		private string ProcessPayment()
		{
			if (_paymentAmount <= 0)
				throw new Exception("Payment Amount cannot be zero or negative");

			BBPSPaymentInfo payment = new BBPSPaymentInfo();

			//chriswh 6/20/2013
			//bug fix to stop the creation of the donation batch
			//since it is already being written directly to the system
			payment.SkipCreateGiftTransaction = true;

			payment.DemoMode = Options.DemoMode;
			payment.MerchantAcctID = Options.MerchantAccountID;
			payment.Bbpid = Utility.GetBbbid(Options.MerchantAccountID, this.API.Transactions.MerchantAccounts);
			payment.SkipCardValidation = Options.DemoMode;

			payment.AddDesignationInfo(_paymentAmount, "BBIS Reversal Child Sponsorship Payment Transaction", Options.DesignationBBNCID);
			
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

		/// <summary>
		/// This creates a donation to the designation provided in Config (e.g. SF)
		/// It doesn't actually apply it to a sponsorship recurring gift.
		/// </summary>
		/// <param name="constituentId">ID of Constituent to create payment for</param>
		/// <param name="authCode">Authorization Code from the credit card transaction</param>
		private void CreateSponsorshipPayment(Guid constituentId, string authCode)
		{
			DataFormLoadRequest request = PaymentAddForm.CreateLoadRequest(this.API.AppFxWebServiceProvider);
			request.FormID = new Guid("3e5b7b99-fb01-49d4-9020-c953006b7d0f");

			PaymentAddFormData data = PaymentAddForm.LoadData(this.API.AppFxWebServiceProvider, request);

			data.CONSTITUENTID = constituentId; // used to be - this.API.Users.CurrentUser.BackOfficeGuid;
			data.DATE = DateTime.Now;
			data.AMOUNT = _paymentAmount;
			data.PAYMENTMETHODCODE_IDVALUE = Blackbaud.AppFx.Fundraising.Catalog.WebApiClient.AddForms.Revenue.PaymentAddFormEnums.PAYMENTMETHODCODE.Credit_Card;
			data.POSTSTATUSCODE_IDVALUE = Blackbaud.AppFx.Fundraising.Catalog.WebApiClient.AddForms.Revenue.PaymentAddFormEnums.POSTSTATUSCODE.Not_Posted;
			data.POSTDATE = DateTime.Now;
			data.APPLICATIONCODE_IDVALUE = Blackbaud.AppFx.Fundraising.Catalog.WebApiClient.AddForms.Revenue.PaymentAddFormEnums.APPLICATIONCODE.Donation;
			data.REVENUESTREAMS = new PaymentAddFormData.REVENUESTREAMS_DATAITEM[1];
			data.REVENUESTREAMS[0] = new PaymentAddFormData.REVENUESTREAMS_DATAITEM();
			data.REVENUESTREAMS[0].APPLICATIONCODE_IDVALUE = Blackbaud.AppFx.Fundraising.Catalog.WebApiClient.AddForms.Revenue.PaymentAddFormEnums.REVENUESTREAMS_APPLICATIONCODE.Donation;
			data.REVENUESTREAMS[0].APPLIED = _paymentAmount;
			data.REVENUESTREAMS[0].GIFTFIELDS = new PaymentAddFormData.REVENUESTREAMS_DATAITEM.GIFTFIELDS_DATAITEM[1];
			data.REVENUESTREAMS[0].GIFTFIELDS[0] = new PaymentAddFormData.REVENUESTREAMS_DATAITEM.GIFTFIELDS_DATAITEM();
			data.REVENUESTREAMS[0].GIFTFIELDS[0].DESIGNATIONID = Options.DesignationID;  // ("7df20365-f328-4b7a-ad0b-83cc2f355e9d") SF
			data.REFERENCE = "D2 Rate Increase Reversal Form";
			data.SOURCECODE = "BBIS";
			data.CHANNELCODEID = new Guid("a087c9e2-32a1-42e3-96b7-28cc92e9b76b"); //website

			data.CREDITCARDNUMBER = this.txtCcNumber.Text;
			data.CARDHOLDERNAME = this.txtCcName.Text;
			data.EXPIRESON = new Blackbaud.AppFx.FuzzyDate(Convert.ToInt32(this.cmbCcExpYear.SelectedValue), Convert.ToInt32(this.cmbCcExpMonth.SelectedValue));
			data.CREDITTYPECODEID = Utility.GetCrmCC(this.cmbCcType.SelectedValue);
			data.RECEIPTAMOUNT = _paymentAmount;
			data.AUTHORIZATIONCODE = authCode;

			data.Save(this.API.AppFxWebServiceProvider);

		}

		private void CreateReversalNote(Guid constituentID, bool reversalChecked, bool paymentChecked)
		{

			DataFormLoadRequest request = ConstituentNoteAddForm.CreateLoadRequest(this.API.AppFxWebServiceProvider);
			request.ContextRecordID = constituentID.ToString();
			ConstituentNoteAddFormData dataNote = ConstituentNoteAddForm.LoadData(this.API.AppFxWebServiceProvider, request);
			
			dataNote.DATEENTERED = DateTime.Now;
			dataNote.NOTETYPECODEID = new Guid(Options.ReversalNoteTypeID.ToString());  //Rate Increase 2014 - Reversal

			string textNote;

			if (reversalChecked)
			{
				dataNote.TITLE = Options.ConstituentNoteTitle;
				textNote = Options.ConstituentNoteText;
//				dataNote.TITLE = "Reversal requested through website";
//				dataNote.TEXTNOTE = "Rate Increase Reversal requested through website on " + DateTime.Now.ToString() + " ET. This was in response to the special Rate Increase D2 email.";
			}
			else
			{
				dataNote.TITLE = Options.ConstituentNoteTitleNoReversal;
				textNote = Options.ConstituentNoteTextNoReversal;
//				dataNote.TITLE = "Reversal form filled out but reversal unchecked";
//				dataNote.TEXTNOTE = "Rate Increase Reversal Form completed on website on " + DateTime.Now.ToString() + " ET, but the Reversal checkbox was not checked. This was in response to the special Rate Increase D2 email.";
			}

			dataNote.TEXTNOTE = textNote.Replace("<Date>", DateTime.Now.ToString() + " ET");


			if (paymentChecked)
			{
				dataNote.TEXTNOTE += Options.ConstituentNoteTextPayment;
//				dataNote.TEXTNOTE += "  Payment was made online as well.";
			}

			dataNote.Save(this.API.AppFxWebServiceProvider);
		}

		protected void btnSubmit_Click(object sender, EventArgs e)
		{
			try
			{
				if (ValidForm())
				{
					Guid searchID = this.findConstituent();
                    Guid constituentID = searchID == Guid.Empty ? this.CreateConsitutent() : searchID;  //new Guid("AB7BD96E-F277-4C5F-B9FE-2D5E9DB1F9E7"); //


					CreateReversalNote(constituentID, this.cblReversal.Items[0].Selected, this.cblPayment.Items[0].Selected);

					if (this.cblPayment.Items[0].Selected) // Entered Payment
					{
						string authCode = this.ProcessPayment();
						if (authCode != "")
						{
							this.CreateSponsorshipPayment(constituentID, authCode);
							if (this.cblReversal.Items[0].Selected)
								Utility.RedirectToBBISPage(Options.ThankYouReversalWithPaymentPageID);
							else
								Utility.RedirectToBBISPage(Options.ThankYouPaymentNoReversalPageID);
						}
					}
					else
						Utility.RedirectToBBISPage(Options.ThankYouReversalPageID);					
				}
			}
			catch (Exception ex)
			{
				this.lblError.Visible = true;

				if (Options.DemoMode)
					this.lblError.Text = ex.Message + "<br /><br />" + ex.StackTrace;
				else
					this.lblError.Text = ex.Message;
			}
		}

    }
}
