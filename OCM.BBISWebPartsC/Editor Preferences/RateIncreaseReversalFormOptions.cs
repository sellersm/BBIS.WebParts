using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace OCM.BBISWebParts
{

	public class RateIncreaseReversalFormOptions
    {

        #region Properties

		public bool DemoMode { get; set; }

		public bool EmailResponseMode { get; set; }

		public int MerchantAccountID { get; set; }

		public Guid ReversalNoteTypeID { get; set; }

		public int DesignationBBNCID { get; set; }  // This is used for the payment in merchant services

		public Guid DesignationID { get; set; }  // This is used in the CRM payment

		public string ReversalCheckboxText { get; set; }

		public string PaymentCheckboxText { get; set; }

		public string ErrorNoCheckboxesCheckedText { get; set; }
		
		public int ThankYouReversalPageID { get; set; }

		public int ThankYouReversalWithPaymentPageID { get; set; }

		public int ThankYouPaymentNoReversalPageID { get; set; }

		public string ConstituentNoteTitle { get; set; }

		public string ConstituentNoteTitleNoReversal { get; set; }

		public string ConstituentNoteText { get; set; }

		public string ConstituentNoteTextNoReversal { get; set; }

		public string ConstituentNoteTextPayment { get; set; }

        #endregion
    }
}