using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OCM.BBISWebParts
{
    public partial class GivingCatalogEdit : BBNCExtensions.Parts.CustomPartEditorBase
    {
        //protected Blackbaud.Web.Content.Portal.PageLink plinkMoreInfoTargetPage;

        private GivingCatalogOptions _myContent;
        private GivingCatalogOptions MyContent
        {
            get
            {
                if (_myContent == null)
                {
                    _myContent = (GivingCatalogOptions)this.Content.GetContent(typeof(GivingCatalogOptions));

                    if (_myContent == null)
                    {
                        _myContent = new GivingCatalogOptions();
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
                if (MyContent != null)
                {
                    txtDocType.Text = MyContent.ThumbnailNoteType;
                    txtResultsPerPage.Text = MyContent.ResultsPerPage.ToString();
                    plinkMoreInfoTargetPage.PageID = MyContent.MoreInfoPageID;
                }
            }
        }

        public override bool OnSaveContent(bool bDialogIsClosing)
        {
            MyContent.ThumbnailNoteType = this.txtDocType.Text;

            if (!String.IsNullOrEmpty(this.txtResultsPerPage.Text))
            {
                MyContent.ResultsPerPage = Convert.ToInt32(this.txtResultsPerPage.Text);
            }

            MyContent.MoreInfoPageID = plinkMoreInfoTargetPage.PageID;

            this.Content.SaveContent(MyContent);

            return true;
        }
    }
}