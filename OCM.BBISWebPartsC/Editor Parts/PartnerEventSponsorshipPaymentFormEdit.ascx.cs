using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Blackbaud.Web.Content.Core;
using Blackbaud.Web.Content.Common;

namespace OCM.BBISWebParts
{

	public partial class PartnerEventSponsorshipPaymentFormEdit : BBNCExtensions.Parts.CustomPartEditorBase
    {
		protected Blackbaud.Web.Content.Portal.HtmlEditorControl2 htmledConfirmationEmail;
		protected Blackbaud.Web.Content.Portal.PageLink plinkThankYouPage;

		private PartnerEventSponsorshipPaymentFormOptions _myContent;
		private PartnerEventSponsorshipPaymentFormOptions MyContent
        {
            get
            {
                if (_myContent == null)
                {
					_myContent = (PartnerEventSponsorshipPaymentFormOptions)this.Content.GetContent(typeof(PartnerEventSponsorshipPaymentFormOptions));

                    if (_myContent == null)
                    {
						_myContent = new PartnerEventSponsorshipPaymentFormOptions();
                    }
                }

                return _myContent;
            }
        }
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
				//clear the ddl and use the oob api call
				ddlMerchantAccounts.Items.Clear();
				BBNCExtensions.API.NetCommunity.Current().Utility.MerchantAccount.LoadListWithMerchantAcccounts(ddlMerchantAccounts, false, 0);
             
                LoadOptions();
            }
        }

        public void LoadOptions()
        {
            if (!IsPostBack)
            {
                if (MyContent != null)
                {
					ddlMerchantAccounts.SelectedValue = MyContent.MerchantAccountID.ToString();
					this.chkDemo.Checked = MyContent.DemoMode;
					this.chkDemoLongReferral.Checked = MyContent.DemoLongReferralMode;
					this.txtAppealID.Text = MyContent.AppealID;
					this.txtReferralText.Text = MyContent.ReferralText;
			
					this.plinkThankYouPage.PageID = MyContent.ThankYouPageID;
					this.plinkChildLockedPage.PageID = MyContent.ChildLockedPageID;
					this.plinkChildUnavailablePage.PageID = MyContent.ChildUnavailablePageID;
					this.plinkIneligiblePage.PageID = MyContent.ChildIneligiblePageID;

					SetEmailOptions(MyContent.EmailOptions);
                }
            }            
        }
		

       

        public override bool OnSaveContent(bool bDialogIsClosing = true)
        {
			MyContent.MerchantAccountID = Convert.ToInt16(ddlMerchantAccounts.SelectedValue);
			MyContent.DemoMode = this.chkDemo.Checked;
			MyContent.DemoLongReferralMode = this.chkDemoLongReferral.Checked;
			MyContent.AppealID = this.txtAppealID.Text;
			MyContent.ReferralText = this.txtReferralText.Text;
			MyContent.ThankYouPageID = this.plinkThankYouPage.PageID;
			MyContent.ChildLockedPageID = this.plinkChildLockedPage.PageID;
			MyContent.ChildUnavailablePageID = this.plinkChildUnavailablePage.PageID;
			MyContent.ChildIneligiblePageID = this.plinkIneligiblePage.PageID;
			
			MyContent.EmailOptions = GetEmailOptions();

			this.Content.SaveContent(MyContent);
            return true;
        }

		protected void htmled2ConfirmationEmail_Init(object sender, System.EventArgs e)
		{
			htmledConfirmationEmail.FieldListProvider = new Blackbaud.Web.Content.Core.Data.IFieldListProvider[] { new MergeFieldsProvider() };
		}

	
		private void SetEmailOptions(ConfirmationEmailOptions emailOptions)
		{
			if (emailOptions != null)
			{
				txtFromAddress.Text = emailOptions.FromAddress;
				txtFromName.Text = emailOptions.FromName;
				txtReplyAddress.Text = emailOptions.ReplyAddress;
				txtSubject.Text = emailOptions.Subject;
				htmledConfirmationEmail.StorageHTML = emailOptions.HTML;
				
			}
		}

		
		private ConfirmationEmailOptions GetEmailOptions()
		{
			ConfirmationEmailOptions result = new ConfirmationEmailOptions();

			result.HTML = htmledConfirmationEmail.StorageHTML;
			result.FromName = txtFromName.Text;
			result.FromAddress = txtFromAddress.Text;
			result.ReplyAddress = txtReplyAddress.Text;
			result.Subject = txtSubject.Text;

			bool emailTemplateAlreadyExists = false;

			if (MyContent.EmailOptions != null)
			{
				emailTemplateAlreadyExists = MyContent.EmailOptions.TemplateID > 0;
			}

			EmailTemplate emailTemplate = null;

			if (emailTemplateAlreadyExists)
			{
				emailTemplate = new EmailTemplate(MyContent.EmailOptions.TemplateID);
			}
			else
			{
				emailTemplate = new EmailTemplate();
			}

			emailTemplate.FromDisplayName = result.FromName;
			emailTemplate.FromAddress = result.FromAddress;
			emailTemplate.ContentHTML = result.HTML;
			emailTemplate.Subject = result.Subject;
			emailTemplate.Name = "Confirmation message for part " + this.Content.ContentID.ToString() + " - " + Guid.NewGuid().ToString();
			emailTemplate.ReplyAddress = result.ReplyAddress;
			emailTemplate.Description = "Created from code on a New Sponsorship Payment Form part.";
			emailTemplate.DataSourceID = 1;
			emailTemplate.Save();

			result.TemplateID = emailTemplate.ID;

			return result;
		}

		
	}
}