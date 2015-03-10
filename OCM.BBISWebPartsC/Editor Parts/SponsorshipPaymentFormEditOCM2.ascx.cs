using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OCM.BBISWebParts
{
    public partial class SponsorshipPaymentFormEditOCM2 : BBNCExtensions.Parts.CustomPartEditorBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        public override void OnLoadContent()
        {
            if (!IsPostBack)
            {
                SponsorshipPaymentFormOptionsOCM2 options = (SponsorshipPaymentFormOptionsOCM2)this.Content.GetContent(typeof(SponsorshipPaymentFormOptionsOCM2));
                if (options != null)
                {
                    this.txtThankYouPage.Text = options.ThankYouPage;
                    this.chkDemo.Checked = options.DemoMode;
					this.chkDemoLongReferral.Checked = options.DemoLongReferralMode;
                }
            }
            
        }

        public override bool OnSaveContent(bool bDialogIsClosing = true)
        {
            SponsorshipPaymentFormOptionsOCM2 options = new SponsorshipPaymentFormOptionsOCM2();
            options.ThankYouPage = this.txtThankYouPage.Text;
            options.DemoMode = this.chkDemo.Checked;
			options.DemoLongReferralMode = this.chkDemoLongReferral.Checked;
			this.Content.SaveContent(options);
            return true;
        }
    }
}