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
    public partial class MySponsorshipsDisplay2 : BBNCExtensions.Parts.CustomPartDisplayBase
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
                //if (this.API.Users.CurrentUser.BackOfficeGuid != Guid.Empty)
                //{
                    this.bindSponsorships();
                    //Session.Remove("PaymentCartData");
                //}
            }
        }

        private void bindSponsorships()
        {
            DataTable dt = new DataTable();


            string sql = @"
                SELECT
                    so.ID,
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
                moreInfoUrl = moreInfoUrl + "&sponsored=y";

                ((LinkButton)e.Row.FindControl("lnkNo")).PostBackUrl = moreInfoUrl;
                ((LinkButton)e.Row.FindControl("lnkName")).PostBackUrl = moreInfoUrl;
                ((ImageButton)e.Row.FindControl("imgThumbnail")).ImageUrl = "ImageHandler.ashx?context=sponsorship&type=" + MyContent.ThumbnailNoteType + "&id=" + row["Id"];
                ((ImageButton)e.Row.FindControl("imgThumbnail")).PostBackUrl = moreInfoUrl;    
                
                if(e.Row.FindControl("lnkEmail") != null)
                {
                    var lnkEmail = (HyperLink)e.Row.FindControl("lnkEmail");

                    EncryptedQueryString args = new EncryptedQueryString();
                    args["CHILDID"] = row["Child No"].ToString();
                    args["CHILDNAME"] = row["Child Name"].ToString();
                    args["SPONSORID"] = row["SPONSORID"].ToString(); //need to get this
                    args["SPONSORNAME"] = row["SPONSORNAME"].ToString(); //need to get this

                    string emailUrl = string.Concat(Utility.GetBBISPageUrl(MyContent.EmailPageID), string.Format("?args={0}", args.ToString()));

                    lnkEmail.NavigateUrl = emailUrl;
                }
            }
        }

        protected void gvSponsorships_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "ViewPayments")
            {
                this.bindPayments(e.CommandArgument.ToString());
            }
            else if (e.CommandName == "MakeSinglePayment")
            {
                this.mvMain.SetActiveView(this.viewPayAmounts);
               
                DataTable dt = cartData;
     

                int index = Convert.ToInt32(e.CommandArgument);
                GridViewRow row = this.gvSponsorships.Rows[index];
                DataRow dr = dt.NewRow();
                dr["Id"] = this.gvSponsorships.DataKeys[row.RowIndex]["RevenueId"];
                dr["Months"] = 1;
                dr["Number"] = ((LinkButton)row.FindControl("lnkNo")).Text;
                dr["Name"] = ((LinkButton)row.FindControl("lnkName")).Text;
                dr["Amount"] = Convert.ToDecimal(((Label)row.FindControl("lblMonthlyAmount")).Text);

                dt.Rows.Add(dr);

                cartData = dt;
                bindPaymentCartGrid();

      
                this.mvMain.SetActiveView(this.viewPayAmounts);

                //ViewState["GiftId"] = e.CommandArgument.ToString();
                //this.populateYears();
                //this.mvMain.SetActiveView(this.viewPay);
                //this.txtAmount.Text = Utility.GetSponsorshipAmount().ToString("c").Replace("$", "").Replace(",", "");
            }
        }
    

        private void bindPayments(string id)
        {
            this.mvMain.SetActiveView(this.viewPayments);            
            DataListLoadRequest request = RecurringGiftInstallmentHistoryDataList.CreateRequest(this.API.AppFxWebServiceProvider);
            request.DataListID = new Guid("4d326172-d5d5-4966-a91c-0c0d2b02b155");
            request.ContextRecordID = id;
            RecurringGiftInstallmentHistoryDataListRow[] rows = RecurringGiftInstallmentHistoryDataList.GetRows(this.API.AppFxWebServiceProvider, request);

            DataTable dt = new DataTable();
            dt.Columns.Add("ACTIVITYTYPE");
            dt.Columns.Add("AMOUNT");
            dt.Columns.Add("BALANCE");
            dt.Columns.Add("DATE");

            foreach (RecurringGiftInstallmentHistoryDataListRow row in rows)
            {
                if (row.ACTIVITYTYPE == "Installment") continue;

                DataRow dr = dt.NewRow();

                dr["ACTIVITYTYPE"] = row.ACTIVITYTYPE;
                dr["AMOUNT"] = row.AMOUNT.ToString("c");
                dr["BALANCE"] = row.BALANCE;
                dr["DATE"] = row.DATE.Value.ToShortDateString();

                dt.Rows.Add(dr);
            }

            this.gvPayments.DataSource = dt;
            this.gvPayments.DataBind();
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
                    Session["PaymentCartData"] = dt;
                }

                return (DataTable)Session["PaymentCartData"];
            }
            set
            {
                Session["PaymentCartData"] = value;
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

        protected void lnkMakePayment_Click(object sender, EventArgs e)
        {
            //            this.mvMain.SetActiveView(this.viewPay);
            this.mvMain.SetActiveView(this.viewPayAmounts);


            DataTable dt = cartData;


            //this.populateYears();
            //List<string> selectedSponsorships = new List<string>();
            //decimal totalPayments = 0;

            foreach (GridViewRow row in this.gvSponsorships.Rows)
            {
                bool isChecked = ((CheckBox)row.FindControl("chkPayment")).Checked;
                if (isChecked)
                {
                    DataRow dr = dt.NewRow();
                    dr["Id"] = this.gvSponsorships.DataKeys[row.RowIndex]["RevenueId"];
                    dr["Months"] = 1;
                    dr["Number"] = ((LinkButton)row.FindControl("lnkNo")).Text;
                    dr["Name"] = ((LinkButton)row.FindControl("lnkName")).Text;
                    dr["Amount"] = Convert.ToDecimal(((Label)row.FindControl("lblMonthlyAmount")).Text);

                    dt.Rows.Add(dr);

                    //string id = this.gvSponsorships.DataKeys[row.RowIndex]["RevenueId"].ToString();
                    //selectedSponsorships.Add(id);
                    //count++;
                }
            }

            cartData = dt;
            bindPaymentCartGrid();

            //totalPayments = count * Utility.GetSponsorshipAmount();
            //this.txtAmount.Text = totalPayments.ToString("c").Replace("$","").Replace(",","");

            //this.lblSummary.Visible = true;
            //this.lblSummary.Text = "<br /><br /><b>Total payments for selected sponsorships is: " + totalPayments.ToString("c") + "<b><br />";
            //ViewState["selectedSponsorships"] = selectedSponsorships;
        }

        private void bindPaymentCartGrid()
        {
            //this.gvCart.DataSource = this.cartData;
            //this.gvCart.DataBind();
        }

        //protected void gvCart_RowDataBound(object sender, GridViewRowEventArgs e)
        //{
        //    if (e.Row.RowType == DataControlRowType.Footer)
        //    {
        //        e.Row.Cells[2].Text = "Total:";
        //        e.Row.Cells[2].Style.Add("font-weight", "bold");
        //        e.Row.Cells[2].Attributes.Add("align", "right");
        //        e.Row.Cells[3].Text = this.total.ToString("c");

        //    }
        //}

        //protected void gvCart_RowUpdated(object sender, GridViewUpdatedEventArgs e)
        //{

        //}

        //protected void gvCart_RowEditing(object sender, GridViewEditEventArgs e)
        //{
        //    this.gvCart.EditIndex = e.NewEditIndex;
        //    this.bindPaymentCartGrid();
        //}

        //protected void gvCart_RowUpdating(object sender, GridViewUpdateEventArgs e)
        //{
        //    DataTable dt = this.cartData;

        //    foreach (DataRow dr in dt.Rows)
        //    {
        //        if (dr["Id"].ToString() == e.Keys[0].ToString())
        //        {
        //            dr["Months"] = e.NewValues["Months"];
        //        }
        //    }

        //    this.cartData = dt;
        //    this.gvCart.EditIndex = -1;
        //    this.bindPaymentCartGrid();

        //}

        //protected void gvCart_RowDeleting(object sender, GridViewDeleteEventArgs e)
        //{
        //    DataTable dt = this.cartData;

        //    for (int i = 0; i < dt.Rows.Count; i++)
        //    {
        //        if (dt.Rows[i]["Id"].ToString() == e.Keys[0].ToString())
        //        {
        //            dt.Rows.Remove(dt.Rows[i]);
        //        }
        //    }

        //    this.cartData = dt;
        //    this.bindPaymentCartGrid();
        //}

        protected void btnContinue_Click(object sender, EventArgs e)
        {
            this.mvMain.SetActiveView(this.viewPay);
            this.lblAmount.Text = total.ToString("c");
            this.populateYears();
        }

    

        private void populateYears()
        {
            this.cmbCcExpYear.Items.Clear();
            this.cmbCcExpYear.Items.Add(new ListItem("-- Year --", ""));
            for (int i = 0; i < 15; i++)
            {
                int year = DateTime.Now.Year + i;
                this.cmbCcExpYear.Items.Add(new ListItem(year.ToString(), year.ToString()));
            }
        }

        private void submitPayment()
        {
            DataFormLoadRequest request = PaymentAddForm.CreateLoadRequest(this.API.AppFxWebServiceProvider);
            request.FormID = new Guid("3e5b7b99-fb01-49d4-9020-c953006b7d0f");
            
            //List<string> giftsToProcess = new List<string>();
            //if (ViewState["selectedSponsorships"] != null)
            //{
            //    giftsToProcess = ViewState["selectedSponsorships"] as List<string>;
            //}
            //else
            //{
            //    giftsToProcess.Add(ViewState["GiftId"].ToString());
            //}

            //decimal enteredAmount = Convert.ToDecimal(this.lblAmount.Text);
            //decimal amount = enteredAmount / giftsToProcess.Count;
            //decimal runningTotal = 0;
            //amount = Math.Round(amount, 2);

            //for (int i=0; i < giftsToProcess.Count; i++)
            //{
            //    // if this is the last gift to process, check to see if we need to adjust for rounding
            //    if (i + 1 == giftsToProcess.Count)
            //    {
            //        if (runningTotal + amount != enteredAmount) amount = enteredAmount - runningTotal;
            //    }

            foreach (DataRow dr in this.cartData.Rows)
            {
                decimal paymentAmount = Convert.ToInt32(dr["Months"]) * Convert.ToDecimal(dr["Amount"]);
              
                PaymentAddFormData data = PaymentAddForm.LoadData(this.API.AppFxWebServiceProvider, request);
                data.CONSTITUENTID = this.API.Users.CurrentUser.BackOfficeGuid;
                data.DATE = DateTime.Now;
                data.AMOUNT = paymentAmount;
                data.PAYMENTMETHODCODE_IDVALUE = Blackbaud.AppFx.Fundraising.Catalog.WebApiClient.AddForms.Revenue.PaymentAddFormEnums.PAYMENTMETHODCODE.Credit_Card;
                data.APPLICATIONCODE_IDVALUE = Blackbaud.AppFx.Fundraising.Catalog.WebApiClient.AddForms.Revenue.PaymentAddFormEnums.APPLICATIONCODE.Recurring_Gift;
                data.REVENUESTREAMS = new PaymentAddFormData.REVENUESTREAMS_DATAITEM[1];
                data.REVENUESTREAMS[0] = new PaymentAddFormData.REVENUESTREAMS_DATAITEM();
                data.REVENUESTREAMS[0].APPLICATIONCODE_IDVALUE = Blackbaud.AppFx.Fundraising.Catalog.WebApiClient.AddForms.Revenue.PaymentAddFormEnums.REVENUESTREAMS_APPLICATIONCODE.Recurring_Gift;
                data.REVENUESTREAMS[0].APPLIED = paymentAmount;
                data.REVENUESTREAMS[0].APPLICATIONID = new Guid(Convert.ToString(dr["Id"]));
                //data.REVENUESTREAMS[0].APPLICATIONID = new Guid(giftsToProcess[i]);
                data.CREDITCARDNUMBER = this.txtCcNumber.Text;
                data.CARDHOLDERNAME = this.txtCcName.Text;
                data.EXPIRESON = new Blackbaud.AppFx.FuzzyDate(Convert.ToInt32(this.cmbCcExpYear.SelectedValue), Convert.ToInt32(this.cmbCcExpMonth.SelectedValue));
                data.CREDITTYPECODEID = Utility.GetCrmCC(this.cmbCcType.SelectedValue);
                data.RECEIPTAMOUNT = paymentAmount;                
                data.SOURCECODE = "BBIS";
                
                data.Save(this.API.AppFxWebServiceProvider);
                
                //runningTotal += amount;
            }

            //ViewState["selectedSponsorships"] = null;
            //ViewState["GiftId"] = null;
        }

        private bool processPayment()
        {
            var opts = MyContent;

            BBPSPaymentInfo payment = new BBPSPaymentInfo();
            payment.SkipCreateGiftTransaction = true;
            payment.DemoMode = opts.DemoMode;
            payment.MerchantAcctID = opts.MerchantAccountID;
            payment.Bbpid = Utility.GetBbbid(opts.MerchantAccountID, this.API.Transactions.MerchantAccounts);
            payment.SkipCardValidation = MyContent.DemoMode;            
            payment.AppealID = 1;
            payment.Comments = "";
            
            //List<string> giftsToProcess = new List<string>();
            //if (ViewState["selectedSponsorships"] != null)
            //{
            //    giftsToProcess = ViewState["selectedSponsorships"] as List<string>;
            //}
            //else
            //{
            //    giftsToProcess.Add(ViewState["GiftId"].ToString());
            //}

            ////decimal enteredAmount = Convert.ToDecimal(this.txtAmount.Text);
            //decimal amount = enteredAmount / (giftsToProcess.Count.Equals(0) ? 1 : giftsToProcess.Count);
            //decimal runningTotal = 0;
            //amount = Math.Round(amount, 2);

            //for (int i = 0; i < giftsToProcess.Count; i++)
            //{
            //    if (i + 1 == giftsToProcess.Count)
            //    {
            //        if (runningTotal + amount != enteredAmount) amount = enteredAmount - runningTotal;
            //    }

            //    int designationId = Utility.GetBbncDesignationId(giftsToProcess[i]);                
            //    payment.AddDesignationInfo(amount, "BBIS Child Sponsorship Transaction", designationId);
            //}


            foreach (DataRow dr in this.cartData.Rows)
            {
                decimal paymentAmount = Convert.ToInt32(dr["Months"]) * Convert.ToDecimal(dr["Amount"]);
                int designationId = Utility.GetBbncDesignationId(Convert.ToString(dr["Id"]));
                payment.AddDesignationInfo(paymentAmount, "BBIS Child Sponsorship Transaction", designationId);
        
            }

            payment.PaymentMethod = BBNCExtensions.API.Transactions.PaymentArgs.ePaymentMethod.CreditCard;
            payment.CreditCardCSC = this.txtCcSecurityCode.Text;
            payment.CreditCardExpirationMonth = Convert.ToInt32(this.cmbCcExpMonth.SelectedValue);
            payment.CreditCardExpirationYear = Convert.ToInt32(this.cmbCcExpYear.SelectedValue);
            payment.CreditCardHolderName = this.txtCcName.Text;
            payment.CreditCardNumber = this.txtCcNumber.Text; //VIOLATION of PCI Compliance - as a developer we can by no means ever write code that consumes someones credit card number
            payment.CreditCardType = (BBNCExtensions.Interfaces.Services.CreditCardType)Enum.Parse(typeof(BBNCExtensions.Interfaces.Services.CreditCardType), this.cmbCcType.SelectedValue);
            payment.DonorStreetAddress = this.txtBillingAddress.Text;
            payment.DonorCity = this.txtBillingCity.Text;
            payment.DonorStateProvince = this.cmbBillingCountry.SelectedValue == "US" ? this.cmbBillingState.SelectedValue : this.txtBillingRegion.Text;
            payment.DonorZIP = this.txtBillingZip.Text;                
         

            BBNCExtensions.API.Transactions.Donations.RecordDonationReply reply = this.API.Transactions.RecordDonation(payment.GeneratePaymentArgs());

            if (!payment.InterpretPaymentReply(reply).Success)
            {
                this.lblError.Visible = true;
                this.lblError.Text = payment.InterpretPaymentReply(reply).Message;
                return false;
            }
            else
            {                
                return true;
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                this.lblError.Visible = false;
                DateTime cardDate = new DateTime(Convert.ToInt32(this.cmbCcExpYear.SelectedValue), Convert.ToInt32(this.cmbCcExpMonth.SelectedValue), 1);
                if (cardDate < DateTime.Now)
                {
                    this.lblError.Visible = true;
                    this.lblError.Text = "Credit Card is expired.";
                }
                else
                {
                    if (this.processPayment())
                    {
                        this.submitPayment();
                        this.resetForm();
                        Session.Remove("PaymentCartData");
                        this.lblMessage.Text = MyContent.ThankYouMessage;
                        this.mvMain.SetActiveView(this.viewThankYou);
                    }
                }
            }
            catch (Exception ex)
            {
                this.lblError.Visible = true;
                this.lblError.Text = ex.Message + "<br /><br />" + ex.StackTrace;
            } 
        }


        private void resetForm()
        {
            this.lblAmount.Text = "";
            this.txtBillingAddress.Text = "";
            this.txtBillingAddress2.Text = "";
            this.txtBillingCity.Text = "";
            this.cmbBillingState.ClearSelection();
            this.txtBillingRegion.Text = "";
            this.cmbBillingCountry.SelectedValue = "US";
            this.txtCcName.Text = "";
            this.txtCcNumber.Text = "";
            this.txtBillingZip.Text = "";
            this.txtCcSecurityCode.Text = "";
            this.cmbCcExpMonth.ClearSelection();
            this.cmbCcExpYear.ClearSelection();
            this.cmbCcType.ClearSelection();

            foreach (GridViewRow row in this.gvSponsorships.Rows)
            {
                ((CheckBox)row.FindControl("chkPayment")).Checked = false;
            }
        }

        protected void cmbBillingCountry_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (this.cmbBillingCountry.SelectedValue == "US")
            {
                this.txtBillingRegion.Enabled = false;
                this.cmbBillingState.Enabled = true;
                this.reqBillingState.Enabled = true;
                this.reqBillingRegion.Enabled = false;
                lblProvinceRegionRequired1.Visible = false;
            }
            else
            {
                this.txtBillingRegion.Enabled = true;
                this.cmbBillingState.Enabled = false;
                this.reqBillingState.Enabled = false;
                this.reqBillingRegion.Enabled = true;
                lblProvinceRegionRequired1.Visible = true;
            }
        }

        protected void lnkBack_Click(object sender, EventArgs e)
        {
            this.mvMain.SetActiveView(this.viewSponsorships);
        }

        protected void lnkPayBack_Click(object sender, EventArgs e)
        {
            bindPaymentCartGrid();  // Not sure why I need to do this.
            this.mvMain.SetActiveView(this.viewPayments);
            
        }

        protected void lnkPayAmountsBack_Click(object sender, EventArgs e)
        {
            this.mvMain.SetActiveView(this.viewSponsorships);
        }

        protected void lnkThanksBack_Click(object sender, EventArgs e)
        {
            this.mvMain.SetActiveView(this.viewSponsorships);
        }

  

    }
}