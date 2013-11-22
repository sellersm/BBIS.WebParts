using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Blackbaud.Web.Content.Portal;
using System.Web.UI.HtmlControls;
using Blackbaud.Web.Content.Portal.GivingHistory;
using Blackbaud.Web.Content.Core;
using System.Data.SqlClient;
using System.Data;
using System.Reflection;
//using System.Windows.Forms;

namespace OCM.BBISWebParts
{
    public partial class MyTransactionManagerDisplay : BBNCExtensions.Parts.CustomPartDisplayBase
    {
        private MyTransactionManagerOptions _myContent;
        private MyTransactionManagerOptions MyContent
        {
            get
            {
                if (_myContent == null)
                {
                    _myContent = (MyTransactionManagerOptions)this.Content.GetContent(typeof(MyTransactionManagerOptions));

                    if (_myContent == null)
                    {
                        _myContent = new MyTransactionManagerOptions();
                    }
                }

                return _myContent;
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                MultiView mTabControl = (MultiView)FindRecursiveControl(this.Page, "mTabControl");

                if (mTabControl != null)
                {
                    if (!MyContent.ShowBoth && !MyContent.ShowNone)
                    {
                        if (!MyContent.ShowActive)
                        {
                            mTabControl.ActiveViewIndex = 1;

                            HtmlControl tabActiveGiftsDiv = (HtmlControl)FindRecursiveControl(this.Page, "tabActiveGiftsDiv");
                            tabActiveGiftsDiv.Style.Add("display", "none");

                            HtmlControl tabHistoryGiftsDiv = (HtmlControl)FindRecursiveControl(this.Page, "tabHistoryGiftsDiv");
                            tabHistoryGiftsDiv.Attributes["class"] += " TransactionManagerCurrentTab";
                        }

                        if (!MyContent.ShowHistory)
                        {
                            LinkButton lnkHistoryTab = (LinkButton)FindRecursiveControl(this.Page, MyContent.HistoryLinkName);
                            lnkHistoryTab.Visible = false;
                            
                        }
                    }
                    //csm code

                    //System.Web.UI.WebControls.Button btnFilter = (System.Web.UI.WebControls.Button)FindRecursiveControl(this.Page, "btnFilter");
                    //if (btnFilter != null)
                    // Type t = typeof(System.Web.UI.WebControls.Button);
                    //object[] p = new object[1];
                    //p[0] = EventArgs.Empty;
                    //MethodInfo m = t.GetMethod("OnClick", BindingFlags.NonPublic | BindingFlags.Instance);
                    //if (m != null)
                    //{
                    //    m.Invoke(btnFilter, p);
                    //}
    
                    //System.Web.UI.WebControls.DropDownList datePicker = (System.Web.UI.WebControls.DropDownList)FindRecursiveControl(this.Page, "datePicker");
                    //datePicker.SelectedIndex = 2;

                    
                }

				// OCM - csm added code
				// Hide export drop down until underlying data is fixed.

				//WebControl tabHistoryExportContainer = (WebControl)FindRecursiveControl(this.Page, "ExportContainer");
				//if (tabHistoryExportContainer != null)
				//{
				//    tabHistoryExportContainer.Visible = false;
				//    tabHistoryExportContainer.Style.Add("display", "none");
				//}
            }
            catch(Exception ex)
            {
                throw ex;
            }
        }

        private Control FindRecursiveControl(Control root, string ID)
        {
            if (root.ID == ID)
                return root;

            foreach (Control Ctl in root.Controls)
            {
                Control FoundCtl = FindRecursiveControl(Ctl, ID);

                if (FoundCtl != null)
                    return FoundCtl;
            }

            return null;
        }
    }
}