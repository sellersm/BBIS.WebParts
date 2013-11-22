using System;

namespace OCM.BBISWebParts
{
    public class ChildProfileOptions2
    {
        #region Fields
        private string _fullPhotoType;
        private int _countryPageID;
        private int _projectPageID;
        private int _sponsorPageID;
        private string _childBioDocType;
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

        public bool AllowSponsorship
        {
            get { return _allowSponsorship; }
            set { _allowSponsorship = value; }
        }
        #endregion
    }
}