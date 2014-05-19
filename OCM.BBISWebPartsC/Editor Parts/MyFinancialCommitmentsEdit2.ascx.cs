using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OCM.BBISWebParts
{
    public partial class MyFinancialCommitmentsEdit2 : BBNCExtensions.Parts.CustomPartEditorBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                //clear the ddl and use the oob api call
                ddlMerchantAccounts.Items.Clear();
                BBNCExtensions.API.NetCommunity.Current().Utility.MerchantAccount.LoadListWithMerchantAcccounts(ddlMerchantAccounts, false, 0);
            }
        }

        public override void OnLoadContent()
        {
            if (!IsPostBack)
            {
                MyFinancialCommitmentsOptions2 options = (MyFinancialCommitmentsOptions2)this.Content.GetContent(typeof(MyFinancialCommitmentsOptions2));
                if (options != null)
                {
                    this.chkDemo.Checked = options.DemoMode;
                    this.txtMessage.Text = options.ThankYouMessage;
                    ddlMerchantAccounts.SelectedValue = options.MerchantAccountID.ToString();
                }
            }
        }

        public override bool OnSaveContent(bool bDialogIsClosing = true)
        {
            MyFinancialCommitmentsOptions2 options = new MyFinancialCommitmentsOptions2();
            options.DemoMode = this.chkDemo.Checked;
            options.ThankYouMessage = this.txtMessage.Text;
            options.MerchantAccountID = Convert.ToInt16(ddlMerchantAccounts.SelectedValue);
            this.Content.SaveContent(options);
            return true;
        }
    }
}