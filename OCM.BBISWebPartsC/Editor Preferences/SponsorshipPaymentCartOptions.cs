using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace OCM.BBISWebParts
{
    public class SponsorshipPaymentCartOptions
    {
        #region Fields
        private int _paymentFormPageID;
		private int _mySponsorshipsPageID;
        #endregion

        #region Properties
		public int MySponsorshipsPageID
		{
			get { return _mySponsorshipsPageID; }
			set { _mySponsorshipsPageID = value; }
		}
		public int PaymentFormPageID
        {
            get { return _paymentFormPageID; }
            set { _paymentFormPageID = value; }
        }
        #endregion
    }
}