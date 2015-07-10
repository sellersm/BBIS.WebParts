using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using OCM.BBISWebParts.Classes;

namespace OCM.BBISWebParts
{
    public partial class EventChildProfileEdit : BBNCExtensions.Parts.CustomPartEditorBase
    {
        protected Blackbaud.Web.Content.Portal.PageLink plinkCountryPage;
        protected Blackbaud.Web.Content.Portal.PageLink plinkProjectPage;
        protected Blackbaud.Web.Content.Portal.PageLink plinkSponsorPage;

		private EventChildProfileOptions _myContent;
		private EventChildProfileOptions MyContent
        {
            get
            {
                if (_myContent == null)
                {
					_myContent = (EventChildProfileOptions)this.Content.GetContent(typeof(EventChildProfileOptions));

                    if (_myContent == null)
                    {
						_myContent = new EventChildProfileOptions();
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
				this.txtChildBioDocType.Text = MyContent.ChildBioDocType;
				this.txtChildProfileImageDocType.Text = MyContent.FullPhotoType;
				this.txtProjectBioDocType.Text = MyContent.ProjectBioDocType;
				this.txtCountryBioDocType.Text = MyContent.CountryBioDocType;

				this.plinkChildLockedPage.PageID = MyContent.ChildLockedPageID;
				this.plinkChildUnavailablePage.PageID = MyContent.ChildUnavailablePageID;
				this.plinkIneligiblePage.PageID = MyContent.ChildIneligiblePageID;
				this.plinkSponsorPage.PageID = MyContent.SponsorPageID;
                chkAllowSponsorship.Checked = MyContent.AllowSponsorship;
            }
        }

        public override bool OnSaveContent(bool bDialogIsClosing)
        {
            MyContent.FullPhotoType = this.txtChildProfileImageDocType.Text;
			MyContent.ChildBioDocType = this.txtChildBioDocType.Text;
			MyContent.ProjectBioDocType = this.txtProjectBioDocType.Text;
			MyContent.CountryBioDocType = this.txtCountryBioDocType.Text;
			MyContent.ChildLockedPageID = this.plinkChildLockedPage.PageID;
			MyContent.ChildUnavailablePageID = this.plinkChildUnavailablePage.PageID;
			MyContent.ChildIneligiblePageID = this.plinkIneligiblePage.PageID;
			MyContent.SponsorPageID = this.plinkSponsorPage.PageID;
            MyContent.AllowSponsorship = this.chkAllowSponsorship.Checked;

            this.Content.SaveContent(MyContent);

            return true;
        }
    }
}