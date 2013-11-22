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
    public partial class MySponsorshipsDisplay3 : BBNCExtensions.Parts.CustomPartDisplayBase
    {
        private MySponsorshipsOptions2 _myContent;
        private MySponsorshipsOptions2 MyContent
        {
            get
            {
                if (_myContent == null)
                {
                    _myContent = (MySponsorshipsOptions2)this.Content.GetContent(typeof(MySponsorshipsOptions2));

                    if (_myContent == null)
                    {
                        _myContent = new MySponsorshipsOptions2();
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
                    //Session.Remove("PaymentCartData");
                }
            }
        }

        private void bindSponsorships()
        {
            DataTable dt = new DataTable();


            string sql = @"
                SELECT
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
                    left join CONSTITUENT C on s.CONSTITUENTID = c.ID
                WHERE
	                s.CONSTITUENTID = @Id
	                AND s.STATUS = 'Active'";

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

            //dt.Columns.Add("Child No");
            //dt.Columns.Add("Child Name");
            //dt.Columns.Add("Age");
            //dt.Columns.Add("Birthdate");
            
            //DataListLoadRequest request = Blackbaud.AppFx.Sponsorship.Catalog.WebApiClient.DataLists.Constituent.SponsorshipDataList.CreateRequest(this.API.AppFxWebServiceProvider);
            //request.DataListID = new Guid("b87f9b24-91e9-40c2-b54a-f6fbcc09f6f0");
            //request.ContextRecordID = "7599754F-48F1-4CF0-95C5-4650B78366A3";
            //SponsorshipDataListRow[] rows = SponsorshipDataList.GetRows(this.API.AppFxWebServiceProvider, request);

            //foreach (SponsorshipDataListRow row in rows)
            //{
            //    DataFormLoadRequest opportunityRequest = SponsorshipOpportunityDetailViewForm.CreateRequest(this.API.AppFxWebServiceProvider);
            //    opportunityRequest.FormID = new Guid("20a1c198-6745-49f0-984d-3751558113f2");
            //    opportunityRequest.RecordID = row.SPONSORSHIPOPPORTUNITYID.ToString();
            //    //opportunityRequest.ContextRecordID = row.SPONSORSHIPOPPORTUNITYID.ToString();
            //    SponsorshipOpportunityDetailViewFormData opportunity = SponsorshipOpportunityDetailViewForm.LoadData(this.API.AppFxWebServiceProvider, opportunityRequest);
                
            //    DataFormLoadRequest nameRequest = SponsorshipOpportunityName.CreateRequest(this.API.AppFxWebServiceProvider);
            //    nameRequest.FormID = new Guid("0fec4381-a657-4627-a65b-8afab11af9c8");
            //    nameRequest.RecordID = row.SPONSORSHIPOPPORTUNITYID.ToString();
            //    SponsorshipOpportunityNameData nameData = SponsorshipOpportunityName.LoadData(this.API.AppFxWebServiceProvider, nameRequest);

            //    DataRow dr = dt.NewRow();
            //    dr["Child No"] = opportunity.LOOKUPID;
            //    dr["Child Name"] = nameData.SPONSORSHIPOPPORTUNITYNAME;
            //    dr["Age"] = opportunity.AGE;
            //    dr["Birthdate"] = opportunity.BIRTHDATE.Month + "/" + opportunity.BIRTHDATE.Day + "/" + opportunity.BIRTHDATE.Year;
            //    dt.Rows.Add(dr);
            //}

            this.gvSponsorships.DataSource = dt;
            this.gvSponsorships.DataBind();
        }

        protected void gvSponsorships_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {                
                DataRowView row = (DataRowView)e.Row.DataItem;                    

                string url = Utility.GetBBISPageUrl(MyContent.MoreInfoPageID);

                string moreInfoUrl = url + "{0}id=" + row["ID"];
                moreInfoUrl = moreInfoUrl.IndexOf("?") > -1 ? String.Format(moreInfoUrl, "&") : String.Format(moreInfoUrl, "?");
                //moreInfoUrl = moreInfoUrl + "&mysponsorship=true";

                ((LinkButton)e.Row.FindControl("lnkNo")).PostBackUrl = moreInfoUrl;
                ((LinkButton)e.Row.FindControl("lnkName")).PostBackUrl = moreInfoUrl;
                ((ImageButton)e.Row.FindControl("imgThumbnail")).ImageUrl = "ImageHandler.ashx?context=sponsorship&type=" + MyContent.ThumbnailNoteType + "&id=" + row["Id"];
                ((ImageButton)e.Row.FindControl("imgThumbnail")).PostBackUrl = moreInfoUrl;

				if (e.Row.FindControl("lnkWriteLetter") != null)
                {
					var lnkWriteLetter = (HyperLink)e.Row.FindControl("lnkWriteLetter");

                    EncryptedQueryString args = new EncryptedQueryString();
                    args["CHILDID"] = row["Child No"].ToString();
                    args["CHILDNAME"] = row["Child Name"].ToString();
                    args["SPONSORID"] = row["SPONSORID"].ToString(); //need to get this
                    args["SPONSORNAME"] = row["SPONSORNAME"].ToString(); //need to get this

                    string emailUrl = string.Concat(Utility.GetBBISPageUrl(MyContent.EmailPageID), string.Format("?args={0}", args.ToString()));

					lnkWriteLetter.NavigateUrl = emailUrl;
                }
            }
        }

        protected void gvSponsorships_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "ViewPayments")
            {
                //LinkButton lnkBtn = (LinkButton)e.CommandSource;    
				//ImageButton lnkBtn = (ImageButton)e.CommandSource;
                //ImageButton childThumbnail = (ImageButton)row.FindControl("imgThumbnail");
				int index = Convert.ToInt32(e.CommandArgument);
				GridViewRow row = this.gvSponsorships.Rows[index];
				this.bindPayments((this.gvSponsorships.DataKeys[row.RowIndex]["RevenueId"].ToString() + "|" + ((Label)row.FindControl("lblChildID")).Text), ((LinkButton)row.FindControl("lnkName")).Text, ((ImageButton)row.FindControl("imgThumbnail")).ImageUrl);
            }
            else if (e.CommandName == "MakeSinglePayment")
            {
                //this.mvMain.SetActiveView(this.viewPayAmounts);
               
                DataTable dt = cartData;
     
                int index = Convert.ToInt32(e.CommandArgument);
                GridViewRow row = this.gvSponsorships.Rows[index];
                DataRow dr = dt.Rows.Find (this.gvSponsorships.DataKeys[row.RowIndex]["RevenueId"]);
                if (dr != null)
                {
                    dr["Months"] = (int)dr["Months"] + 1;
                }
                else
                {
                    dr = dt.NewRow();
                    dr["Id"] = this.gvSponsorships.DataKeys[row.RowIndex]["RevenueId"];
                    dr["Months"] = 1;
                    dr["Number"] = ((LinkButton)row.FindControl("lnkNo")).Text;
                    dr["Name"] = ((LinkButton)row.FindControl("lnkName")).Text;
                    dr["Amount"] = Convert.ToDecimal(((Label)row.FindControl("lblMonthlyAmount")).Text);


                    dt.Rows.Add(dr);
                }
                cartData = dt;
                //bindPaymentCartGrid();

                Session["PaymentCartData"] = dt;

                Utility.RedirectToBBISPage(MyContent.PaymentCartPageID);
                //this.mvMain.SetActiveView(this.viewPayAmounts);

                //ViewState["GiftId"] = e.CommandArgument.ToString();
                //this.populateYears();
                //this.mvMain.SetActiveView(this.viewPay);
                //this.txtAmount.Text = Utility.GetSponsorshipAmount().ToString("c").Replace("$", "").Replace(",", "");
			}
			else if (e.CommandName == "WriteLetter")
            {
				int index = Convert.ToInt32(e.CommandArgument);
				GridViewRow row = this.gvSponsorships.Rows[index];
				HttpContext.Current.Response.Redirect(((HyperLink)row.FindControl("lnkWriteLetter")).NavigateUrl);				
			}
        }


        private void bindPayments(string id, string childName, string imageURL)
        {
            this.mvMain.SetActiveView(this.viewPayments);
            DataListLoadRequest request = RecurringGiftInstallmentHistoryDataList.CreateRequest(this.API.AppFxWebServiceProvider);
            request.DataListID = new Guid("384fedc7-25b7-4cde-873c-dc26f48178ae"); //"4d326172-d5d5-4966-a91c-0c0d2b02b155");
            request.ContextRecordID = id;
			OCM.BBISWebParts.WebsiteSponsorshipPaymentsDataListRow[] rows = OCM.BBISWebParts.WebsiteSponsorshipPaymentsDataList.GetRows(this.API.AppFxWebServiceProvider, request);
			//RecurringGiftInstallmentHistoryDataListRow[] rows = RecurringGiftInstallmentHistoryDataList.GetRows(this.API.AppFxWebServiceProvider, request);

            lblViewPaymentsFor.Text = "Viewing payments for " + childName;

            imgPayments.ImageUrl = imageURL;

            DataTable dt = new DataTable();
            dt.Columns.Add("DATE");
            dt.Columns.Add("AMOUNT");
            dt.Columns.Add("ACTIVITYTYPE");
            dt.Columns.Add("DATESORT");

			foreach (OCM.BBISWebParts.WebsiteSponsorshipPaymentsDataListRow row in rows)
            //foreach (RecurringGiftInstallmentHistoryDataListRow row in rows)
            {
                if (row.ACTIVITYTYPE != "Payment") continue;

                DataRow dr = dt.NewRow();

                dr["DATE"] = row.DATE.Value.ToString ("MMMM dd, yyyy");
                dr["AMOUNT"] = row.AMOUNT.ToString("c");
                dr["ACTIVITYTYPE"] = row.ACTIVITYTYPE;
                //dr["DATESORT"] = row.DATE.Value.ToString ("yyyyMMdd");

                dt.Rows.Add(dr);
            }
            
            DataView dv = dt.DefaultView;
            //dv.Sort = "DATESORT desc";
            this.gvPayments.DataSource = dv.ToTable();
            this.gvPayments.DataBind();
            //this.gvPayments.Sort("DATE", SortDirection.Descending);
        }


        private DataTable cartData
        {
            get
            {
                if (Session["PaymentCartData"] == null)
                {
                    DataTable dt = new DataTable();
                    dt.Columns.Add("Id", typeof(Guid));
                    dt.Columns.Add("Number", typeof(string));
                    dt.Columns.Add("Name", typeof(string));
                    dt.Columns.Add("Months", typeof(int));
                    dt.Columns.Add("Amount", typeof(decimal));
                    dt.PrimaryKey = new DataColumn[]{dt.Columns["Id"]};
                    Session["PaymentCartData"] = dt;
                }

                return (DataTable)Session["PaymentCartData"];
            }
            set
            {
                Session["PaymentCartData"] = value;
            }
        }

        //private decimal total
        //{
        //    get
        //    {
        //        decimal results = 0;
        //        foreach (DataRow dr in this.cartData.Rows)
        //        {
        //            results += Convert.ToInt32(dr["Months"]) * Convert.ToDecimal(dr["Amount"]);
        //        }
        //        return results;
        //    }
        //}


        protected void lnkMakePayment_Click(object sender, EventArgs e)
        {
            DataTable dt = cartData;
            int count = 0;
            foreach (GridViewRow row in this.gvSponsorships.Rows)
            {
                bool isChecked = ((CheckBox)row.FindControl("chkPayment")).Checked;
                if (isChecked)
                {
                    DataRow dr = dt.Rows.Find(this.gvSponsorships.DataKeys[row.RowIndex]["RevenueId"]);
                    if (dr != null)
                    {
                        dr["Months"] = (int)dr["Months"] + 1;
                    }
                    else
                    {
                        dr = dt.NewRow();
                        dr["Id"] = this.gvSponsorships.DataKeys[row.RowIndex]["RevenueId"];
                        dr["Months"] = 1;
                        dr["Number"] = ((LinkButton)row.FindControl("lnkNo")).Text;
                        dr["Name"] = ((LinkButton)row.FindControl("lnkName")).Text;
                        dr["Amount"] = Convert.ToDecimal(((Label)row.FindControl("lblMonthlyAmount")).Text);

                        dt.Rows.Add(dr);
                    }

                    count++;
                }
            }

            if (count > 0)
            {
                cartData = dt;
                Session["PaymentCartData"] = dt;
                Utility.RedirectToBBISPage(MyContent.PaymentCartPageID);
            }


            
        }       

        protected void lnkBack_Click(object sender, EventArgs e)
        {
            this.mvMain.SetActiveView(this.viewSponsorships);
        }

       
   
  

    }
}