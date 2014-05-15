using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using OCM.BBISWebParts.Classes;

namespace OCM.BBISWebParts
{
    public partial class CommonUseEdit : BBNCExtensions.Parts.CustomPartEditorBase
    {

        private CommonUseOptions _myContent;
        private CommonUseOptions MyContent
        {
            get
            {
                if (_myContent == null)
                {
                    _myContent = (CommonUseOptions)this.Content.GetContent(typeof(CommonUseOptions));

                    if (_myContent == null)
                    {
                        _myContent = new CommonUseOptions();
                    }
                }

                return _myContent;
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public override void OnLoadContent()
        {
            if (!IsPostBack)
            {
                plinkNextPage.PageID = MyContent.NextPageID;
                plinkPreviousPage.PageID = MyContent.PreviousPageID;
            }
        }

        public override bool OnSaveContent(bool bDialogIsClosing)
        {
            MyContent.NextPageID = plinkNextPage.PageID;
            MyContent.PreviousPageID = plinkPreviousPage.PageID;

            this.Content.SaveContent(MyContent);

            return true;
        }
    }
}