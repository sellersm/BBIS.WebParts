using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Blackbaud.Web.Content.Core;
using OCM.BBISWebParts.Classes;
using BBNCExtensions.Interfaces.Parts;
using Blackbaud.AppFx.WebAPI;
using Blackbaud.AppFx.WebAPI.ServiceProxy;

namespace OCM.BBISWebParts
{
	public partial class SessionPageActivityDisplay : BBNCExtensions.Parts.CustomPartDisplayBase
	{
		private SessionPageActivityOptions _myContent;
		private SessionPageActivityOptions MyContent
		{
			get
			{
				if (_myContent == null)
				{
					_myContent = (SessionPageActivityOptions)this.Content.GetContent(typeof(SessionPageActivityOptions));

					if (_myContent == null)
					{
						_myContent = new SessionPageActivityOptions();
					}
				}

				return _myContent;
			}
		}

		protected void Page_Load(object sender, EventArgs e)
		{
			if (!IsPostBack)
			{

				try
				{
					string addDataForm = "BFE2C12E-B6C9-4D1A-8102-FCD6F18B8B17";

					DataFormLoadRequest request = OCM.BBISWebParts.WebsiteSessionPageActivityAddDataForm.CreateLoadRequest(this.API.AppFxWebServiceProvider);
					request.FormID = new Guid(addDataForm);
					OCM.BBISWebParts.WebsiteSessionPageActivityAddDataFormData data = OCM.BBISWebParts.WebsiteSessionPageActivityAddDataForm.LoadData(this.API.AppFxWebServiceProvider, request);

					data.ContextRecordID = "0";  // not used
					data.SESSIONID = Session.SessionID.ToString();
					data.PAGEID = MyContent.PageID;
					data.PAGEURL = Utility.GetBBISPageUrl(MyContent.PageID);
					data.PAGENAME = MyContent.PageName;
					data.ACTUALURL = Request.RawUrl;
					
					data.Save(this.API.AppFxWebServiceProvider);
				}
				catch (Exception ex)
				{
					// do nothing - don't want any exceptions to be thrown
				}
			}
			
		}
	}
}