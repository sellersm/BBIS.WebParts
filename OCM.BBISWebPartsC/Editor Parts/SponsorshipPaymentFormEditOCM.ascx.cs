using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OCM.BBISWebParts
{
    public partial class SponsorshipPaymentFormEditOCM : BBNCExtensions.Parts.CustomPartEditorBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        public override void OnLoadContent()
        {
            if (!IsPostBack)
            {
                SponsorshipPaymentFormOptionsOCM options = (SponsorshipPaymentFormOptionsOCM)this.Content.GetContent(typeof(SponsorshipPaymentFormOptionsOCM));
                if (options != null)
                {
                    this.txtThankYouPage.Text = options.ThankYouPage;
                    this.chkDemo.Checked = options.DemoMode;
                }
            }
            
        }

        public override bool OnSaveContent(bool bDialogIsClosing = true)
        {
            SponsorshipPaymentFormOptionsOCM options = new SponsorshipPaymentFormOptionsOCM();
            options.ThankYouPage = this.txtThankYouPage.Text;
            options.DemoMode = this.chkDemo.Checked;
            this.Content.SaveContent(options);
            return true;
        }
    }
}