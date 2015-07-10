<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SessionPageActivityEdit.ascx.cs" Inherits="OCM.BBISWebParts.SessionPageActivityEdit" %>
<%@ Register TagPrefix="uc" TagName="PageLink" Src="~/admin/PageLink.ascx"  %>
<table>
	 <tr>
        <td>Page</td>
        <td><uc:PageLink ID="plinkPage" runat="server" /></td>
		<td>Select Page to track - usually the page the part is inserted into</td>
    </tr>
	<tr>
		<td>&nbsp;</td>
	</tr>
	 <tr>
		<td>Page Name:</td>
		<td><asp:TextBox ID="txtPageName" runat="server" MaxLength="255" Width="291px" /></td>
	</tr>
	
</table>

