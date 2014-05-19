<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SponsorshipPaymentCartEdit.ascx.cs" Inherits="OCM.BBISWebParts.SponsorshipPaymentCartEdit" %>
<%@ Register TagPrefix="uc" TagName="PageLink" Src="~/admin/PageLink.ascx"  %>

<table>
    <tr>
        <td>My Sponsorship Form Page:</td>
        <td><uc:PageLink ID="plinkMySponsorshipPage" runat="server" /></td>
    </tr>
    <tr>
        <td>Payment Form Page:</td>
        <td><uc:PageLink ID="plinkPaymentPage" runat="server" /></td>
    </tr>
</table>
