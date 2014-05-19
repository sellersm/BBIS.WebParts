using System;

namespace OCM.BBISWebParts
{

    public class SponsorshipPaymentPaymentFormOptions
    {
        #region Fields
        private int _thankYouPageID;
        private bool _demoMode;
        private int _merchantAccountID;
        private ConfirmationEmailOptions _emailOptions;
        #endregion

        #region Properties
        public int ThankYouPageID
        {
            get { return this._thankYouPageID; }
            set { this._thankYouPageID = value; }
        }

        public bool DemoMode
        {
            get { return this._demoMode; }
            set { this._demoMode = value; }
        }

        public int MerchantAccountID
        {
            get { return this._merchantAccountID; }
            set { this._merchantAccountID = value; }
        }

        public ConfirmationEmailOptions EmailOptions
        {
            get { return _emailOptions; }
            set { _emailOptions = value; }
        }
        
        #endregion
    }
}