using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using OCM.BBISWebParts.Classes;

namespace OCM.BBISWebParts
{
    public partial class ProjectProfileDisplay2 : BBNCExtensions.Parts.CustomPartDisplayBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
            if (!String.IsNullOrWhiteSpace(Request.QueryString["id"])) this.loadProject();
            }
            catch (Exception ex)
            {
                this.lblError.Text = ex.Message + "<br /><br />" + ex.StackTrace;
                this.lblError.Visible = true;
            }

        }

        private void loadProject()
        {
            ProjectProfileOptions2 options = (ProjectProfileOptions2)this.Content.GetContent(typeof(ProjectProfileOptions2));
            if (options != null && Request.QueryString["id"] != null)
            {
                Guid id = new Guid(Request.QueryString["id"].ToString());
                this.lblInfo.Text = Utility.GetNoteTextFromConstituent(id, options.NoteDocType);
                this.imgPhoto.ImageUrl = "ImageHandler.ashx?context=constituent&id=" + id.ToString() + "&type=" + options.ImageDocType;// .Controls.Add(Utility.GetPhotoFromAttachements(provider, id, "Child Photo"));
            }
        }
    }
}