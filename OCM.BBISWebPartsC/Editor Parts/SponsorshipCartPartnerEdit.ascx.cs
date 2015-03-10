using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OCM.BBISWebParts
{
	public partial class SponsorshipCartPartnerEdit : BBNCExtensions.Parts.CustomPartEditorBase
    {
     		private SponsorshipCartPartnerOptions _myContent;
		private SponsorshipCartPartnerOptions MyContent
        {
            get
            {
                if (_myContent == null)
                {
					_myContent = (SponsorshipCartPartnerOptions)this.Content.GetContent(typeof(SponsorshipCartPartnerOptions));

                    if (_myContent == null)
                    {
						_myContent = new SponsorshipCartPartnerOptions();
                    }
                }

                return _myContent;
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public override void OnLoadContent()
        {
            if (!IsPostBack)
            {
                plinkPaymentPage.PageID = MyContent.PaymentFormPageID;
                MyContent.PaymentFormPageID = plinkPaymentPage.PageID;
            }
        }

        public override bool OnSaveContent(bool bDialogIsClosing = true)
        {
            MyContent.PaymentFormPageID = plinkPaymentPage.PageID;
            this.Content.SaveContent(MyContent);
            return true;
        }
    }
}