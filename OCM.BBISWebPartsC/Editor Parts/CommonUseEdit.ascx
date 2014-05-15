<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CommonUseEdit.ascx.cs" Inherits="OCM.BBISWebParts.CommonUseEdit" %>
<%@ Register TagPrefix="uc" TagName="PageLink" Src="~/admin/PageLink.ascx"  %>
<table>
    <tr>
        <td>Previous Target Page</td>
        <td><uc:PageLink ID="plinkPreviousPage" runat="server" /></td>
    </tr>
    <tr>
        <td>Next Target Page</td>
        <td><uc:PageLink ID="plinkNextPage" runat="server" /></td>
    </tr>
</table>