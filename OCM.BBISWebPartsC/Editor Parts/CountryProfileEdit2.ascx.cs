using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OCM.BBISWebParts
{
    public partial class CountryProfileEdit2 : BBNCExtensions.Parts.CustomPartEditorBase
    {
        private CountryProfileOptions2 _myContent;
        private CountryProfileOptions2 MyContent
        {
            get
            {
                if (_myContent == null)
                {
                    _myContent = (CountryProfileOptions2)this.Content.GetContent(typeof(CountryProfileOptions2));

                    if (_myContent == null)
                    {
                        _myContent = new CountryProfileOptions2();
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
                this.txtNoteType.Text = MyContent.NoteType;
                this.txtImage.Text = MyContent.ImageDocType;                
            }
        }

        public override bool OnSaveContent(bool bDialogIsClosing = true)
        {
            MyContent.NoteType = this.txtNoteType.Text;
            MyContent.ImageDocType = this.txtImage.Text;
            this.Content.SaveContent(MyContent);

            return true;
        }
    }
}