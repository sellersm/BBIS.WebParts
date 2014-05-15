using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OCM.BBISWebParts
{
    public partial class GivingCatalogItemDetailEdit : BBNCExtensions.Parts.CustomPartEditorBase
    {
        //protected Blackbaud.Web.Content.Portal.PageLink plinkSponsorPage;

        private GivingCatalogItemDetailOptions _myContent;
        private GivingCatalogItemDetailOptions MyContent
        {
            get
            {
                if (_myContent == null)
                {
                    _myContent = (GivingCatalogItemDetailOptions)this.Content.GetContent(typeof(GivingCatalogItemDetailOptions));

                    if (_myContent == null)
                    {
                        _myContent = new GivingCatalogItemDetailOptions();
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
                //plinkCountryPage.PageID = MyContent.CountryPageID;
                //plinkProjectPage.PageID = MyContent.ProjectPageID;
                plinkSponsorPage.PageID = MyContent.SponsorPageID;
                txtBio.Text = MyContent.ChildBioDocType;
                //chkAllowSponsorship.Checked = MyContent.AllowSponsorship;
            }
        }

        public override bool OnSaveContent(bool bDialogIsClosing)
        {
            MyContent.FullPhotoType = txtDocType.Text;
            //MyContent.CountryPageID = plinkCountryPage.PageID;
            //MyContent.ProjectPageID = plinkProjectPage.PageID;
            MyContent.SponsorPageID = plinkSponsorPage.PageID;
            MyContent.ChildBioDocType = txtBio.Text;
            //MyContent.AllowSponsorship = chkAllowSponsorship.Checked;

            this.Content.SaveContent(MyContent);

            return true;
        }
    }
}