using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Blackbaud.Web.Content.Core;
using OCM.BBISWebParts.Classes;
using System.Data.SqlClient;
using System.Data;

namespace OCM.BBISWebParts
{
    public partial class EmailAChildDisplay : BBNCExtensions.Parts.CustomPartDisplayBase
    {
        private string _childid;
        private string _childname;
        private string _sponsorid;
        private string _sponsorname;

        private EmailAChildOptions _myContent;
        private EmailAChildOptions MyContent
        {
            get
            {
                if (_myContent == null)
                {
                    _myContent = (EmailAChildOptions)this.Content.GetContent(typeof(EmailAChildOptions));

                    if (_myContent == null)
                    {
                        _myContent = new EmailAChildOptions();
                    }
                }

                return _myContent;
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                if(Request.QueryString["args"] != null)
                {
                    var args = new EncryptedQueryString(Request.QueryString["args"]);
                    _childid = args["CHILDID"];
                    _childname = args["CHILDNAME"];

                    lblChildID.Text = string.Format("Child ID: {0}", _childid);
                    lblChildName.Text = string.Format("Child Name: {0}", _childname);                
                }
                else
                { 
                    btnSend.Enabled = false;
                }
            }
            
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect(Utility.GetBBISPageUrl(MyContent.MySponsorshipsPageID), true);
        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            string errorMessage = string.Empty;
            
            try
            {
                var args = new EncryptedQueryString(Request.QueryString["args"]);
                _childid = args["CHILDID"];
                _childname = args["CHILDNAME"];
                _sponsorid = args["SPONSORID"];
                _sponsorname = args["SPONSORNAME"];

                string customMessage = txtMessage.Text.Replace("\r\n", "<br />");

                StringBuilder message = new StringBuilder();
                message.AppendLine("<table>");                
                message.AppendLine(string.Format("<tr><td>Sponsor ID:</td><td>{0}</td></tr>", _sponsorid));
                message.AppendLine(string.Format("<tr><td>Sponsor Name:</td><td>{0}</td></tr>", _sponsorname));
                message.AppendLine("<tr><td colspan='2'><br /></td></tr>");
                message.AppendLine(string.Format("<tr><td>Child ID:</td><td>{0}</td></tr>", _childid));
                message.AppendLine(string.Format("<tr><td>Child Name:</td><td>{0}</td></tr>", _childname));
                message.AppendLine("<tr><td colspan='2'><br /></td></tr>");
                message.AppendLine("<tr><td colspan='2'><br /></td></tr>");
                message.AppendLine(string.Format("<tr><td colspan='2'>{0}</td></tr>", customMessage));
                message.AppendLine("<tr><td colspan='2'><br /></td></tr>");
                message.AppendLine("<tr><td colspan='2'><br /></td></tr>");
                message.AppendLine(string.Format("<tr><td colspan='2'>{0}</td></tr>", MyContent.LinkHtml));
                message.AppendLine("<tr><td colspan='2'><br /></td></tr>");
                message.AppendLine("<tr><td colspan='2'><br /></td></tr>");
                message.AppendLine("<tr><td> Photo: </td><td><img id='Img1' src='ImageHandler.ashx?context='email'&type=emailimage&id=" +
                    Session["ImageID"].ToString() + "style='CURSOR: move' runat='server' htmlencode='True' searchable='0' isloop='False' alt=''/></td></tr>");
                message.AppendLine("</table>");

                var template = new EmailTemplate(MyContent.TemplateID);
                var em = new EMail(template);
                em.Save();                    
                em.FromAddress = MyContent.FromAddress;
                em.FromDisplayName = MyContent.FromName;
                em.Subject = MyContent.SubjectLine;
                em.ContentHTML = message.ToString();
                    
                em.Send(MyContent.ToAddress, MyContent.ToAddress, API.Users.CurrentUser.RaisersEdgeID, API.Users.CurrentUser.UserID, null, this.Page);

                SqlConnection con = new SqlConnection(Blackbaud.Web.Content.Core.Settings.ConnectionString);

                string sql = @"Delete dbo.USR_MYACCOUNTEMAILIMAGE where ID = @ID";

                SqlCommand cmd = new SqlCommand(sql, con);
                cmd.CommandType = CommandType.Text;
                cmd.Parameters.AddWithValue("ID", Session["ImageID"].ToString());

                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }
            catch (ArgumentNullException ane)
            {
                errorMessage = ane.Message;
            }
            catch(Exception ex)
            {
                errorMessage = "An error has occurred, please try again.";                
                Blackbaud.Web.Content.Core.Common.LogErrorToDB(ex, false);
            }
                        
            if(!string.IsNullOrWhiteSpace(errorMessage))
            {
                Utility.RedirectToBBISPage(MyContent.ErrorPageID);                
            }
            else
            {
                Utility.RedirectToBBISPage(MyContent.SuccessPageID);
            }
        }

        public override void RegisterLanguageFields()
        {
            RegisterLanguageField("D2CF2C11-602D-4C02-B678-D2C56F68E4AD", lblMessageHeader, "Message header", "Please enter the letter contents here:", "General", false);

            base.RegisterLanguageFields();
        }

        protected void btnUploadImage_Click(object sender, EventArgs e)
        {
            pnlFileUpload.Visible = true;
        }

        protected void btnFileUploadImage_Click(object sender, EventArgs e)
        {
            FileUploadImage();
        }

        private void FileUploadImage()
        {
            if (fileUpload1.HasFile)
            {
                int imageFileLength = fileUpload1.PostedFile.ContentLength;
                byte[] imagearray = new byte[imageFileLength];
                HttpPostedFile image = fileUpload1.PostedFile;
                image.InputStream.Read(imagearray, 0, imageFileLength);

                Guid id = Guid.NewGuid(); ;//Guid.Empty;

                Session["ImageID"] = id;
                //var constit = new Blackbaud.Web.Content.Core.Data.ShelbyConstituent(BBWebPrincipal.Current.User);
                //id = new Guid(Blackbaud.Web.Content.Core.Data.ShelbyConstituent.get_GetConstituentsGuid(constit.RecordID));

                SqlConnection con = new SqlConnection(Blackbaud.Web.Content.Core.Settings.ConnectionString);

                string sql = @" Insert into dbo.USR_MYACCOUNTEMAILIMAGE(ID, ImageName, ImageFile, AddedByID, ChangedByID, DateAdded, DateChanged)" +
                    " values (@ID, @ImageName, @ImageFile, @AddedByID, @ChangedByID, getDate(), getDate())";

                SqlCommand cmd = new SqlCommand(sql, con);
                cmd.CommandType = CommandType.Text;
                cmd.Parameters.AddWithValue("ID", id);
                cmd.Parameters.AddWithValue("ImageName", txtName.Text);
                cmd.Parameters.AddWithValue("ImageFile", imagearray);
                cmd.Parameters.AddWithValue("AddedByID", "C2FFF180-E70D-4D5B-B33D-215AE2F1AA1B");
                cmd.Parameters.AddWithValue("ChangedByID", "C2FFF180-E70D-4D5B-B33D-215AE2F1AA1B");

                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                txtName.Text = "";
                lblFileUploadMsg.Text = "Your image was uploaded successfully!";
            }
            else
                lblFileUploadMsg.Text = "Please Choose an image to upload";
        }
    }
}