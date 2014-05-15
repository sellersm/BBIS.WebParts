using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

using Blackbaud.AppFx.WebAPI;
using Blackbaud.AppFx.WebAPI.ServiceProxy;
using Blackbaud.AppFx.Sponsorship.Catalog.WebApiClient.ViewForms.SponsorshipOpportunity;
using Blackbaud.AppFx.Sponsorship.Catalog.WebApiClient.ViewForms.SponsorshipProgram;
using OCM.BBISWebParts.Classes;

namespace OCM.BBISWebParts
{
    public partial class GivingCatalogItemDetailDisplay : BBNCExtensions.Parts.CustomPartDisplayBase
    {
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
            //if (!IsPostBack)
            //{
                //get all of the querystrings being passed in
                Guid id = new Guid();

                if (Request.QueryString["ID"] != null)
                {
                    Guid.TryParse(Request.QueryString["ID"], out id);
                }

                //this.SetSponsorshipState(id != null && id != Guid.Empty);

                if (id != null && id != Guid.Empty)
                {
                    try
                    {                                                
                        this.LoadChildInfo(id);
                    }
                    catch (Exception ex)
                    {
                        this.lblError.Text = ex.Message + "<br /><br />" + ex.StackTrace;
                        this.lblError.Visible = true;
                    }
                }
            //}
        }

        //private void SetSponsorshipState(bool idParmExists)
        //{
        //    this.trAmount.Visible = MyContent.AllowSponsorship & idParmExists;
        //    this.lnkSponsor.Visible = MyContent.AllowSponsorship & idParmExists;
        //}

        private void LoadChildInfo(Guid id)
        {
            SqlConnection con = new SqlConnection(Blackbaud.Web.Content.Core.Settings.ConnectionString);
            string sql = "SELECT * FROM dbo.USR_GIVINGCATALOG WHERE ID = @id";

            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@id", id);
            cmd.CommandType = CommandType.Text;

            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                this.lblName.Text = reader["ITEMNAME"].ToString();
                //this.lblCountry.Text = reader["COUNTRYNAME"].ToString();
                //this.lblchildAge.Text = reader["AGE"].ToString();
                //this.lblchildGender.Text = reader["GENDER"].ToString();
                //this.lblchildBirthdate.Text = reader["BIRTHDATE"].ToString();
                //this.lblchildProject.Text = reader["PROJECTNAME"].ToString();
                //this.lblchildNumber.Text = reader["CHILDNO"].ToString();
                this.lblchildSponsorAmount.Text = Decimal.Parse(reader["PRICE"].ToString()).ToString("c");

                //string countryUrl = Utility.GetBBISPageUrl(MyContent.CountryPageID) + "{0}id=" + reader["COUNTRYID"];
                //string projectUrl = Utility.GetBBISPageUrl(MyContent.ProjectPageID) + "{0}id=" + reader["PROJECTID"];
                string sponsorUrl = Utility.GetBBISPageUrl(MyContent.SponsorPageID) + "{0}id=" + reader["ID"];

                //countryUrl = countryUrl.IndexOf("?") > -1 ? String.Format(countryUrl, "&") : String.Format(countryUrl, "?");
                //projectUrl = projectUrl.IndexOf("?") > -1 ? String.Format(projectUrl, "&") : String.Format(projectUrl, "?");
                sponsorUrl = sponsorUrl.IndexOf("?") > -1 ? String.Format(sponsorUrl, "&") : String.Format(sponsorUrl, "?");

                //this.lnkCountry.PostBackUrl = countryUrl;
                //this.lnkProject.PostBackUrl = projectUrl;
                this.lnkSponsor.PostBackUrl = sponsorUrl;

                this.lblchildBio.Text = reader["DESCRIPTION"].ToString(); //Utility.GetNoteTextFromSponsorship(this.API.AppFxWebServiceProvider, new Guid(reader["ID"].ToString()), MyContent.ChildBioDocType);
                this.imgPhoto.ImageUrl = "ImageHandler.ashx?context=givingcatalog&type=" + MyContent.FullPhotoType + "&id=" + reader["ID"];
            }
            con.Close();
        }

    }
}