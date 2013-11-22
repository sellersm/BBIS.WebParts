﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using OCM.BBISWebParts.Classes;

namespace OCM.BBISWebParts
{
    public partial class SponsorshipPaymentCartDisplay : BBNCExtensions.Parts.CustomPartDisplayBase
    {
        private const string c_CARTDATA = "PaymentCartData";

        private SponsorshipPaymentCartOptions _myContent;
        private SponsorshipPaymentCartOptions MyContent
        {
            get
            {
                if (_myContent == null)
                {
                    _myContent = (SponsorshipPaymentCartOptions)this.Content.GetContent(typeof(SponsorshipPaymentCartOptions));

                    if (_myContent == null)
                    {
                        _myContent = new SponsorshipPaymentCartOptions();
                    }
                }

                return _myContent;
            }
        }

        private DataTable cartData
        {
            get
            {
                return (DataTable)Session[c_CARTDATA];                               
            }
            set
            {
                Session[c_CARTDATA] = value;
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
                    //if (Request.QueryString["id"] != null) this.addSponsorship();
                   
                    this.bindGrid();
                }
                catch (Exception ex)
                {
                    this.lblError.Text = ex.Message + "<br /><br />" + ex.StackTrace;
                    this.lblError.Visible = true;
                }
            }
        }

        //private void addSponsorship()
        //{
        //    // grab off session once
        //    DataTable dt = this.cartData;
        //    string id = Convert.ToString(Request.QueryString["id"]);

        //    // if the id is already in the cart, don't re-add it.
        //    DataRow[] check = dt.Select("id = '" + id + "'");
        //    if (check.Length == 0)
        //    {
        //        SqlConnection con = new SqlConnection(Blackbaud.Web.Content.Core.Settings.ConnectionString);
        //        string sql = "SELECT * FROM USR_V_QUERY_SPONSORSHIPOPPORTUNITY WHERE ID = @ID";

        //        SqlCommand cmd = new SqlCommand(sql, con);
        //        //cmd.CommandText = sql;
        //        cmd.Parameters.AddWithValue("@ID", id);
        //        cmd.CommandType = CommandType.Text;

        //        con.Open();
        //        SqlDataReader reader = cmd.ExecuteReader();
        //        while (reader.Read())
        //        {
        //            DataRow dr = dt.NewRow();

        //            dr["ID"] = reader["Id"];
        //            dr["Number"] = reader["CHILDNO"];
        //            dr["Name"] = reader["FULLNAME"];
        //            dr["Months"] = 1;
        //            dr["Amount"] = Utility.GetSponsorshipAmount();
        //            dr["Gender"] = reader["GENDER"];
        //            dr["CountryName"] = reader["CountryName"];
        //            dr["Birthdate"] = reader["BirthDate"];
        //            dt.Rows.Add(dr);
        //        }
        //        con.Close();

        //        // add data back to session
        //        this.cartData = dt;
        //    }
        //}

        private void bindGrid()
        {
            if (this.cartData != null)
            {
                this.gvCart.DataSource = this.cartData;
                this.gvCart.DataBind();
            }
    
            if ((this.cartData == null) || (this.cartData.Rows.Count == 0))
            {
                this.lblError.Text = "There are no sponsorship payments in the sponsorship payment cart.";
                this.lblError.Visible = true;
            }


        }

        protected void gvCart_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.Footer)
            {
                e.Row.Cells[2].Text = "Total:";
                e.Row.Cells[2].Style.Add("font-weight", "bold");
                e.Row.Cells[2].Attributes.Add("align", "right");
                e.Row.Cells[3].Text = this.total.ToString("c");
                e.Row.Cells[3].Style.Add("font-weight", "bold");
                e.Row.Cells[3].Attributes.Add("align", "right");

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
            Utility.RedirectToBBISPage(MyContent.PaymentFormPageID);
        }

		protected void lnkBack_Click(object sender, EventArgs e)
		{
			Utility.RedirectToBBISPage(MyContent.MySponsorshipsPageID);
		}
    }
}