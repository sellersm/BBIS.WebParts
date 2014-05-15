using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace OCM.BBISWebParts
{
    public class GivingCatalogOptions
    {
        #region Fields
        private string _thumbnailNoteType;
        private int _resultsPerPage;
        private int _moreInfoPageID;
        #endregion

        #region Properties
        public string ThumbnailNoteType
        {
            get { return _thumbnailNoteType; }
            set { _thumbnailNoteType = value; }
        }

        public int ResultsPerPage
        {
            get { return _resultsPerPage; }
            set { _resultsPerPage = value; }
        }

        public int MoreInfoPageID
        {
            get { return _moreInfoPageID; }
            set { _moreInfoPageID = value; }
        }

        #endregion
    }
}