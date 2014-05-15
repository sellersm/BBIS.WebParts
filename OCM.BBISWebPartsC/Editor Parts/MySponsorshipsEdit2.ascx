<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="MySponsorshipsEdit2.ascx.cs" Inherits="OCM.BBISWebParts.MySponsorshipsEdit2" %>
<%@ Register TagPrefix="uc" TagName="PageLink" Src="~/admin/PageLink.ascx"  %>
<table>
    <tr>
        <td>Thumnail Image Doc Type</td>
        <td><asp:TextBox ID="txtDocType" runat="server" /></td>
    </tr>
    <tr>
        <td>More Info Page ID:</td>
        <td><uc:PageLink ID="plinkMoreInfoPage" runat="server" /></td>
    </tr>
    <tr>
        <td>Email Page ID:</td>
        <td><uc:PageLink ID="plinkEmailPage" runat="server" /></td>
    </tr>
    <tr>
        <td>Payment Cart Page ID:</td>
        <td><uc:PageLink ID="plinkPaymentCartPage" runat="server" /></td>
    </tr>
    <tr>
        <td>Video Page ID:</td>
        <td><uc:PageLink ID="plinkVideoPage" runat="server" /></td>
    </tr>
    <tr>
        <td>Demo Mode:</td>
        <td><asp:CheckBox ID="chkDemo" runat="server" /></td>
    </tr>
    <tr>
        <td>
            Merchant Account:
        </td>
        <td>
            <asp:DropDownList ID="ddlMerchantAccounts" runat="server" />
        </td>
    </tr>
    <tr>
        <td valign="top">Thank You Message:</td>
        <td><asp:TextBox ID="txtMessage" runat="server" TextMode="MultiLine" Height="317px" 
                Width="570px" /></td>
    </tr>
</table>