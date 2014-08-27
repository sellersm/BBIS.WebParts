using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net;
using System.Web.Services.Protocols;

using Blackbaud.AppFx.XmlTypes;
using Blackbaud.AppFx.WebAPI;
using Blackbaud.AppFx.WebAPI.ServiceProxy;
using Blackbaud.Web.Content.Core;
using OCM.BBISWebParts.Classes;


namespace OCM.BBISWebParts
{
    public partial class SponsorshipSearchDisplayPFM : BBNCExtensions.Parts.CustomPartDisplayBase
    {
        private string AGE = string.Empty;
        private string GENDER = string.Empty;
        private string COUNTRY = string.Empty;
        private string CHOOSEFORME = string.Empty;
        private string PARTNERLOOKUPID = string.Empty;
        private Blackbaud.AppFx.WebAPI.ServiceProxy.ClientAppInfoHeader _clientAppInfoHeader;
        private Blackbaud.AppFx.WebAPI.ServiceProxy.AppFxWebService _appFx;
        private System.Net.ICredentials _systemCredential;
        private Blackbaud.AppFx.WebAPI.ServiceProxy.DataListLoadRequest dlLoadRequest;
        private Blackbaud.AppFx.WebAPI.ServiceProxy.DataListLoadReply dlLoadReply;
        private Blackbaud.AppFx.XmlTypes.DataForms.DataFormFieldValueSet dfFieldValueSet;
        private Blackbaud.AppFx.XmlTypes.DataForms.DataFormItem dfItem;


        private SponsorshipSearchOptionsOcmPartners _myContent;
        private SponsorshipSearchOptionsOcmPartners MyContent
        {
            get
            {
                if (_myContent == null)
                {
                    _myContent = (SponsorshipSearchOptionsOcmPartners)this.Content.GetContent(typeof(SponsorshipSearchOptionsOcmPartners));

                    if (_myContent == null)
                    {
                        _myContent = new SponsorshipSearchOptionsOcmPartners();
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
                    //Initialize the credentials
                    InitializeServiceProvider();
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

        private void InitializeServiceProvider()
        {
            //AppFxWebServiceProvider serviceProvider = new AppFxWebServiceProvider("http://localhost/CRM21195/appfxwebservice.asmx", "BBInfinity", "SponsorshipSearchDisplayPFM");
            //serviceProvider.Credentials = System.Net.CredentialCache.DefaultCredentials;

            _appFx = new AppFxWebService();
            _appFx.Url = "http://localhost/CRM21195/appfxwebservice.asmx";
            _appFx.UseDefaultCredentials = true; //if do it on dev/prod, then need to create a network credential as below
            //_appFx.Credentials = GetNetworkCredtentials();

            _clientAppInfoHeader = new ClientAppInfoHeader();
            _clientAppInfoHeader.ClientAppName = "SponsorshipSearchDisplayPFM";
            _clientAppInfoHeader.REDatabaseToUse = "BBInfinity";
        }

        private ICredentials GetNetworkCredentials()
        {
            return new NetworkCredential("TestWebService21195D", "Password1");
        }


        private void GetChildrenDataList()
        {
            dlLoadRequest = new Blackbaud.AppFx.WebAPI.ServiceProxy.DataListLoadRequest();
            dlLoadReply = new Blackbaud.AppFx.WebAPI.ServiceProxy.DataListLoadReply();
            dfFieldValueSet = new Blackbaud.AppFx.XmlTypes.DataForms.DataFormFieldValueSet();
            dfItem = new Blackbaud.AppFx.XmlTypes.DataForms.DataFormItem();

            dlLoadRequest.ClientAppInfo = _clientAppInfoHeader;
            dlLoadRequest.DataListID = new Guid("e2bc1656-53ab-4d5c-9eb4-5b24b0b5ac1f");
            dlLoadRequest.ContextRecordID = ""; //Partner/Constituent ID

            dfItem.Values = dfFieldValueSet;

            dlLoadRequest.MaxRows = 500;
            dlLoadRequest.IncludeMetaData = true;

            try
            {
                dlLoadReply = _appFx.DataListLoad(dlLoadRequest);
                DisplayDataListRepliedRowsInDatagridView(dlLoadRequest);
            }
            catch (SoapException exSoap)
            {
                string msgErr = "";
                if (_appFx.ResponseErrorHeaderValue != null)
                    msgErr = exSoap.Message;
            }
            catch (Exception ex)
            {
                string msgErr = ex.Message;
            }
        }

        private void DisplayDataListRepliedRowsInDatagridView(DataListLoadRequest dlLoadRequest)
        {
            if (dlLoadReply.Rows.Length > 0)
            {

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
            }

            if (Request.QueryString["COUNTRY"] != null)
            {
                COUNTRY = Request.QueryString["COUNTRY"].ToString();
            }

            if (Request.QueryString["CHOOSEFORME"] != null)
            {
                CHOOSEFORME = Request.QueryString["CHOOSEFORME"].ToString();
            }

            if (!String.IsNullOrEmpty(MyContent.PartnerLookupID))
                PARTNERLOOKUPID = MyContent.PartnerLookupID;

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
                string[] range = AGE.Split('-');
                age0 = range[0];
                age1 = range[1];
            }


            using (SqlConnection con = new SqlConnection(Blackbaud.Web.Content.Core.Settings.ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand("USR_USP_CHILDREN_WEBSEARCH_BY_PARTNERLOOKUPID", con))
                {
                    cmd.Parameters.Add(new SqlParameter("@GENDER", GENDER));
                    cmd.Parameters.Add(new SqlParameter("@AGE0", age0));
                    cmd.Parameters.Add(new SqlParameter("@AGE1", age1));
                    cmd.Parameters.Add(new SqlParameter("@COUNTRY", COUNTRY));
                    cmd.Parameters.Add(new SqlParameter("@PARTNERLOOKUPID", PARTNERLOOKUPID));

                    cmd.CommandType = CommandType.StoredProcedure;

                    using (SqlDataAdapter dta = new SqlDataAdapter(cmd))
                    {
                        con.Open();
                        dta.Fill(dt);
                    }
                }
            }

            BBSession.Remove("CHILDREN");
            BBSession.Add("CHILDREN", dt);

            return dt;
        }

        private int bindSearchResults(bool fromEvent, bool forceRefresh = false)
        {
            DataTable dt = null;

            if (fromEvent && !forceRefresh)
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
    }
}