using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Blackbaud.CustomFx.ChildSponsorship.WebParts
{
    public partial class SponsorshipSearchEdit : BBNCExtensions.Parts.CustomPartEditorBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        public override void OnLoadContent()
        {
            if (!IsPostBack)
            {
                SponsorshipSearchOptionsOCM options = (SponsorshipSearchOptionsOCM)this.Content.GetContent(typeof(SponsorshipSearchOptionsOCM));
                if (options != null)
                {
                    this.txtDocType.Text = options.ThumbnailNoteType;
                    this.txtResultsPerPage.Text = options.ResultsPerPage.ToString();
                    this.txtMoreInfo.Text = options.MoreInfoPage;
                    this.txtSponsor.Text = options.SponsorPage;
                }
            }
        }

        public override bool OnSaveContent(bool bDialogIsClosing)
        {
            SponsorshipSearchOptionsOCM options = new SponsorshipSearchOptionsOCM();

            options.ThumbnailNoteType = this.txtDocType.Text;
            if (!String.IsNullOrEmpty(this.txtResultsPerPage.Text)) options.ResultsPerPage = Convert.ToInt32(this.txtResultsPerPage.Text);
            options.MoreInfoPage = this.txtMoreInfo.Text;
            options.SponsorPage = this.txtSponsor.Text;

            this.Content.SaveContent(options);
            return true;
        }
    }
}