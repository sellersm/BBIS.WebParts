using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace OCM.BBISWebParts
{
    public class SponsorshipPaymentFormOptionsOCM
    {
        private string thankYouPage;
        public string ThankYouPage
        {
            get { return this.thankYouPage; }
            set { this.thankYouPage = value; }
        }

        private bool demoMode;
        public bool DemoMode
        {
            get { return this.demoMode; }
            set { this.demoMode = value; }
        }

        private string thankYouEmail;
        private string ThankYouEmail
        {
            get { return this.thankYouEmail; }
            set { this.thankYouEmail = value; }
        }

        private string thankYouEmailSubject;
        public string ThankYouEmailSubject
        {
            get { return this.thankYouEmailSubject; }
            set { this.thankYouEmailSubject = value; }
        }        
    }
}