﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

using Blackbaud.AppFx.WebAPI;
using Blackbaud.AppFx.WebAPI.ServiceProxy;
using Blackbaud.Web.Content.Core;
using OCM.BBISWebParts.Classes;

namespace OCM.BBISWebParts
{
	public partial class PartnerSponsorshipSearchGridDisplay : BBNCExtensions.Parts.CustomPartDisplayBase
    {
        private string AGE = string.Empty;
        private string GENDER = string.Empty;
        private string COUNTRY = string.Empty;
        private string CHOOSEFORME = string.Empty;

		private PartnerSponsorshipSearchOptions _myContent;
		private PartnerSponsorshipSearchOptions MyContent
        {
            get
            {
                if (_myContent == null)
                {
					_myContent = (PartnerSponsorshipSearchOptions)this.Content.GetContent(typeof(PartnerSponsorshipSearchOptions));

                    if (_myContent == null)
                    {
						_myContent = new PartnerSponsorshipSearchOptions();
                    }
                }

                return _myContent;
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {
                    this.currentPage = 0;
                    
                    this.bindSearchResults(true);  //force db refresh because filter values may have changed
                }
                catch (Exception ex)
                {
                    this.lblError.Text = ex.Message + "<br /><br />" + ex.StackTrace;
                    this.lblError.Visible = true;
                }
            }
        }

        public int currentPage
        {
            get
            {
                // look for current page in ViewState
                object o = this.ViewState["_CurrentPage"];
                if (o == null)
                    return 0; // default page index of 0
                else
                    return (int)o;
            }
            set
            {
                this.ViewState["_CurrentPage"] = value;
            }
        }

        public int maxPage
        {
            get
            {
                // look for max page in ViewState
                object o = this.ViewState["_MaxPage"];
                if (o == null)
                    return 1; // default page index of 0
                else
                    return (int)o;
            }
            set
            {
                this.ViewState["_MaxPage"] = value;
            }
        }

        private DataTable GetChildrenDataSet()
        {
            if (Request.QueryString["AGE"] != null)
            {
                AGE = Request.QueryString["AGE"].ToString();
            }

            if (Request.QueryString["GENDER"] != null)
            {
                GENDER = Request.QueryString["GENDER"].ToString();
				if (GENDER.ToLower() == "either")
				{
					GENDER = string.Empty;
				}
            }

            if (Request.QueryString["COUNTRY"] != null)
            {
                COUNTRY = Request.QueryString["COUNTRY"].ToString();
				if (COUNTRY.ToLower() == "all")
				{
					COUNTRY = string.Empty;
				}
            }

            if (Request.QueryString["CHOOSEFORME"] != null)
            {
                CHOOSEFORME = Request.QueryString["CHOOSEFORME"].ToString();
            }

            DataTable dt = new DataTable();
            PagedDataSource page = new PagedDataSource();
            page.DataSource = dt.DefaultView;
            page.AllowPaging = true;
            page.PageSize = MyContent.ResultsPerPage;
            page.CurrentPageIndex = this.currentPage;
            
            string age0 = string.Empty;
            string age1 = string.Empty;

			if (!string.IsNullOrEmpty(AGE))
			{
				if (AGE.ToLower() != "all")
				{
					if (AGE.Contains("-"))
					{
						string[] range = AGE.Split('-');
						age0 = range[0];
						age1 = range[1];
					}
					else
					{
						if (AGE.Substring(AGE.Length - 1, 1) == "p")
						{
							age0 = AGE.Substring(0, AGE.Length - 1);
							age1 = "99";
						}
						else
						{
							age0 = AGE;
							age1 = AGE;
						}
					}
				}
			}        

			//**
			//using(SqlConnection con = new SqlConnection(Blackbaud.Web.Content.Core.Settings.ConnectionString))
			//{
			//    using (SqlCommand cmd = new SqlCommand("USR_USP_CHILDREN_WEBSEARCH", con))
			//    {
			//        cmd.Parameters.Add(new SqlParameter("@GENDER", GENDER));
			//        cmd.Parameters.Add(new SqlParameter("@AGE0", age0));
			//        cmd.Parameters.Add(new SqlParameter("@AGE1", age1));
			//        cmd.Parameters.Add(new SqlParameter("@COUNTRY", COUNTRY));

			//        cmd.CommandType = CommandType.StoredProcedure;

			//        using(SqlDataAdapter dta = new SqlDataAdapter(cmd))
			//        {
			//            con.Open();
			//            dta.Fill(dt);
			//        }                    
			//    }
			//}
			//**

			dt.Columns.Add("ID");
			dt.Columns.Add("FIRSTNAME");
			dt.Columns.Add("LASTNAME");
			dt.Columns.Add("FULLNAME");
			dt.Columns.Add("COUNTRYNAME");
			dt.Columns.Add("COUNTRYID");
			dt.Columns.Add("AGE");
			dt.Columns.Add("BIRTHDATE");
			dt.Columns.Add("GENDER");
			dt.Columns.Add("GENDERCODE");
			dt.Columns.Add("PROJECTNAME");
			dt.Columns.Add("PROJECTID");
			dt.Columns.Add("CHILDNO");
			dt.Columns.Add("ELIGIBILITY");
			dt.Columns.Add("AVAILABILITY");
			dt.Columns.Add("IMAGEURL");

			OCM.BBISWebParts.WebsiteChurchPartnerChildSearchDataListFilterData filter = new OCM.BBISWebParts.WebsiteChurchPartnerChildSearchDataListFilterData() ;
			
			filter.COUNTRY = COUNTRY;
			filter.GENDER = GENDER;
			filter.AGEMIN = age0;
			filter.AGEMAX = age1;


			//DataListLoadRequest request = Blackbaud.AppFx.Sponsorship.Catalog.WebApiClient.DataLists.Constituent.SponsorshipDataList.CreateRequest(this.API.AppFxWebServiceProvider);
			//request.DataListID = new Guid("5ECB50D7-01C2-4487-8B34-1ECCF6E4FF5B");
			//request.ContextRecordID = MyContent.PartnerLookupID;

			OCM.BBISWebParts.WebsiteChurchPartnerChildSearchDataListRow[] rows = OCM.BBISWebParts.WebsiteChurchPartnerChildSearchDataList.GetRows(this.API.AppFxWebServiceProvider, MyContent.PartnerLookupID, filter);

			foreach (OCM.BBISWebParts.WebsiteChurchPartnerChildSearchDataListRow row in rows)
			{
				DataRow dr = dt.NewRow();
				dr["ID"] = row.ID;
				dr["FIRSTNAME"] = row.FIRSTNAME;
				dr["LASTNAME"] = row.LASTNAME;
				dr["FULLNAME"] = row.FULLNAME;
				dr["COUNTRYNAME"] = row.COUNTRYNAME;
				dr["COUNTRYID"] = row.COUNTRYID;
				dr["AGE"] = row.AGE;
				dr["BIRTHDATE"] = row.BIRTHDATE;
				dr["GENDER"] = row.GENDER;
				dr["GENDERCODE"] = row.GENDERCODE;
				dr["PROJECTNAME"] = row.PROJECTNAME;
				dr["PROJECTID"] = row.PROJECTID;
				dr["CHILDNO"] = row.CHILDNO;
				dr["ELIGIBILITY"] = row.ELIGIBILITY;
				dr["AVAILABILITY"] = row.AVAILABILITY;
				dr["IMAGEURL"] = "custom/ChildSponsorship2/ImageHandler.ashx?context=sponsorship&type=" + MyContent.ThumbnailNoteType + "&id=" + row.ID;

				dt.Rows.Add(dr);
			}

			
            BBSession.Remove("CHILDREN");
            BBSession.Add("CHILDREN", dt);

            return dt;
        }

		private int bindSearchResults(bool forceRefresh = false)
		{
			DataTable dt = null;

			if (!forceRefresh)
			{
				dt = BBSession.Retrieve<DataTable>("CHILDREN");
			}
			else
			{
				dt = GetChildrenDataSet();
			}

			PagedDataSource page = new PagedDataSource();
			page.DataSource = dt.DefaultView;
			page.AllowPaging = true;
			page.PageSize = MyContent.ResultsPerPage;
			page.CurrentPageIndex = this.currentPage;

			if (CHOOSEFORME != null)
			{
				if (CHOOSEFORME.ToUpper() == "Y" && dt.Rows.Count > 0)
				{
					Dictionary<string, string> qs = new Dictionary<string, string>();
					qs.Add("id", dt.Rows[0]["ID"].ToString());
					Utility.RedirectToBBISPage(MyContent.MoreInfoPageID, qs);
				}
			}

			this.rptSearch.DataSource = page;
			this.rptSearch.DataBind();

			if (dt.Rows.Count > 0)
			{
				this.bindNav(dt.Rows.Count);
				this.pnlNav.Visible = true;
				this.pnlNoResults.Visible = false;
			}
			else
			{
				this.pnlNav.Visible = false;
				this.pnlNoResults.Visible = true;
			}

			return dt.Rows.Count;
		}

		/*        private int bindSearchResults(bool forceRefresh = false)
				{
					return bindSearchResults(true, forceRefresh);
				}
		*/
		private void bindNav(int totalRecords)
		{
			int numberofPages = totalRecords / MyContent.ResultsPerPage;

			if (totalRecords % MyContent.ResultsPerPage > 0)
			{
				numberofPages++;
			}

			maxPage = numberofPages;

			int currentMax = (this.currentPage + 1) * MyContent.ResultsPerPage;
			int currentMin = (currentMax - MyContent.ResultsPerPage) + 1;

			//"next" should be enabled only if there are more records to show
			if (currentMax >= totalRecords)
			{
				currentMax = totalRecords;
				this.lnkNext.Enabled = false;
			}
			else
			{
				this.lnkNext.Enabled = true;
			}

			if (numberofPages == 1)
			{
				this.lnkFirst.Enabled = false;
				this.lnkLast.Enabled = false;
				this.lnkNext.Enabled = false;
				this.lnkPrevious.Enabled = false;
			}
			else
			{
				this.lnkFirst.Enabled = true;
				this.lnkLast.Enabled = true;
				this.lnkNext.Enabled = true;
				this.lnkPrevious.Enabled = true;
			}

			this.lblCount.Text = currentMin.ToString() + " - " + currentMax.ToString() + " of " + totalRecords.ToString();

			this.cmbPages.Items.Clear();
			for (int i = 1; i <= numberofPages; i++)
			{
				this.cmbPages.Items.Add(new ListItem(i.ToString(), i.ToString()));
			}
		}

		protected void rptSearch_ItemDataBound(object sender, RepeaterItemEventArgs e)
		{
			if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
			{
				DataRowView row = (DataRowView)e.Item.DataItem;
				string moreInfoUrl = Utility.GetBBISPageUrl(MyContent.MoreInfoPageID) + "{0}id=" + row["ID"];
				string sponsorUrl = Utility.GetBBISPageUrl(MyContent.SponsorPageID) + "{0}id=" + row["ID"];

				moreInfoUrl = moreInfoUrl.IndexOf("?") > -1 ? String.Format(moreInfoUrl, "&") : String.Format(moreInfoUrl, "?");
				sponsorUrl = sponsorUrl.IndexOf("?") > -1 ? String.Format(sponsorUrl, "&") : String.Format(sponsorUrl, "?");

				((LinkButton)e.Item.FindControl("lnkMoreInfo")).PostBackUrl = moreInfoUrl;
				((LinkButton)e.Item.FindControl("lnkSponsor")).PostBackUrl = sponsorUrl;

				((ImageButton)e.Item.FindControl("imgThumbnail")).ImageUrl = "ImageHandler.ashx?context=sponsorship&type=" + MyContent.ThumbnailNoteType + "&id=" + row["ID"];
				((ImageButton)e.Item.FindControl("imgThumbnail")).PostBackUrl = moreInfoUrl;

			}
		}

		protected void lnkNext_Click(object sender, EventArgs e)
		{
			if (currentPage < (maxPage - 1))
			{
				this.currentPage++;
			}

			this.bindSearchResults(false);
		}

		protected void lnkPrevious_Click(object sender, EventArgs e)
		{
			if (this.currentPage != 0)
			{
				this.currentPage--;
				this.bindSearchResults(false);
			}
		}

		protected void lnkFirst_Click(object sender, EventArgs e)
		{
			this.currentPage = 0;
			this.bindSearchResults(false);
		}

		protected void lnkLast_Click(object sender, EventArgs e)
		{
			var resultsCount = this.bindSearchResults();
			var resultsPerPage = MyContent.ResultsPerPage;
			var currPage = resultsCount / resultsPerPage;

			if (resultsCount % resultsPerPage == 0)
			{
				currPage -= 1;
			}

			this.currentPage = currPage;
			this.bindSearchResults(false);
		}

		protected void cmbPages_SelectedIndexChanged(object sender, EventArgs e)
		{
			this.currentPage = Convert.ToInt32(this.cmbPages.SelectedValue) - 1;
			this.bindSearchResults(true);
		}
	}
}
