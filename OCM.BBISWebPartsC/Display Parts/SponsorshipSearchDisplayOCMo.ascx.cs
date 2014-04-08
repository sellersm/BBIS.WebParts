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
using Blackbaud.Web.Content.Core;

namespace Blackbaud.CustomFx.ChildSponsorship.WebParts
{
    public partial class SponsorshipSearchDisplay : BBNCExtensions.Parts.CustomPartDisplayBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {
                    this.currentPage = 0;
                    this.bindSearchResults();
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

        public DataTable Children
        {
            //store children in session so that the random order is preserved across clicks of the Next/Previous button
            //think about forcing a refresh of this value after a timeout..?
            get
            {
                if (Session["CHILDREN"] == null)
                {
                    Session["CHILDREN"] = GetChildrenDataSet(Request.QueryString["Gender"], Request.QueryString["Age"],Request.QueryString["Country"],Request.QueryString["ChooseForMe"]);
                }
                return (Session["CHILDREN"] as DataTable);
            }
        }

        private DataTable GetChildrenDataSet(string gender, string age, string country, string chooseforme)
        {
            DataTable dt = new DataTable();
            PagedDataSource page = new PagedDataSource();
            page.DataSource = dt.DefaultView;
            page.AllowPaging = true;
            if (this.options != null) page.PageSize = this.options.ResultsPerPage;
            page.CurrentPageIndex = this.currentPage;

            SqlConnection con = new SqlConnection(Blackbaud.Web.Content.Core.Settings.ConnectionString);
            string sql = "SELECT * FROM USR_V_QUERY_SPONSORSHIPOPPORTUNITY ";

            bool didFirst = false;
            if (gender != null || age != null || country != null) sql = sql + " WHERE ";
            if (gender != null)
            {
                if (didFirst) sql = sql + "AND ";
                sql = sql + "GENDER = '" + gender + "' ";
                didFirst = true;
            }

            if (age != null)
            {
                if (didFirst) sql = sql + "AND ";
                if (age.IndexOf("-") > -1)
                {
                    string[] range = age.Split('-');
                    if (range.Length == 2)
                    {
                        sql = sql + "AGE >= " + range[0] + " AND AGE <= " + range[1] + " ";
                    }
                }
                else
                {
                    sql = sql + "AGE = " + age;
                }
                didFirst = true;
            }

            if (country != null)
            {
                if (didFirst) sql = sql + "AND ";
                sql = sql + "COUNTRYNAME = '" + country + "' ";
            }


            SqlDataAdapter cmd = new SqlDataAdapter(sql, con);
            cmd.SelectCommand.CommandType = CommandType.Text;


            con.Open();
            cmd.Fill(dt);
            con.Close();

            return dt;
        }

        private int bindSearchResults()
        {
            DataTable dt = Children;
            PagedDataSource page = new PagedDataSource();
            page.DataSource = dt.DefaultView;
            page.AllowPaging = true;
            if (this.options != null) page.PageSize = this.options.ResultsPerPage;
            page.CurrentPageIndex = this.currentPage;
            
            string chooseForMe = Request.QueryString["ChooseForMe"];
            if (chooseForMe != null)
            {
                if (chooseForMe.ToUpper() == "Y" && dt.Rows.Count > 0)
                {
                    string moreInfoUrl = this.options.MoreInfoPage + "{0}id=" + dt.Rows[0]["ID"];
                    moreInfoUrl = moreInfoUrl.IndexOf("?") > -1 ? String.Format(moreInfoUrl, "&") : String.Format(moreInfoUrl, "?");

                    Response.Redirect(moreInfoUrl);
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

        private void bindNav(int totalRecords)
        {
            if (this.options != null)
            {
                int numberofPages = totalRecords / this.options.ResultsPerPage;
                if (totalRecords % options.ResultsPerPage > 0)
                {
                    numberofPages++;
                }
                int currentMax = (this.currentPage + 1) * this.options.ResultsPerPage;
                int currentMin = (currentMax - this.options.ResultsPerPage) + 1;

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

                this.lblCount.Text = currentMin.ToString() + " - " + currentMax.ToString() + " of " + totalRecords.ToString();

                this.cmbPages.Items.Clear();
                for (int i = 1; i <= numberofPages; i++)
                {
                    this.cmbPages.Items.Add(new ListItem(i.ToString(), i.ToString()));
                }
            }
        }

        // used so we only have to load options once
        private SponsorshipSearchOptionsOCM _options;
        private SponsorshipSearchOptionsOCM options
        {
            get
            {
                if (this._options == null)
                {
                    this._options = (SponsorshipSearchOptionsOCM)this.Content.GetContent(typeof(SponsorshipSearchOptionsOCM));
                }

                return this._options;
            }
        }

        protected void rptSearch_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                if (this.options != null)
                {
                    DataRowView row = (DataRowView)e.Item.DataItem;
                    string moreInfoUrl = this.options.MoreInfoPage + "{0}id=" + row["ID"];
                    string sponsorUrl = this.options.SponsorPage + "{0}id=" + row["ID"];

                    moreInfoUrl = moreInfoUrl.IndexOf("?") > -1 ? String.Format(moreInfoUrl, "&") : String.Format(moreInfoUrl, "?");
                    sponsorUrl = sponsorUrl.IndexOf("?") > -1 ? String.Format(sponsorUrl, "&") : String.Format(sponsorUrl, "?");

                    ((LinkButton)e.Item.FindControl("lnkMoreInfo")).PostBackUrl = moreInfoUrl;
                    ((LinkButton)e.Item.FindControl("lnkSponsor")).PostBackUrl = sponsorUrl;

                    ((ImageButton)e.Item.FindControl("imgThumbnail")).ImageUrl = "ImageHandler.ashx?context=sponsorship&type=" + options.ThumbnailNoteType + "&id=" + row["ID"];
                    ((ImageButton)e.Item.FindControl("imgThumbnail")).PostBackUrl = moreInfoUrl;
                    
                }
            }
        }

        protected void lnkNext_Click(object sender, EventArgs e)
        {
            this.currentPage++;
            this.bindSearchResults();
        }

        protected void lnkPrevious_Click(object sender, EventArgs e)
        {
            if (this.currentPage != 0)
            {
                this.currentPage--;
                this.bindSearchResults();
            }
        }

        protected void lnkFirst_Click(object sender, EventArgs e)
        {
            this.currentPage = 0;
            this.bindSearchResults();
        }

        protected void lnkLast_Click(object sender, EventArgs e)
        {
            this.currentPage = (this.bindSearchResults() / this.options.ResultsPerPage);
            this.bindSearchResults();
        }

        protected void cmbPages_SelectedIndexChanged(object sender, EventArgs e)
        {
            this.currentPage = Convert.ToInt32(this.cmbPages.SelectedValue) - 1;
            this.bindSearchResults();
        }

    }
}
