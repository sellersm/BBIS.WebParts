using System;

namespace OCM.BBISWebParts
{
    public class WriteALetterChildListOptions
    {
        #region Fields
        private string _thumbnailNoteType;
        private int _emailPageID;

        #endregion

        #region Properties
        public string ThumbnailNoteType
        {
            get { return _thumbnailNoteType; }
            set { _thumbnailNoteType = value; }
        }

          public int EmailPageID
        {
            get { return _emailPageID; }
            set { _emailPageID = value; }
        }

        #endregion
    }
}