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
    public partial class EventChildProfileDisplay: BBNCExtensions.Parts.CustomPartDisplayBase
    {

		private const string LockError = "Could not lock child.";
		private const string LockUnsuccessful = "Child is locked by another user.";
		private const string ChildNotEligible = "Child is not eligible.";
		private const string ChildNotReserved = "Child is not reserved.";

		private Guid _childID;
		private Guid ChildID
		{
			get
			{
				if (_childID == Guid.Empty)
				{
					//get child id from the querystring
					_childID = new Guid();

					if (Request.QueryString["ID"] != null)
					{
						Guid.TryParse(Request.QueryString["ID"], out _childID);
					}
				}

				return _childID;
			}
		}

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

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
              
				this.SetSponsorshipState();

				if (ChildID != Guid.Empty)
                {

				    try
                    {

						// Check if there are any locks and if the child is available and eligible using the data list
						// The GetRows method will throw an exception if the child is not available or not eligible

						OCM.BBISWebParts.WebsiteChildLockDataListFilterData filter = new OCM.BBISWebParts.WebsiteChildLockDataListFilterData();
						filter.SESSIONID = Session.SessionID.ToString();

						OCM.BBISWebParts.WebsiteChildLockDataListRow[] childLocks = OCM.BBISWebParts.WebsiteChildLockDataList.GetRows(this.API.AppFxWebServiceProvider, ChildID.ToString(), filter);

						// If are any rows, then there are locks that have not expired
						if (childLocks.Length > 0)
						{
							string childLockedPageURL = Utility.GetBBISPageUrl(MyContent.ChildLockedPageID) + "{0}id=" + ChildID;
							childLockedPageURL = childLockedPageURL.IndexOf("?") > -1 ? String.Format(childLockedPageURL, "&") : String.Format(childLockedPageURL, "?");
							Response.Redirect(childLockedPageURL);
						}
						else
						{
							// If you make it to here, the child can be displayed
							this.LoadChildInfo(ChildID);
						}
                    }

                    catch (Exception ex)
                    {
						// Determine if Child could not be locked
						if (ex.Message.ToString().Contains(LockError))
						{
							if (ex.Message.ToString().Contains(ChildNotEligible))
							{
								string childIneligiblePageURL = Utility.GetBBISPageUrl(MyContent.ChildIneligiblePageID) + "{0}id=" + ChildID;
								childIneligiblePageURL = childIneligiblePageURL.IndexOf("?") > -1 ? String.Format(childIneligiblePageURL, "&") : String.Format(childIneligiblePageURL, "?");
								Response.Redirect(childIneligiblePageURL, false);
							}
							else if (ex.Message.ToString().Contains(ChildNotReserved))
							{
								string childUnavailablePageURL = Utility.GetBBISPageUrl(MyContent.ChildUnavailablePageID) + "{0}id=" + ChildID;
								childUnavailablePageURL = childUnavailablePageURL.IndexOf("?") > -1 ? String.Format(childUnavailablePageURL, "&") : String.Format(childUnavailablePageURL, "?");
								Response.Redirect(childUnavailablePageURL, false);
							}

						}
						else
						{
							this.lblError.Text = ex.Message + "<br /><br />" + ex.StackTrace;
							this.lblError.Visible = true;
						}
					}

					//try
					//{

					//    string addDataForm = "b46fe5b4-0fbf-4dfc-8f9b-e6b19f281720";

					//    DataFormLoadRequest request = OCM.BBISWebParts.WebsiteChildLockAddDataForm.CreateLoadRequest(this.API.AppFxWebServiceProvider);
					//    request.FormID = new Guid(addDataForm);
					//    OCM.BBISWebParts.WebsiteChildLockAddDataFormData data = OCM.BBISWebParts.WebsiteChildLockAddDataForm.LoadData(this.API.AppFxWebServiceProvider, request);

					//    data.ContextRecordID = id.ToString();
					//    data.SESSIONID = Session.SessionID.ToString();

					//    // if this is successful, then the child was locked.  
					//    data.Save(this.API.AppFxWebServiceProvider);

					//    this.LoadChildInfo(id);
					//}
					//catch (Exception ex)
					//{
					//    // Determine if Child could not be locked
					//    if (ex.Message.ToString().Contains(LockError))
					//    {
					//        if (ex.Message.ToString().Contains(LockUnsuccessful))
					//        {
					//            string childLockedPageURL = Utility.GetBBISPageUrl(MyContent.ChildLockedPageID) + "{0}id=" + id;
					//            childLockedPageURL = childLockedPageURL.IndexOf("?") > -1 ? String.Format(childLockedPageURL, "&") : String.Format(childLockedPageURL, "?");
					//            Response.Redirect(childLockedPageURL);
					//        }
					//        else if (ex.Message.ToString().Contains(ChildNotEligible))
					//        {
					//            string childIneligiblePageURL = Utility.GetBBISPageUrl(MyContent.ChildIneligiblePageID) + "{0}id=" + id;
					//            childIneligiblePageURL = childIneligiblePageURL.IndexOf("?") > -1 ? String.Format(childIneligiblePageURL, "&") : String.Format(childIneligiblePageURL, "?");
					//            Response.Redirect(childIneligiblePageURL);
					//        }
					//        else if (ex.Message.ToString().Contains(ChildNotReserved))
					//        {
					//            string childUnavailablePageURL = Utility.GetBBISPageUrl(MyContent.ChildUnavailablePageID) + "{0}id=" + id;
					//            childUnavailablePageURL = childUnavailablePageURL.IndexOf("?") > -1 ? String.Format(childUnavailablePageURL, "&") : String.Format(childUnavailablePageURL, "?");
					//            Response.Redirect(childUnavailablePageURL);
					//        }

					//    }
					//    else
					//    {
					//        this.lblError.Text = ex.Message + "<br /><br />" + ex.StackTrace;
					//        this.lblError.Visible = true;
					//    }
					//}
                }

            }
        }

        private void SetSponsorshipState()
        {
			//	this.trAmount.Visible = MyContent.AllowSponsorship && (ChildID != Guid.Empty);
			this.lnkSponsor1.Visible = MyContent.AllowSponsorship && (ChildID != Guid.Empty);
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