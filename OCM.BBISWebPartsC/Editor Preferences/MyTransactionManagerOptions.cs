using System;

namespace OCM.BBISWebParts
{
    public class MyTransactionManagerOptions
    {
        #region Fields
        private bool _showActive;
        private bool _showHistory;
		private bool _autoApply;
        //private bool _showChildInsteadOfDesignation;
        #endregion  


        #region Properties
        //public bool ShowChildInsteadOfDesignation
        //{
        //    get
        //    {
        //        return _showChildInsteadOfDesignation;
        //    }
        //    set
        //    {
        //        _showChildInsteadOfDesignation = value;
        //    }
        //}

        public bool ShowActive
        {
            get
            {
                return _showActive;
            }
            set
            {
                _showActive = value;
            }
        }

        public bool ShowHistory
        {
            get
            {
                return _showHistory;
            }
            set
            {
                _showHistory = value;
            }
        }

		public bool AutoApply
		{
			get
			{
				return _autoApply;
			}
			set
			{
				_autoApply = value;
			}
		}

        public string ActiveViewName 
        {
            get
            {                
                return "VwActiveHistoryTab";                                
            }
        }

        public string HistoryViewName
        {
            get
            {
                return "VwHistoryTab";
            }
        }

        public string ActiveLinkName
        {
            get
            {
                return "lnkActiveTab";
            }
        }

        public string HistoryLinkName
        {
            get
            {
                return "lnkHistoryTab";
            }
        }

        public bool ShowBoth
        {
            get
            {
                return (_showActive && _showHistory);
            }
        }

        public bool ShowNone
        {
            get
            {
                if(!_showActive && !_showHistory)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
        }

       #endregion
    }
}