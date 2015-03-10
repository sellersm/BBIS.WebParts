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

namespace OCM.BBISWebParts
{
    public partial class SponsorshipCartPartnerDisplay : BBNCExtensions.Parts.CustomPartDisplayBase
    {
		private SponsorshipCartPartnerOptions _myContent;
		private SponsorshipCartPartnerOptions MyContent
        {
            get
            {
                if (_myContent == null)
                {
					_myContent = (SponsorshipCartPartnerOptions)this.Content.GetContent(typeof(SponsorshipCartPartnerOptions));

                    if (_myContent == null)
                    {
						_myContent = new SponsorshipCartPartnerOptions();
                    }
                }

                return _myContent;
            }
        }

        private DataTable cartData
        {
            get
            {
                if (Session["CartData"] == null)
                {
                    DataTable dt = new DataTable();
                    dt.Columns.Add("Id", typeof(Guid));
                    dt.Columns.Add("Gender", typeof(string));
                    dt.Columns.Add("Number", typeof(string));
                    dt.Columns.Add("Name", typeof(string));
                    dt.Columns.Add("Months", typeof(int));
                    dt.Columns.Add("Amount", typeof(decimal));
                    dt.Columns.Add("CountryName", typeof(string));
                    dt.Columns.Add("BirthDate", typeof(string));
                    Session["CartData"] = dt;
                }

                return (DataTable)Session["CartData"];
            }
            set
            {
                Session["CartData"] = value;
            }
        }

        private decimal total
        {
            get
            {
                decimal results = 0;
                foreach (DataRow dr in this.cartData.Rows)
                {
                    results += Convert.ToInt32(dr["Months"]) * Convert.ToDecimal(dr["Amount"]);
                }
                return results;
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {
                    if (Request.QueryString["id"] != null) this.addSponsorship();
                    this.bindGrid();
                }
                catch (Exception ex)
                {
                    this.lblError.Text = ex.Message + "<br /><br />" + ex.StackTrace;
                    this.lblError.Visible = true;
                }
            }
        }

        private void addSponsorship()
        {
            // grab off session once
            DataTable dt = this.cartData;
            string id = Convert.ToString(Request.QueryString["id"]);

            // if the id is already in the cart, don't re-add it.
            DataRow[] check = dt.Select("id = '" + id + "'");
            if (check.Length == 0)
            {
				DataFormLoadRequest opportunityRequest = OCM.BBISWebParts.WebsiteChildInfoViewForm.CreateRequest(this.API.AppFxWebServiceProvider);
				opportunityRequest.FormID = new Guid("9860f33f-efeb-478b-a312-f7e1c3bd4244");
				opportunityRequest.RecordID = id;
				opportunityRequest.ContextRecordID = id;
				OCM.BBISWebParts.WebsiteChildInfoViewFormData opportunity = OCM.BBISWebParts.WebsiteChildInfoViewForm.LoadData(this.API.AppFxWebServiceProvider, opportunityRequest);

			    DataRow dr = dt.NewRow();
                dr["ID"] = id;
                dr["Number"] = opportunity.CHILDLOOKUPID;
                dr["Name"] = opportunity.CHILDNAME;
                dr["Months"] = 1;
				dr["Amount"] = Classes.Utility.GetSponsorshipAmount();
                dr["Gender"] = opportunity.GENDER;
                dr["CountryName"] = opportunity.COUNTRYNAME;
                dr["Birthdate"] = opportunity.BIRTHDATE;
                dt.Rows.Add(dr);

                // add data back to session
                this.cartData = dt;
            }
        }

        private void bindGrid()
        {
            this.gvCart.DataSource = this.cartData;
            this.gvCart.DataBind();
        }

        protected void gvCart_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.Footer)
            {
                e.Row.Cells[2].Text = "Total:";
                e.Row.Cells[2].Style.Add("font-weight", "bold");
                e.Row.Cells[2].Attributes.Add("align", "right");
                e.Row.Cells[3].Text = this.total.ToString("c");

            }
        }

        protected void gvCart_RowUpdated(object sender, GridViewUpdatedEventArgs e)
        {
            
        }

        protected void gvCart_RowEditing(object sender, GridViewEditEventArgs e)
        {
            this.gvCart.EditIndex = e.NewEditIndex;
            this.bindGrid();
        }

        protected void gvCart_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            DataTable dt = this.cartData;

            foreach (DataRow dr in dt.Rows)
            {
                if (dr["Id"].ToString() == e.Keys[0].ToString())
                {
                    dr["Months"] = e.NewValues["Months"];
                }
            }

            this.cartData = dt;
            this.gvCart.EditIndex = -1;
            this.bindGrid();

        }

        protected void gvCart_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            DataTable dt = this.cartData;

            for (int i=0;i < dt.Rows.Count;i++)
            {
                if (dt.Rows[i]["Id"].ToString() == e.Keys[0].ToString())
                {
                    dt.Rows.Remove(dt.Rows[i]);
                }
            }

            this.cartData = dt;
            this.bindGrid();
        }

        protected void btnContinue_Click(object sender, EventArgs e)
        {
			Classes.Utility.RedirectToBBISPage(MyContent.PaymentFormPageID);
        }
    }
}