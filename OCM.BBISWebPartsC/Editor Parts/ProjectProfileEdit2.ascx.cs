using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OCM.BBISWebParts
{
    public partial class ProjectProfileEdit2 : BBNCExtensions.Parts.CustomPartEditorBase
    {
        private ProjectProfileOptions2 _myContent;
        private ProjectProfileOptions2 MyContent
        {
            get
            {
                if (_myContent == null)
                {
                    _myContent = (ProjectProfileOptions2)this.Content.GetContent(typeof(ProjectProfileOptions2));

                    if (_myContent == null)
                    {
                        _myContent = new ProjectProfileOptions2();
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
                this.txtType.Text = MyContent.NoteDocType;
                this.txtPhoto.Text = MyContent.ImageDocType;
            }
        }

        public override bool OnSaveContent(bool bDialogIsClosing = true)
        {
            MyContent.NoteDocType = this.txtType.Text;
            MyContent.ImageDocType = this.txtPhoto.Text;

            this.Content.SaveContent(MyContent);

            return true;
        }
    }
}