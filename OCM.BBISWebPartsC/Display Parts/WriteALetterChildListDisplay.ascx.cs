using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Text;

using Blackbaud.AppFx.WebAPI;
using Blackbaud.AppFx.WebAPI.ServiceProxy;
using Blackbaud.AppFx.Sponsorship.Catalog.WebApiClient.DataLists.Constituent;
using Blackbaud.AppFx.Fundraising.Catalog.WebApiClient.DataLists.Constituent;
using Blackbaud.AppFx.Sponsorship.Catalog.WebApiClient.ViewForms.Sponsorship;
using Blackbaud.AppFx.Fundraising.Catalog.V1_1.WebApiClient.ViewForms.Revenue;
using Blackbaud.AppFx.Fundraising.Catalog.WebApiClient.DataLists.Revenue;
using Blackbaud.AppFx.Fundraising.Catalog.WebApiClient.AddForms.Revenue;
using Blackbaud.AppFx.Fundraising.Catalog.WebApiClient.ViewForms.Revenue;
using OCM.BBISWebParts.Classes;

namespace OCM.BBISWebParts
{
    public partial class WriteALetterChildListDisplay : BBNCExtensions.Parts.CustomPartDisplayBase
    {
		private WriteALetterChildListOptions _myContent;
		private WriteALetterChildListOptions MyContent
        {
            get
            {
                if (_myContent == null)
                {
					_myContent = (WriteALetterChildListOptions)this.Content.GetContent(typeof(WriteALetterChildListOptions));

                    if (_myContent == null)
                    {
						_myContent = new WriteALetterChildListOptions();
                    }
                }

                return _myContent;
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (this.API.Users.CurrentUser.BackOfficeGuid != Guid.Empty)
                {
                    this.bindSponsorships();
                }
            }
        }

        private void bindSponsorships()
        {
            DataTable dt = new DataTable();


			string sql = @"
                SELECT DISTINCT					
                    so.ID,
					sc.ID as ChildID,
                    so.LOOKUPID AS 'Child No',
                    sc.FIRSTNAME + ' ' + sc.LASTNAME AS 'Child Name',
                    dbo.UFN_DATE_FROMFUZZYDATE(sc.BIRTHDATE) AS 'Birthdate',
                    sc.AGE AS 'Age',
                    r.ID AS 'RevenueId',
                    c.NAME as 'SPONSORNAME',
                    c.LOOKUPID as 'SPONSORID',
                  case 
						when r_sch.FREQUENCYCODE = 0 then r.AMOUNT / 12 --annually
						when r_sch.FREQUENCYCODE = 1 then r.AMOUNT / 6 --6mo
						when r_sch.FREQUENCYCODE = 2 then r.AMOUNT / 3 --qtr
						when r_sch.FREQUENCYCODE = 3 then r.AMOUNT -- 'mo'
						else r.AMOUNT
					end as MonthlyAmount
                FROM
                    SPONSORSHIP s
                    INNER JOIN SPONSORSHIPOPPORTUNITY so ON s.SPONSORSHIPOPPORTUNITYID = so.ID
                    INNER JOIN SPONSORSHIPOPPORTUNITYCHILD sc ON so.ID = sc.ID
                    INNER JOIN REVENUESPLIT rs ON s.REVENUESPLITID = rs.ID
                    INNER JOIN REVENUE r ON rs.REVENUEID = r.ID
                    INNER JOIN REVENUESCHEDULE r_sch on  r.id = r_sch.id
                    INNER JOIN CONSTITUENT c on s.CONSTITUENTID = c.ID
                WHERE
	                c.ID = @Id
	                AND s.STATUS = 'Active'
	            ORDER BY [Child Name]";

            using(SqlConnection con = new SqlConnection(Blackbaud.Web.Content.Core.Settings.ConnectionString))
            {
                using(SqlDataAdapter cmd = new SqlDataAdapter(sql, con))
                {
                    cmd.SelectCommand.CommandType = CommandType.Text;
                    if (this.API.Users.CurrentUser.BackOfficeGuid != Guid.Empty)
                    {
                        cmd.SelectCommand.Parameters.AddWithValue("@Id", this.API.Users.CurrentUser.BackOfficeGuid.ToString());
                    }
                    else
                    {
                        cmd.SelectCommand.Parameters.AddWithValue("@Id", "354E31CD-CD89-4078-9689-95A4CCCF310B"); //"83D3F0A9-9645-4DCA-87A5-CC16AB1D5B4F"); // Why is this here?
                    }

                    con.Open();
                    cmd.Fill(dt);
                }
            }

            this.gvSponsorships.DataSource = dt;
            this.gvSponsorships.DataBind();
        }

        protected void gvSponsorships_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {                
                DataRowView row = (DataRowView)e.Row.DataItem;                    

                string url = Utility.GetBBISPageUrl(MyContent.EmailPageID);


				EncryptedQueryString args = new EncryptedQueryString();
				args["CHILDID"] = row["Child No"].ToString();
				args["CHILDNAME"] = row["Child Name"].ToString();
				args["SPONSORID"] = row["SPONSORID"].ToString(); //need to get this
				args["SPONSORNAME"] = row["SPONSORNAME"].ToString(); //need to get this

				string emailUrl = string.Concat(Utility.GetBBISPageUrl(MyContent.EmailPageID), string.Format("?args={0}", args.ToString()));

				((LinkButton)e.Row.FindControl("lnkNo")).PostBackUrl = emailUrl;
				((LinkButton)e.Row.FindControl("lnkName")).PostBackUrl = emailUrl;
                ((ImageButton)e.Row.FindControl("imgThumbnail")).ImageUrl = "ImageHandler.ashx?context=sponsorship&type=" + MyContent.ThumbnailNoteType + "&id=" + row["Id"];
                string temp = ((ImageButton)e.Row.FindControl("imgThumbnail")).ImageUrl;
				((ImageButton)e.Row.FindControl("imgThumbnail")).PostBackUrl = emailUrl;    
                
            }
        }
        protected void gvSponsorships_RowCommand(object sender, GridViewCommandEventArgs e)
        {
		}
    }
}