using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace OCM.BBISWebParts
{
    public class CommonUseOptions
    {
        #region Fields
        private int _nextPageID;
        private int _previousPageID;
        #endregion

        #region Properties
        public int NextPageID
        {
            get { return _nextPageID; }
            set { _nextPageID = value; }
        }

        public int PreviousPageID
        {
            get { return _previousPageID; }
            set { _previousPageID = value; }
        }
        #endregion
    }
}