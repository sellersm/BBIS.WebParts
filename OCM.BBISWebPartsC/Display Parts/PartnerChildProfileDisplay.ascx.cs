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
    public partial class PartnerChildProfileDisplay: BBNCExtensions.Parts.CustomPartDisplayBase
    {

        private void loadCountry(Guid countryID)
        {
			if ((MyContent != null) && (countryID != null))
            {
				this.lblCountryInfo1.Text = Utility.GetNotePlainTextFromConstituent(countryID, MyContent.CountryBioDocType);
				this.lblCountryInfo2.Text = Utility.GetNotePlainTextFromConstituent(countryID, MyContent.CountryBioDocType);
            }
        }

		private void loadProject(Guid projectID)
        {
            if ((MyContent != null) && (projectID != null))
            {
				this.lblProjectInfo1.Text = Utility.GetNotePlainTextFromConstituent(projectID, MyContent.ProjectBioDocType);
				this.lblProjectInfo2.Text = Utility.GetNotePlainTextFromConstituent(projectID, MyContent.ProjectBioDocType);
            }
        }

        private PartnerChildProfileOptions _myContent;
		private PartnerChildProfileOptions MyContent
        {
            get
            {
                if (_myContent == null)
                {
					_myContent = (PartnerChildProfileOptions)this.Content.GetContent(typeof(PartnerChildProfileOptions));

                    if (_myContent == null)
                    {
						_myContent = new PartnerChildProfileOptions();
                    }
                }

                return _myContent;
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //get all of the querystrings being passed in
                Guid id = new Guid();

                if (Request.QueryString["ID"] != null)
                {
                    Guid.TryParse(Request.QueryString["ID"], out id);
                }

                this.SetSponsorshipState(id != null && id != Guid.Empty);

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
            }
        }

        private void SetSponsorshipState(bool idParmExists)
        {
//            this.trAmount.Visible = MyContent.AllowSponsorship & idParmExists;
            this.lnkSponsor1.Visible = MyContent.AllowSponsorship & idParmExists;
        }

        private void LoadChildInfo(Guid id)
        {
            SqlConnection con = new SqlConnection(Blackbaud.Web.Content.Core.Settings.ConnectionString);
            string sql = "SELECT * FROM USR_V_QUERY_SPONSORSHIPOPPORTUNITYINFO WHERE ID = @id"; 

            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@id", id);
            cmd.CommandType = CommandType.Text;

            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                this.lblName.Text = reader["FULLNAME"].ToString();
                this.lblCountry.Text = reader["COUNTRYNAME"].ToString();
                this.lblchildAge.Text = reader["AGE"].ToString();
                this.lblchildGender.Text = reader["GENDER"].ToString();
                this.lblchildBirthdate.Text = reader["BIRTHDATE"].ToString();
				this.lblchildProject.Text = reader["PROJECTNAME"].ToString();

                //this.lblchildNumber.Text = reader["CHILDNO"].ToString();
                //this.lblchildSponsorAmount.Text = Utility.GetSponsorshipAmount().ToString("c");

                //string countryUrl = Utility.GetBBISPageUrl(MyContent.CountryPageID) + "{0}id=" + reader["COUNTRYID"];
				this.loadCountry(new Guid(reader["COUNTRYID"].ToString()));
				this.loadProject(new Guid(reader["PROJECTID"].ToString()));
				
				//string projectUrl = Utility.GetBBISPageUrl(MyContent.ProjectPageID) + "{0}id=" + reader["PROJECTID"];
                string sponsorUrl = Utility.GetBBISPageUrl(MyContent.SponsorPageID) + "{0}id=" + reader["ID"];

                //countryUrl = countryUrl.IndexOf("?") > -1 ? String.Format(countryUrl, "&") : String.Format(countryUrl, "?");
                //projectUrl = projectUrl.IndexOf("?") > -1 ? String.Format(projectUrl, "&") : String.Format(projectUrl, "?");
                sponsorUrl = sponsorUrl.IndexOf("?") > -1 ? String.Format(sponsorUrl, "&") : String.Format(sponsorUrl, "?");

                //this.lnkCountry.PostBackUrl = countryUrl;
                //this.lnkProject.PostBackUrl = projectUrl;
                this.lnkSponsor1.PostBackUrl = sponsorUrl;
                this.lnkSponsor2.PostBackUrl = sponsorUrl;

				this.lblchildBio1.Text = Utility.GetNotePlainTextFromSponsorship(this.API.AppFxWebServiceProvider, new Guid(reader["ID"].ToString()), MyContent.ChildBioDocType);
				this.lblchildBio2.Text = Utility.GetNotePlainTextFromSponsorship(this.API.AppFxWebServiceProvider, new Guid(reader["ID"].ToString()), MyContent.ChildBioDocType);
                this.imgPhoto.ImageUrl = "ImageHandler.ashx?context=sponsorship&type=" + MyContent.FullPhotoType + "&id=" + reader["ID"];
            }
            con.Close();

        }

    }
}