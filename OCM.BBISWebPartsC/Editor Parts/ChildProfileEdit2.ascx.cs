using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using OCM.BBISWebParts.Classes;

namespace OCM.BBISWebParts
{
    public partial class ChildProfileEdit2 : BBNCExtensions.Parts.CustomPartEditorBase
    {
        protected Blackbaud.Web.Content.Portal.PageLink plinkCountryPage;
        protected Blackbaud.Web.Content.Portal.PageLink plinkProjectPage;
        protected Blackbaud.Web.Content.Portal.PageLink plinkSponsorPage;

        private ChildProfileOptions2 _myContent;
        private ChildProfileOptions2 MyContent
        {
            get
            {
                if (_myContent == null)
                {
                    _myContent = (ChildProfileOptions2)this.Content.GetContent(typeof(ChildProfileOptions2));

                    if (_myContent == null)
                    {
                        _myContent = new ChildProfileOptions2();
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
                txtDocType.Text = MyContent.FullPhotoType;
                plinkCountryPage.PageID = MyContent.CountryPageID;
                plinkProjectPage.PageID = MyContent.ProjectPageID;
                plinkSponsorPage.PageID = MyContent.SponsorPageID;
                txtBio.Text = MyContent.ChildBioDocType;
            }
        }

        public override bool OnSaveContent(bool bDialogIsClosing)
        {
            MyContent.FullPhotoType = txtDocType.Text;
            MyContent.CountryPageID = plinkCountryPage.PageID;
            MyContent.ProjectPageID = plinkProjectPage.PageID;
            MyContent.SponsorPageID = plinkSponsorPage.PageID;
            MyContent.ChildBioDocType = txtBio.Text;

            this.Content.SaveContent(MyContent);

            return true;
        }
    }
}