using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Blackbaud.CustomFx.ChildSponsorship.WebParts
{
    public class SponsorshipSearchOptionsOCM
    {
        private string thumbnailNoteType;
        public string ThumbnailNoteType
        {
            get { return this.thumbnailNoteType; }
            set { this.thumbnailNoteType = value; }
        }
        
        private int resultsPerPage;
        public int ResultsPerPage
        {
            get { return this.resultsPerPage; }
            set { this.resultsPerPage = value; }
        }

        private string moreInfoPage;
        public string MoreInfoPage
        {
            get { return this.moreInfoPage; }
            set { this.moreInfoPage = value; }
        }

        private string sponsorPage;
        public string SponsorPage
        {
            get { return this.sponsorPage; }
            set { this.sponsorPage = value; }
        }



    }
}