﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OCM.BBISWebParts
{
    public partial class SponsorshipSearchEdit2 : BBNCExtensions.Parts.CustomPartEditorBase
    {
        protected Blackbaud.Web.Content.Portal.PageLink plinkMoreInfoTargetPage;
        protected Blackbaud.Web.Content.Portal.PageLink plinkSponsorTargetPage;

        private SponsorshipSearchOptions2 _myContent;
        private SponsorshipSearchOptions2 MyContent
        {
            get
            {
                if (_myContent == null)
                {
                    _myContent = (SponsorshipSearchOptions2)this.Content.GetContent(typeof(SponsorshipSearchOptions2));

                    if (_myContent == null)
                    {
                        _myContent = new SponsorshipSearchOptions2();
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
                if(MyContent != null)
                {
                    txtDocType.Text = MyContent.ThumbnailNoteType;
                    txtResultsPerPage.Text = MyContent.ResultsPerPage.ToString();
                    plinkMoreInfoTargetPage.PageID = MyContent.MoreInfoPageID;
                    plinkSponsorTargetPage.PageID = MyContent.SponsorPageID;
                }
            }
        }

        public override bool OnSaveContent(bool bDialogIsClosing)
        {
            MyContent.ThumbnailNoteType = this.txtDocType.Text;
            
            if (!String.IsNullOrEmpty(this.txtResultsPerPage.Text)) 
            {
                MyContent.ResultsPerPage = Convert.ToInt32(this.txtResultsPerPage.Text);
            }

            MyContent.MoreInfoPageID = plinkMoreInfoTargetPage.PageID;
            MyContent.SponsorPageID = plinkSponsorTargetPage.PageID;

            this.Content.SaveContent(MyContent);

            return true;
        }
    }
}