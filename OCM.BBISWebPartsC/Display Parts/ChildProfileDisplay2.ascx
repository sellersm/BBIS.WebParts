﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ChildProfileDisplay2.ascx.cs" Inherits="OCM.BBISWebParts.ChildProfileDisplay2" %>
<table style="width: 100%">
	<tbody>
		<tr>
			<td style="padding-right: 5px; padding-left: 5px; padding-bottom: 5px; padding-top: 5px" rowspan="12"><asp:Image ID="imgPhoto" runat="server" /></td>
		</tr>
		<tr>
			<td><h3 style="color: #993300; font-family: Verdana"><asp:Label ID="lblName" runat="server" /></h3></td>
		</tr>
		<tr>
			<td><strong>Country:&nbsp; </strong><asp:Label ID="lblCountry" runat="server" /></td>
		</tr>
		<tr>
			<td><strong>Age:</strong>&nbsp; <asp:Label ID="lblchildAge" runat="server" /></td>
		</tr>
		<tr>
			<td><strong>Gender:</strong>&nbsp; <asp:Label ID="lblchildGender" runat="server" /></td>
		</tr>
		<tr>
			<td><strong>Birthdate: </strong><asp:Label ID="lblchildBirthdate" runat="server" /></td>
		</tr>
				
		<tr>
			<td><strong>Project:</strong>&nbsp; <asp:Label ID="lblchildProject" runat="server" /></td>
		</tr>
		<tr>
			<td><strong>Child ID:</strong>&nbsp; <asp:Label ID="lblchildNumber" runat="server" /></td>
		</tr>
		<tr>
			<td><asp:Label ID="lblchildBio" runat="server" /><br></td>
		</tr>
		<tr runat="server" id="trAmount">
			<td><strong>Sponsorship Amount: <asp:Label ID="lblchildSponsorAmount" runat="server" /> USD per month</strong></td>
		</tr>
        <tr style="height:10px;">
            <td>&nbsp;</td>
        </tr> 
        <tr>
                    
        <td>
                <table style="width:100%">
                    <tr>
                        <td><strong style="font-size: 12pt"><asp:LinkButton ID="lnkSponsor" runat="server" Text="Sponsor This Child" /></strong></td>
                        <td align="right"><asp:LinkButton ID="lnkProject" runat="server" Text="Project Info" /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:LinkButton ID="lnkCountry" runat="server" Text="Country Info" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
	</tbody>
</table>
<asp:Label ID="lblError" runat="server" Visible="false" />
