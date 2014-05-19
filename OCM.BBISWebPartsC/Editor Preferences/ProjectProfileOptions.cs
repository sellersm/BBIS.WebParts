using System;

namespace OCM.BBISWebParts
{
    public class ProjectProfileOptions2
    {
        #region Fields
        private string _noteDocType;
        private string _imageDocType;
        #endregion

        #region Properties
        public string NoteDocType
        {
            get { return _noteDocType; }
            set { _noteDocType = value; }
        }

        public string ImageDocType
        {
            get { return _imageDocType; }
            set { _imageDocType = value; }
        }
        #endregion
    }
}