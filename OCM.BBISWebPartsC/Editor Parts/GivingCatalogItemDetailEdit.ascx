<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="GivingCatalogItemDetailEdit.ascx.cs" Inherits="OCM.BBISWebParts.GivingCatalogItemDetailEdit" %>
<%@ Register TagPrefix="uc" TagName="PageLink" Src="~/admin/PageLink.ascx"  %>
<table>
    <tr>
        <td>Child Bio Doc Type</td>
        <td><asp:TextBox ID="txtBio" runat="server" /></td>
    </tr>
    <tr>
        <td>Profile Image Doc Type</td>
        <td><asp:TextBox ID="txtDocType" runat="server" /></td>
    </tr>
    <%--<tr>
        <td>Country Profile Target Page</td>
        <td><uc:PageLink ID="plinkCountryPage" runat="server" /></td>
    </tr>
    <tr>
        <td>Project Profile Target Page</td>
        <td><uc:PageLink ID="plinkProjectPage" runat="server" /></td>
    </tr>--%>
    <tr>
        <td>Sponsor Target Page</td>
        <td><uc:PageLink ID="plinkSponsorPage" runat="server" /></td>
    </tr>
    <%--<tr>
        <td>Allow Sponsorship?</td>
        <td><asp:CheckBox ID="chkAllowSponsorship" runat="server" /></td>
    </tr>--%>
</table>