using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OCM.BBISWebParts
{
    public partial class ShoppingCartEdit : BBNCExtensions.Parts.CustomPartEditorBase
    {
        //protected Blackbaud.Web.Content.Portal.PageLink plinkMoreInfoPage;
        //protected Blackbaud.Web.Content.Portal.PageLink plinkEmailPage;

        private MySponsorshipsOptions2 _myContent;
        private MySponsorshipsOptions2 MyContent
        {
            get
            {
                if (_myContent == null)
                {
                    _myContent = (MySponsorshipsOptions2)this.Content.GetContent(typeof(MySponsorshipsOptions2));

                    if (_myContent == null)
                    {
                        _myContent = new MySponsorshipsOptions2();
                    }
                }

                return _myContent;
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ddlMerchantAccounts.Items.Clear();
                BBNCExtensions.API.NetCommunity.Current().Utility.MerchantAccount.LoadListWithMerchantAcccounts(ddlMerchantAccounts, false);

                ddlMerchantAccounts.SelectedValue = MyContent.MerchantAccountID.ToString();
            }
        }

        public override void OnLoadContent()
        {
            if (!IsPostBack)
            {
                txtDocType.Text = MyContent.ThumbnailNoteType;
                plinkMoreInfoPage.PageID = MyContent.MoreInfoPageID;
                plinkEmailPage.PageID = MyContent.EmailPageID;
                plinkPaymentCartPage.PageID = MyContent.PaymentCartPageID;
                chkDemo.Checked = MyContent.DemoMode;
                txtMessage.Text = MyContent.ThankYouMessage;
            }
        }

        public override bool OnSaveContent(bool bDialogIsClosing = true)
        {
            MyContent.ThumbnailNoteType = this.txtDocType.Text;
            MyContent.MoreInfoPageID = this.plinkMoreInfoPage.PageID;
            MyContent.EmailPageID = this.plinkEmailPage.PageID;
            MyContent.PaymentCartPageID = this.plinkPaymentCartPage.PageID;
            MyContent.DemoMode = this.chkDemo.Checked;
            MyContent.ThankYouMessage = this.txtMessage.Text;
            MyContent.MerchantAccountID = Convert.ToInt16(ddlMerchantAccounts.SelectedValue);

            this.Content.SaveContent(MyContent);
            return true;
        }
    }
}