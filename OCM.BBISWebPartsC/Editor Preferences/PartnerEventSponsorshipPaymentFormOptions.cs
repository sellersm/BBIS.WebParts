using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace OCM.BBISWebParts
{
    public class PartnerEventSponsorshipPaymentFormOptions
    {
        private bool _demoMode;
        public bool DemoMode
        {
            get { return _demoMode; }
            set { _demoMode = value; }
        }

		private bool _demoReferralLongMode;
		public bool DemoLongReferralMode
		{
			get { return _demoReferralLongMode; }
			set { _demoReferralLongMode = value; }
		}

		private string _appealID;
		public string AppealID
		{
			get { return _appealID; }
			set { _appealID = value; }
		}

		private string _referralText;
		public string ReferralText
		{
			get { return _referralText; }
			set { _referralText = value; }
		}

		private int _thankYouPageID;
		public int ThankYouPageID
		{
			get { return _thankYouPageID; }
			set { _thankYouPageID = value; }
		}

		private int _childLockedPageID;
		public int ChildLockedPageID
		{
			get { return _childLockedPageID; }
			set { _childLockedPageID = value; }
		}

		private int _childUnavailablePageID;
		public int ChildUnavailablePageID
		{
			get { return _childUnavailablePageID; }
			set { _childUnavailablePageID = value; }
		}

		private int _childIneligiblePageID;
		public int ChildIneligiblePageID
		{
			get { return _childIneligiblePageID; }
			set { _childIneligiblePageID = value; }
		}

		private int _merchantAccountID;
		public int MerchantAccountID
		{
			get { return this._merchantAccountID; }
			set { this._merchantAccountID = value; }
		}

        private string _thankYouEmail;
        private string ThankYouEmail
        {
            get { return this._thankYouEmail; }
            set { this._thankYouEmail = value; }
        }

        private string _thankYouEmailSubject;
        public string ThankYouEmailSubject
        {
			get { return _thankYouEmailSubject; }
			set { _thankYouEmailSubject = value; }
        }
		
		private ConfirmationEmailOptions _emailOptions;
		public ConfirmationEmailOptions EmailOptions
		{
			get { return _emailOptions; }
			set { _emailOptions = value; }
		}

	}
}