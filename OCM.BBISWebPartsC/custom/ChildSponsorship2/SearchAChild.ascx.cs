using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using OCM.BBISWebParts.Classes;

namespace OCM.BBISWebParts.Display_Parts
{
    public partial class SearchAChild : BBNCExtensions.Parts.CustomPartDisplayBase
    {
        string sChildCatalogUrl = "/child-sponsorship-search";
        string sQueryString = "";
        string sRedirectPath = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            
            //if (ddlAge.SelectedValue.ToLower() != "all")
            //sQueryString = "&Age=" + ddlAge.SelectedValue;
            //if (ddlGender.SelectedValue.ToLower() != "either")
            //    sQueryString += "&Gender=" + ddlGender.SelectedValue;
            //if (ddlCountry.SelectedValue.ToLower() != "all")
            //    sQueryString += "&Country=" + ddlCountry.SelectedValue;
            //sQueryString = "&Age=" + Session["age"].ToString();
            //sQueryString += "&Gender=" + Session["gender"].ToString();
            //sQueryString += "&Country=" + Session["country"].ToString();

            if (HttpContext.Current.Request.QueryString != null)
            {
                sQueryString = "&Age=" + HttpContext.Current.Request.QueryString["Age"].ToString();
                sQueryString += "&Gender=" + HttpContext.Current.Request.QueryString["Gender"].ToString();
                sQueryString += "&Country=" + HttpContext.Current.Request.QueryString["Country"].ToString();
            }
            if (sQueryString != "")
                txtTest.Text = "https://" + HttpContext.Current.Request.Url.Host +  sChildCatalogUrl + "?" + sQueryString.Substring(1, sQueryString.Length - 1);
            else
                txtTest.Text = "https://" + HttpContext.Current.Request.Url.Host +  sChildCatalogUrl;
            ddlAge.SelectedValue = HttpContext.Current.Request.QueryString["Age"].ToString();
            ddlGender.SelectedValue = HttpContext.Current.Request.QueryString["Gender"].ToString();
            ddlCountry.SelectedValue = HttpContext.Current.Request.QueryString["Country"].ToString();
        }
        
        protected void btnSearch_Click(object sender, EventArgs e)
        {
            if (sQueryString != "")
                sRedirectPath = "https://" + HttpContext.Current.Request.Url.Host + sChildCatalogUrl + "?" + sQueryString.Substring(1, sQueryString.Length - 1);
            else
                sRedirectPath = "https://" + HttpContext.Current.Request.Url.Host + sChildCatalogUrl;

            Response.Redirect("http://" + "bbnc21195d.blackbaudhosting.com/child-sponsorship-search?Age=0-5&Gender=Girl&Country=Haiti");
        }

        protected void btnChooseForMe_Click(object sender, EventArgs e)
        {
            if (sQueryString.Length > 0)
                sQueryString = "?" + sQueryString.Substring(1, sQueryString.Length - 1) + "&ChooseForMe=Y";
            else
                sQueryString = "?ChooseForMe=Y";

            sRedirectPath = HttpContext.Current.Request.Url.AbsolutePath + sChildCatalogUrl + sQueryString;

            Response.Redirect(sRedirectPath);
        }
    }
}