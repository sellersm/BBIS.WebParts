using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Blackbaud.AppFx.Platform.Catalog.WebApiClient.DataLists.CodeTable;
using Blackbaud.AppFx.WebAPI.ServiceProxy;
using MoM.Common.MetalWeb.WebApiClient.DataLists;


namespace OCM.BBISWebParts
{
	public partial class RateIncreaseReversalFormEdit : BBNCExtensions.Parts.CustomPartEditorBase
    {
		protected Blackbaud.Web.Content.Portal.PageLink plinkThankYouPage;

        private RateIncreaseReversalFormOptions _myContent;
        private RateIncreaseReversalFormOptions MyContent
        {
            get
            {
                if (_myContent == null)
                {
                    _myContent = (RateIncreaseReversalFormOptions)this.Content.GetContent(typeof(RateIncreaseReversalFormOptions));

                    if (_myContent == null)
                    {
                        _myContent = new RateIncreaseReversalFormOptions();
                    }
                }

                return _myContent;
            }
        }
     
        protected void Page_Load(object sender, EventArgs e)
        {
			if (!IsPostBack)
			{
				if (MyContent != null)
				{
					//clear the ddl and use the oob api call
					ddlMerchantAccounts.Items.Clear();
					BBNCExtensions.API.NetCommunity.Current().Utility.MerchantAccount.LoadListWithMerchantAcccounts(ddlMerchantAccounts, false, 0);
					PopulateConstituentNoteTypes();
					PopulateDesignations();
					LoadOptions();
				}
			}
        }

		public void LoadOptions()
		{
			if (!IsPostBack)
			{
				if (MyContent != null)
				{
					this.chkDemo.Checked = MyContent.DemoMode;
					this.chkEmailResponseMode.Checked = MyContent.EmailResponseMode;
					this.ddlMerchantAccounts.SelectedValue = MyContent.MerchantAccountID.ToString();
					this.ddlConstituentNoteType.SelectedValue = MyContent.ReversalNoteTypeID.ToString();
					this.ddlDesignationBBIS.SelectedValue = MyContent.DesignationBBNCID.ToString();
					this.ddlDesignationCRM.SelectedValue = MyContent.DesignationID.ToString();

					this.txtReversalCheckboxLabel.Text = MyContent.ReversalCheckboxText;
					this.txtPaymentCheckboxLabel.Text = MyContent.PaymentCheckboxText;
					this.txtErrorNoCheckboxesChecked.Text = MyContent.ErrorNoCheckboxesCheckedText;

					this.plinkThankYouReversalPage.PageID = MyContent.ThankYouReversalPageID;
					this.plinkThankYouPaymentNoReversalPage.PageID = MyContent.ThankYouPaymentNoReversalPageID;
					this.plinkThankYouReversalWithPaymentPage.PageID = MyContent.ThankYouReversalWithPaymentPageID;

					this.txtConstituentNoteTitle.Text = MyContent.ConstituentNoteTitle;
					this.txtConstituentNoteTitleNoReversal.Text = MyContent.ConstituentNoteTitleNoReversal;
					this.txtConstituentNoteText.Text = MyContent.ConstituentNoteText;
					this.txtConstituentNoteTextNoReversal.Text = MyContent.ConstituentNoteTextNoReversal;
					this.txtConstituentNoteTextPayment.Text = MyContent.ConstituentNoteTextPayment;
					

				}
			}
		}

		/// <summary>
		/// Populate ddlConstituentNoteType drop down with all active constituent note types
		/// </summary>
		private void PopulateConstituentNoteTypes()
		{
			DataListLoadRequest request = CodeTableEntryList.CreateRequest(this.API.AppFxWebServiceProvider);
			request.ContextRecordID = "e2373a71-2f76-4beb-bcf9-58740ae32320";  // Constituent Note Code Table
			
			CodeTableEntryListRow[] codeTableItems;
			CodeTableEntryListFilterData codeTableFilter = new CodeTableEntryListFilterData();
			codeTableFilter.INCLUDEINACTIVE = false;

			codeTableItems = CodeTableEntryList.GetRows(this.API.AppFxWebServiceProvider, request);
			this.ddlConstituentNoteType.Items.Clear();
			this.ddlConstituentNoteType.DataTextField = "DESCRIPTION";
			this.ddlConstituentNoteType.DataValueField = "ID";
			this.ddlConstituentNoteType.DataSource = codeTableItems;
			this.ddlConstituentNoteType.DataBind();
			
		}

		/// <summary>
		/// Populate ddlDesignationBBIS and ddlDesignationCRM with all active designations
		/// They both use the same datalist, just different fields for the ids.
		/// </summary>
		private void PopulateDesignations()
		{
			DataListLoadRequest request = DesignationsWithBBNCIDDataList.CreateRequest(this.API.AppFxWebServiceProvider);
			request.ContextRecordID = "abc";  // This isn't used in the datalist but it cannot be empty.

			DesignationsWithBBNCIDDataListRow[] designationItems;

			designationItems = DesignationsWithBBNCIDDataList.GetRows(this.API.AppFxWebServiceProvider, request);

			this.ddlDesignationBBIS.Items.Clear();
			this.ddlDesignationBBIS.DataTextField = "DESIGNATIONNAME";
			this.ddlDesignationBBIS.DataValueField = "BBNCID";
			this.ddlDesignationBBIS.DataSource = designationItems;
			this.ddlDesignationBBIS.DataBind();

			this.ddlDesignationCRM.Items.Clear();
			this.ddlDesignationCRM.DataTextField = "DESIGNATIONNAME";
			this.ddlDesignationCRM.DataValueField = "DESIGNATIONID";
			this.ddlDesignationCRM.DataSource = designationItems;
			this.ddlDesignationCRM.DataBind();
		}

		public override bool OnSaveContent(bool bDialogIsClosing = true)
		{
			MyContent.DemoMode = this.chkDemo.Checked;
			MyContent.EmailResponseMode = this.chkEmailResponseMode.Checked;
			MyContent.MerchantAccountID = Convert.ToInt16(ddlMerchantAccounts.SelectedValue);
			MyContent.ReversalNoteTypeID = new Guid(ddlConstituentNoteType.SelectedValue);
			MyContent.DesignationBBNCID = Convert.ToInt16(this.ddlDesignationBBIS.SelectedValue);
			MyContent.DesignationID = new Guid(this.ddlDesignationCRM.SelectedValue);
			MyContent.ReversalCheckboxText = txtReversalCheckboxLabel.Text;
			MyContent.PaymentCheckboxText = txtPaymentCheckboxLabel.Text;
			MyContent.ErrorNoCheckboxesCheckedText = this.txtErrorNoCheckboxesChecked.Text;

			MyContent.ThankYouReversalPageID = plinkThankYouReversalPage.PageID;
			MyContent.ThankYouReversalWithPaymentPageID = plinkThankYouReversalWithPaymentPage.PageID;
			MyContent.ThankYouPaymentNoReversalPageID = this.plinkThankYouPaymentNoReversalPage.PageID;

			MyContent.ConstituentNoteTitle = this.txtConstituentNoteTitle.Text;
			MyContent.ConstituentNoteTitleNoReversal = this.txtConstituentNoteTitleNoReversal.Text;
			MyContent.ConstituentNoteText = this.txtConstituentNoteText.Text;
			MyContent.ConstituentNoteTextNoReversal = this.txtConstituentNoteTextNoReversal.Text;
			MyContent.ConstituentNoteTextPayment = this.txtConstituentNoteTextPayment.Text;

			this.Content.SaveContent(MyContent);
			
			return true;
		}


    }
}