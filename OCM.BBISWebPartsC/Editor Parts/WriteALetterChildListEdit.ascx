<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WriteALetterChildListEdit.ascx.cs" Inherits="OCM.BBISWebParts.WriteALetterChildListEdit" %>
<%@ Register TagPrefix="uc" TagName="PageLink" Src="~/admin/PageLink.ascx"  %>
<table>
    <tr>
        <td>Thumnail Image Doc Type</td>
        <td><asp:TextBox ID="txtDocType" runat="server" /></td>
    </tr>
    <tr>
        <td>Email Page ID:</td>
        <td><uc:PageLink ID="plinkEmailPage" runat="server" /></td>
    </tr>
    </table>