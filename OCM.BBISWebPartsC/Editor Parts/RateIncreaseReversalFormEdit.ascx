<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="RateIncreaseReversalFormEdit.ascx.cs"
	Inherits="OCM.BBISWebParts.RateIncreaseReversalFormEdit" %>
<%@ Register TagPrefix="uc" TagName="PageLink" Src="~/admin/PageLink.ascx" %>
<table>
	<tr>
		<td>
			Demo Mode:
		</td>
		<td>
			<asp:CheckBox ID="chkDemo" runat="server" />
		</td>
	</tr>
	<tr>
		<td>
			Email Response Mode (this positions instructions):
		</td>
		<td>
			<asp:CheckBox ID="chkEmailResponseMode" runat="server" />
		</td>
	</tr>
	<tr>
		<td>
			Merchant Account:
		</td>
		<td>
			<asp:DropDownList ID="ddlMerchantAccounts" runat="server" Height="22px" Width="200px" />
		</td>
	</tr>
	<tr>
		<td>
			Reversal Note Type:
		</td>
		<td>
			<asp:DropDownList ID="ddlConstituentNoteType" runat="server" Height="22px" Width="300px">
			</asp:DropDownList>
		</td>
	</tr>
	<tr>
		<td>
			Payment Designation BBIS:
		</td>
		<td>
			<asp:DropDownList ID="ddlDesignationBBIS" runat="server" Height="22px" Width="300px">
			</asp:DropDownList>
		</td>
	</tr>
	<tr>
		<td>
			Payment Designation CRM:
		</td>
		<td>
			<asp:DropDownList ID="ddlDesignationCRM" runat="server" Height="22px" Width="300px">
			</asp:DropDownList>
		</td>
	</tr>
	<tr>
		<td>
			Reversal Checkbox Label Text:
		</td>
		<td>
			<asp:TextBox ID="txtReversalCheckboxLabel" runat="server" Width="400px"></asp:TextBox>
		</td>
	</tr>
	<tr>
		<td>
			Error Text - No Checkboxes Checked:
		</td>
		<td>
			<asp:TextBox ID="txtErrorNoCheckboxesChecked" runat="server" Width="400px"></asp:TextBox>
		</td>
	</tr>
	<tr>
		<td>
			Payment Checkbox Label Text:
		</td>
		<td>
			<asp:TextBox ID="txtPaymentCheckboxLabel" runat="server" Width="400px"></asp:TextBox>
		</td>
	</tr>
	<tr>
		<td>
			Thank You Reversal (no payment) Page:
		</td>
		<td>
			<uc:PageLink ID="plinkThankYouReversalPage" runat="server" />
		</td>
	</tr>
	<tr>
		<td>
			Thank You Payment (no reversal) Page:
		</td>
		<td>
			<uc:PageLink ID="plinkThankYouPaymentNoReversalPage" runat="server" />
		</td>
	</tr>
	<tr>
		<td>
			Thank You Reversal With Payment Page:
		</td>
		<td>
			<uc:PageLink ID="plinkThankYouReversalWithPaymentPage" runat="server" />
		</td>
	</tr>
	<tr>
		<td>
		<br />
		</td>
	</tr>
	<tr>
	<td>
		<b>Constituent Note Configuration</b></td></tr>
	<tr>
		<td>
			Title:
		</td>
		<td>
			<asp:TextBox ID="txtConstituentNoteTitle" runat="server" Width="400px" MaxLength="50"></asp:TextBox>
		</td>
	</tr>
	<tr>
		<td>
			Title (No Reversal):
		</td>
		<td>
			<asp:TextBox ID="txtConstituentNoteTitleNoReversal" runat="server" Width="400px" MaxLength="50"></asp:TextBox>
		</td>
	</tr>
	<tr>
		<td>
			Text (use &lt;Date&gt; to insert date)
		</td>
		<td>
			<asp:TextBox ID="txtConstituentNoteText" runat="server" Width="400px" ></asp:TextBox>
		</td>
	</tr>
	<tr>
		<td>
			Text - No Reversal (use &lt;Date&gt; to insert date)
		</td>
		<td>
			<asp:TextBox ID="txtConstituentNoteTextNoReversal" runat="server" Width="400px"></asp:TextBox>
		</td>
	</tr>
	<tr>
		<td>
			Payment additional text
		</td>
		<td>
			<asp:TextBox ID="txtConstituentNoteTextPayment" runat="server" Width="400px"></asp:TextBox>
		</td>
	</tr>

</table>
