using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace OCM.BBISWebParts
{
    public class SponsorshipCartPartnerOptions
    {
        #region Fields
        private int _paymentFormPageID;
        #endregion

        #region Properties
        public int PaymentFormPageID
        {
            get { return _paymentFormPageID; }
            set { _paymentFormPageID = value; }
        }
        #endregion
    }
}