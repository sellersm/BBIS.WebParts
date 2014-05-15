<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="GivingCatalogItemDetailDisplay.ascx.cs" Inherits="OCM.BBISWebParts.GivingCatalogItemDetailDisplay" %>
<table style="width: 100%">
	<tbody>
		<tr>
			<td style="padding-right: 5px; padding-left: 5px; padding-bottom: 5px; padding-top: 5px" rowspan="20"><asp:Image ID="imgPhoto" runat="server" Width="334px" Height="501px" /></td>
		</tr>
		<tr>
			<td>
        
                    <h3 style="color: #993300; font-family: Verdana; margin-left:-300px;"><asp:Label ID="lblName" runat="server" /></h3>
            <br />
                <p>
                    <strong style="margin-left:-300px; margin-top:-150px">Description:&nbsp; <asp:Label ID="lblchildBio" runat="server" /></strong><br/>
                </p>
                <br />
                <p> <asp:RadioButton ID="rdBtnPrice" runat="server" Checked="true" style="margin-left:-300px;"/><strong>Item Price: <asp:Label ID="lblchildSponsorAmount" runat="server" /> USD</strong><br />
                    <strong style="margin-left: -270px">Quantity: </strong><asp:TextBox ID="txtQuantity" runat="server" Width="50px" Text="1"/>
                </p>
                <br />
                <p>
                    <asp:RadioButton ID="rdBtnOther" runat="server" style="margin-left:-300px;" /><strong>Other: &nbsp; $<asp:TextBox ID="txtOtherAmount"  Width="70px" runat="server" />&nbsp; USD</strong>
                </p>
                <br />
                <p>
                    <strong style="font-size: 12pt; margin-left:-300px;"><asp:LinkButton ID="lnkSponsor" runat="server" Text="Give Now" /></strong>
                </p>
            </td>
		</tr>		
		<tr runat="server" id="trAmount" >
			<td>
                
            </td>
                
		</tr>
        
        <tr>
                    
        <td>
                <table style="width:100%">
                    <tr>
                        <td></td>
                        <%--<td align="right"><asp:LinkButton ID="lnkProject" runat="server" Text="Project Info" /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:LinkButton ID="lnkCountry" runat="server" Text="Country Info" />
                        </td>--%>
                    </tr>
                </table>
            </td>
        </tr>
	</tbody>
</table>
<asp:Label ID="lblError" runat="server" Visible="false" />