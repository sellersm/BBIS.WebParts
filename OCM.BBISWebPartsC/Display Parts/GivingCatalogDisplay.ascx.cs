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
using OCM.BBISWebParts.Classes;

namespace OCM.BBISWebParts
{
    public partial class GivingCatalogDisplay : BBNCExtensions.Parts.CustomPartDisplayBase
    {
        int pos;
        PagedDataSource adSource;

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
            if (!IsPostBack)
            {
                try
                {
                    this.ViewState["vs"] = 0;

                    this.currentPage = 0;

                    this.bindSearchResults(true);  //force db refresh because filter values may have changed
                }
                catch (Exception ex)
                {
                    this.lblError.Text = ex.Message + "<br /><br />" + ex.StackTrace;
                    this.lblError.Visible = true;
                }
            }
            
            try
            {
                pnlNav.Visible = false;
                rptSearch.Visible = false;
                pos = (int)this.ViewState["vs"];
                DataListBind();
            }
            catch (Exception ex)
            {
                this.lblError.Text = ex.Message + "<br /><br />" + ex.StackTrace;
                this.lblError.Visible = true;
            }
        }

        public void ReBindDataList()
        {
        }

        public void DataListBind(DataTable dt)
        {
            if (dt.Rows.Count > 0)
            {
                adSource = new PagedDataSource();
                adSource.DataSource = dt.DefaultView;
                adSource.PageSize = MyContent.ResultsPerPage;
                adSource.AllowPaging = true;
                dataListGivingCatalog.DataSource = adSource;
                dataListGivingCatalog.DataBind();

                this.bindNav(dt.Rows.Count);
                this.pnlNav1.Visible = true;
                this.pnlNoResults.Visible = false;
            }
            else
            {
                this.pnlNav1.Visible = false;
                this.pnlNoResults.Visible = true;
            }
        }

        public void DataListBind()
        {
            try
            {
                DataTable dt = GetChildrenDataSet();
                DataListBind(dt);
            }
            catch (Exception ex)
            {
                this.lblError.Text = ex.Message + "<br /><br />" + ex.StackTrace;
                this.lblError.Visible = true;
            }

            //if (dt.Rows.Count > 0)
            //{
            //    adSource = new PagedDataSource();
            //    adSource.DataSource = dt.DefaultView;
            //    adSource.PageSize = MyContent.ResultsPerPage;
            //    adSource.AllowPaging = true;
            //    dataListGivingCatalog.DataSource = adSource;
            //    dataListGivingCatalog.DataBind();

            //    this.bindNav(dt.Rows.Count);
            //    this.pnlNav1.Visible = true;
            //    this.pnlNoResults.Visible = false;
            //}
            //else
            //{
            //    this.pnlNav1.Visible = false;
            //    this.pnlNoResults.Visible = true;
            //}
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
            DataTable dt = new DataTable();
            PagedDataSource page = new PagedDataSource();
            page.DataSource = dt.DefaultView;
            page.AllowPaging = true;
            page.PageSize = MyContent.ResultsPerPage;
            page.CurrentPageIndex = this.currentPage;

            using (SqlConnection con = new SqlConnection(Blackbaud.Web.Content.Core.Settings.ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand("USR_USP_GIVINGCATALOG_WEBSEARCH", con))
                {
                    cmd.Parameters.Add(new SqlParameter("@TYPE", MyContent.ThumbnailNoteType));
                    //cmd.Parameters.Add(new SqlParameter("@AGE0", ""));
                    //cmd.Parameters.Add(new SqlParameter("@AGE1", ""));
                    //cmd.Parameters.Add(new SqlParameter("@COUNTRY", ""));

                    cmd.CommandType = CommandType.StoredProcedure;

                    using (SqlDataAdapter dta = new SqlDataAdapter(cmd))
                    {
                        con.Open();
                        dta.Fill(dt);
                    }
                }
            }

            BBSession.Remove("GIVINGCATALOG");
            BBSession.Add("GIVINGCATALOG", dt);

            return dt;
        }

        private int bindSearchResults(bool fromEvent, bool forceRefresh = false)
        {
            DataTable dt = null;

            if (fromEvent && !forceRefresh)
            {
                dt = BBSession.Retrieve<DataTable>("GIVINGCATALOG");
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

        private int bindSearchResults(bool forceRefresh = false)
        {
            return bindSearchResults(false, forceRefresh);
        }

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
            btnCount.Text = currentMin.ToString() + " - " + currentMax.ToString() + " of " + totalRecords.ToString();

            this.cmbPages.Items.Clear();
            ddCmbPages.Items.Clear();
            for (int i = 1; i <= numberofPages; i++)
            {
                this.cmbPages.Items.Add(new ListItem(i.ToString(), i.ToString()));
                ddCmbPages.Items.Add(new ListItem(i.ToString(), i.ToString()));
            }
        }

        protected void rptSearch_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                DataRowView row = (DataRowView)e.Item.DataItem;
                string moreInfoUrl = Utility.GetBBISPageUrl(MyContent.MoreInfoPageID) + "{0}id=" + row["ID"];

                moreInfoUrl = moreInfoUrl.IndexOf("?") > -1 ? String.Format(moreInfoUrl, "&") : String.Format(moreInfoUrl, "?");

                ((LinkButton)e.Item.FindControl("lnkMoreInfo")).PostBackUrl = moreInfoUrl;

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

            this.bindSearchResults(true);
        }

        protected void lnkPrevious_Click(object sender, EventArgs e)
        {
            if (this.currentPage != 0)
            {
                this.currentPage--;
                this.bindSearchResults(true);
            }
        }

        protected void lnkFirst_Click(object sender, EventArgs e)
        {
            this.currentPage = 0;
            this.bindSearchResults(true);
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
            this.bindSearchResults(true);
        }

        protected void cmbPages_SelectedIndexChanged(object sender, EventArgs e)
        {
            this.currentPage = Convert.ToInt32(this.cmbPages.SelectedValue) - 1;
            this.bindSearchResults(true);
        }

        protected void ddCmbPages_SelectedIndexChanged(object sender, EventArgs e)
        {
            currentPage = Convert.ToInt32(ddCmbPages.SelectedValue);
            DataListBind();
        }

        protected void dataListGivingCatalog_ItemDataBound(object sender, DataListItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                DataRowView row = (DataRowView)e.Item.DataItem;
                string moreInfoUrl = Utility.GetBBISPageUrl(MyContent.MoreInfoPageID) + "{0}id=" + row["ID"];

                moreInfoUrl = moreInfoUrl.IndexOf("?") > -1 ? String.Format(moreInfoUrl, "&") : String.Format(moreInfoUrl, "?");

                ((Label)e.Item.FindControl("lblAmount")).Text = Decimal.Parse(((Label)e.Item.FindControl("lblAmount")).Text).ToString("c");
                ((LinkButton)e.Item.FindControl("lnkMoreInfo")).PostBackUrl = moreInfoUrl;

                ((ImageButton)e.Item.FindControl("imgThumbnail")).ImageUrl = "ImageHandler.ashx?context=givingcatalog&type=" + MyContent.ThumbnailNoteType + "&id=" + row["ID"];
                ((ImageButton)e.Item.FindControl("imgThumbnail")).PostBackUrl = moreInfoUrl;
            }
        }

        protected void btnfirst_Click(object sender, EventArgs e)
        {
            pos = 0;
            DataListBind();
        }

        protected void btnprevious_Click(object sender, EventArgs e)
        {
            pos = (int)this.ViewState["vs"];
            pos -= 1;
            this.ViewState["vs"] = pos; 
            DataListBind();
        }

        protected void btnnext_Click(object sender, EventArgs e)
        {
            pos = (int)this.ViewState["vs"];
            pos += 1;
            this.ViewState["vs"] = pos; 
            DataListBind();
        }

        protected void btnlast_Click(object sender, EventArgs e)
        {
            pos = adSource.PageCount - 1;
            DataListBind();
        }

    }
}