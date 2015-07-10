using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Blackbaud.Web.Content.Core;
using Blackbaud.Web.Content.Common;

namespace OCM.BBISWebParts
{

	public partial class SessionPageActivityEdit : BBNCExtensions.Parts.CustomPartEditorBase
    {
		private SessionPageActivityOptions _myContent;
		private SessionPageActivityOptions MyContent
        {
            get
            {
                if (_myContent == null)
                {
					_myContent = (SessionPageActivityOptions)this.Content.GetContent(typeof(SessionPageActivityOptions));

                    if (_myContent == null)
                    {
						_myContent = new SessionPageActivityOptions();
                    }
                }

                return _myContent;
            }
        }
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
				LoadOptions();
            }
        }

        public void LoadOptions()
        {
            if (!IsPostBack)
            {
                if (MyContent != null)
                {
					this.plinkPage.PageID = MyContent.PageID;
					this.txtPageName.Text = MyContent.PageName;
                }
            }            
        }
		

       

        public override bool OnSaveContent(bool bDialogIsClosing = true)
        {
			MyContent.PageID = this.plinkPage.PageID;
			MyContent.PageName = this.txtPageName.Text;
     
			this.Content.SaveContent(MyContent);
            return true;
        }

	
	}
}