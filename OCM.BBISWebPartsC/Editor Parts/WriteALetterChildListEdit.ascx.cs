using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OCM.BBISWebParts
{
    public partial class WriteALetterChildListEdit : BBNCExtensions.Parts.CustomPartEditorBase
    {
        protected Blackbaud.Web.Content.Portal.PageLink plinkMoreInfoPage;
        protected Blackbaud.Web.Content.Portal.PageLink plinkEmailPage;

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
            if(!IsPostBack)
            {
            }
        }

        public override void OnLoadContent()
        {
            if (!IsPostBack)
            {
                txtDocType.Text = MyContent.ThumbnailNoteType;
                plinkEmailPage.PageID = MyContent.EmailPageID;
            }
        }

        public override bool OnSaveContent(bool bDialogIsClosing = true)
        {
            MyContent.ThumbnailNoteType = this.txtDocType.Text;
            MyContent.EmailPageID = this.plinkEmailPage.PageID;

            this.Content.SaveContent(MyContent);
            return true;
        }

    }
}