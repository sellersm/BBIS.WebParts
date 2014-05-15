<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="EmailAChildDisplay.ascx.cs" Inherits="OCM.BBISWebParts.EmailAChildDisplay" %>
<asp:Label ID="lblError" runat="server" Visible="false" ForeColor="Red" Font-Bold="true" />
<table>
    <tr>
        <td><asp:Label ID="lblChildID" runat="server" /></td>
        <td><asp:Label ID="lblChildName" runat="server" /></td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:Label ID="lblMessageHeader" runat="server" />
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:TextBox ID="txtMessage" runat="server" TextMode="MultiLine" Height="443px" Width="466px" ValidationGroup="0" />
            <asp:RequiredFieldValidator ID="rfvMessage" runat="server" ControlToValidate="txtMessage" 
                    ErrorMessage="* Message is required" ForeColor="Red" Display="Dynamic" ValidationGroup="0" />
        </td>
    </tr>
    <tr>
        <td colspan="2" style="text-align:right">
            <asp:Button ID="btnSend" runat="server" Text="Send" OnClick="btnSend_Click" ValidationGroup="0" />
            <asp:Button ID="btnCancel" runat="server" Text="Cancel" onclick="btnCancel_Click" />
            <asp:Button ID="btnUploadImage" runat="server" Text="Upload Image" onclick="btnUploadImage_Click" />
        </td>
    </tr>
    
    <asp:Panel runat="server" ID="pnlFileUpload" Visible="false">
        <tr>
            <td>Name:</td>           
            <td>
                <asp:TextBox runat="server" ID="txtName"/>
            </td>
        </tr> 
        <tr>
            <td>Select Image:</td>
            <td>
                <asp:FileUpload runat="server" ID="fileUpload1" />
            </td>
        </tr> 
        <tr>
            <td>
                <asp:Button runat="server" ID="btnFileUploadImage" OnClick="btnFileUploadImage_Click" Text="Upload Image" />
            </td>
        </tr>  
        <tr>
            <td>
                <asp:Label runat="server" ID="lblFileUploadMsg" Text="" style="color:Red"/>
            </td>
        </tr>   
            
    </asp:Panel>
    
</table>
