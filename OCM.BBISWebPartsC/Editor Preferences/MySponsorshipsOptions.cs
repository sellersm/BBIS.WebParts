using System;

namespace OCM.BBISWebParts
{
    public class MySponsorshipsOptions2
    {
        #region Fields
        private string _thumbnailNoteType;
        private int _moreInfoPageID;
        private bool _demoMode;
        private string _thankYouMessage;
        private int _emailPageID;
        private int _paymentCartPageID;
        private int _merchantAccountID;
        private int _videoPageID;

        #endregion

        #region Properties
        public bool DemoMode
        {
            get { return _demoMode; }
            set { _demoMode = value; }
        }

        public int MoreInfoPageID
        {
            get { return _moreInfoPageID; }
            set { _moreInfoPageID = value; }
        }

        public string ThumbnailNoteType
        {
            get { return _thumbnailNoteType; }
            set { _thumbnailNoteType = value; }
        }

        public string ThankYouMessage
        {
            get { return _thankYouMessage; }
            set { _thankYouMessage = value; }
        }

        public int EmailPageID
        {
            get { return _emailPageID; }
            set { _emailPageID = value; }
        }

        public int PaymentCartPageID
        {
            get { return _paymentCartPageID; }
            set { _paymentCartPageID = value; }
        }

        public int MerchantAccountID
        {
            get { return this._merchantAccountID; }
            set { this._merchantAccountID = value; }
        }

        public int VideoPageID
        {
            get { return this._videoPageID; }
            set { this._videoPageID = value; }
        }
        #endregion
    }
}