using System;

namespace OCM.BBISWebParts
{
	public class SessionPageActivityOptions
    {
        #region Fields
        private string _pageName;
        private int _pageID;
        #endregion

        #region Properties
		public string PageName
        {
			get { return _pageName; }
			set { _pageName = value; }
        }

		public int PageID
        {
			get { return _pageID; }
			set { _pageID = value; }
        }

        #endregion
    }
}