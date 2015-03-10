using System;

namespace OCM.BBISWebParts
{
    public class PartnerChildProfileOptions
    {
        #region Fields
        private string _fullPhotoType;
        private int _countryPageID;
        private int _projectPageID;
        private int _sponsorPageID;
        private string _childBioDocType;
		private string _projectBioDocType;
		private string _countryBioDocType;
		private bool _allowSponsorship;
        #endregion

        #region Properties
        public string FullPhotoType
        {
            get { return _fullPhotoType; }
            set { _fullPhotoType = value; }
        }

        public int CountryPageID
        {
            get { return _countryPageID; }
            set { _countryPageID = value; }
        }

        public int ProjectPageID
        {
            get { return _projectPageID; }
            set { _projectPageID = value; }
        }

        public int SponsorPageID
        {
            get { return _sponsorPageID; }
            set { _sponsorPageID = value; }
        }

        public string ChildBioDocType
        {
            get { return _childBioDocType; }
            set { _childBioDocType = value; }
        }

		public string ProjectBioDocType
		{
			get { return _projectBioDocType; }
			set { _projectBioDocType = value; }
		}

		public string CountryBioDocType
		{
			get { return _countryBioDocType; }
			set { _countryBioDocType = value; }
		}

        public bool AllowSponsorship
        {
            get { return _allowSponsorship; }
            set { _allowSponsorship = value; }
        }
        #endregion
    }
}