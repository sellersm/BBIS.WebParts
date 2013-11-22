using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OCM.BBISWebParts
{
    public partial class SponsorshipPaymentCartEdit : BBNCExtensions.Parts.CustomPartEditorBase
    {
        protected Blackbaud.Web.Content.Portal.PageLink plinkPaymentPage;

        private SponsorshipPaymentCartOptions _myContent;
        private SponsorshipPaymentCartOptions MyContent
        {
            get
            {
                if (_myContent == null)
                {
                    _myContent = (SponsorshipPaymentCartOptions)this.Content.GetContent(typeof(SponsorshipPaymentCartOptions));

                    if (_myContent == null)
                    {
                        _myContent = new SponsorshipPaymentCartOptions();
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
                plinkMySponsorshipPage.PageID = MyContent.MySponsorshipsPageID;				
            }
        }

        public override bool OnSaveContent(bool bDialogIsClosing = true)
        {
            MyContent.PaymentFormPageID = plinkPaymentPage.PageID;
			MyContent.MySponsorshipsPageID = plinkMySponsorshipPage.PageID;
            this.Content.SaveContent(MyContent);
            return true;
        }
    }
}