using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace OCM.BBISWebParts
{
    public partial class CountryProfileDisplay2 : BBNCExtensions.Parts.CustomPartDisplayBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {
                    if (!String.IsNullOrWhiteSpace(Request.QueryString["id"])) this.loadCountry();
                }
                catch (Exception ex)
                {
                    this.lblError.Text = ex.Message + "<br /><br />" + ex.StackTrace;
                    this.lblError.Visible = true;
                }
            }
        }

        private void loadCountry()
        {
            CountryProfileOptions2 options = (CountryProfileOptions2)this.Content.GetContent(typeof(CountryProfileOptions2));
            if (options != null)
            {
                Guid id = new Guid(Request.QueryString["id"].ToString());

                this.lblInfo.Text = Utility.GetNoteTextFromConstituent(id, options.NoteType);
                this.imgPhoto.ImageUrl = "ImageHandler.ashx?context=constituent&id=" + id.ToString() + "&type=" + options.ImageDocType;// .Controls.Add(Utility.GetPhotoFromAttachements(provider, id, "Child Photo"));
            }
        }
    }
}