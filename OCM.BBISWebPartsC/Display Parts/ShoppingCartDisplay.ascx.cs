using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

using Blackbaud.AppFx.WebAPI;
using Blackbaud.AppFx.WebAPI.ServiceProxy;
using Blackbaud.Web.Content.Core;
using OCM.BBISWebParts.Classes;

namespace OCM.BBISWebParts
{
    public partial class ShoppingCartDisplay : BBNCExtensions.Parts.CustomPartDisplayBase
    {
        private MySponsorshipsOptions2 _myContent;
        private MySponsorshipsOptions2 MyContent
        {
            get
            {
                if (_myContent == null)
                {
                    _myContent = (MySponsorshipsOptions2)this.Content.GetContent(typeof(MySponsorshipsOptions2));

                    if (_myContent == null)
                    {
                        _myContent = new MySponsorshipsOptions2();
                    }
                }

                return _myContent;
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            pnlMyMailingInfo.Visible = false;
            pnlMyPaymentInfo.Visible = false;
            pnlSecureCheckout.Visible = true;
            
        }

        protected void btnGuestDonor_Click(object sender, EventArgs e)
        {
            pnlMyMailingInfo.Visible = true;
            pnlMyPaymentInfo.Visible = true;
            pnlSecureCheckout.Visible = false;
        }

        
    }
}