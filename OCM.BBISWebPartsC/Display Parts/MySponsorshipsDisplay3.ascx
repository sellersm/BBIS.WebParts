<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="MySponsorshipsDisplay3.ascx.cs" Inherits="OCM.BBISWebParts.MySponsorshipsDisplay3" %>

<style type="text/css">
    .Validation
    {
        color: Red;
        font-weight: bold;
    }
</style>
<asp:MultiView ID="mvMain" runat="server" ActiveViewIndex="0">
    <asp:View ID="viewSponsorships" runat="server">
        <asp:GridView ID="gvSponsorships" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="RevenueId" onrowdatabound="gvSponsorships_RowDataBound" 
        BorderStyle="None" GridLines="None" HorizontalAlign="Center" Width="100%" 
        onrowcommand="gvSponsorships_RowCommand" >
        <Columns>
            <asp:TemplateField>
                <ItemTemplate>
                    <!--<asp:LinkButton ID="lnkPayments" runat="server" Text="View Payments" CommandName="ViewPayments" CommandArgument='<%#Eval("RevenueId") %>'/><br /><br /> 
					<asp:LinkButton ID="lnkPay" runat="server" Text="Make Payment" CommandName="MakeSinglePayment" CommandArgument='<%# ((GridViewRow) Container).RowIndex %>' /><br /><br /> -->
                    <asp:HyperLink ID="lnkWriteLetter" runat="server" Text="Write a Letter" visible="false"/>
					<asp:ImageButton ID="imgViewPayments" ImageUrl="~/image/MyAccount_ViewPaymentsButton.jpg" runat="server" CommandName="ViewPayments" CommandArgument='<%# ((GridViewRow) Container).RowIndex %>' /><br />
					<asp:ImageButton ID="imgMakePayment" ImageUrl="~/image/MyAccount_MakeAPaymentsButton.jpg" runat="server" CommandName="MakeSinglePayment" CommandArgument='<%# ((GridViewRow) Container).RowIndex %>' /><br />
					<asp:ImageButton ID="imgWriteLetter" ImageUrl="~/image/MyAccount_WriteALetterButton.jpg" runat="server" CommandName="WriteLetter" CommandArgument='<%# ((GridViewRow) Container).RowIndex %>' /><br />
                    
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:ImageButton ID="imgThumbnail" runat="server" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="ChildID" HeaderText="Child ID guid" 
				Visible="false" />
            <asp:TemplateField HeaderText="Child ID 2" Visible="false">
                <ItemTemplate>
                    <asp:Label ID="lblChildID" runat="server" Text='<%# Bind("[ChildID]") %>' />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Child ID">
                <ItemTemplate>
                    <asp:LinkButton ID="lnkNo" runat="server" Text='<%# Bind("[Child No]") %>' />
                </ItemTemplate>
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Child Name">
                <ItemTemplate>
                    <asp:LinkButton ID="lnkName" runat="server" Text='<%# Bind("[Child Name]") %>' />
                </ItemTemplate>
                <FooterStyle HorizontalAlign="Center" />
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
            </asp:TemplateField>
            <asp:BoundField DataField="Age" HeaderText="Age" >
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="Birthdate" HeaderText="Birthdate" DataFormatString="{0:d}">
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:TemplateField HeaderText="Monthly Amount 2" Visible="false">
                <ItemTemplate>
                    <asp:Label ID="lblMonthlyAmount" runat="server" Text='<%# Bind("[MonthlyAmount]") %>' />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="MonthlyAmount" HeaderText="Monthly Amount" DataFormatString="{0:C}">
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:TemplateField HeaderText="Make a Payment">
                <ItemTemplate>
                    <asp:CheckBox ID="chkPayment" runat="server" />
                </ItemTemplate>
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
            </asp:TemplateField>
            
        </Columns>
    </asp:GridView>
        <br />
	<div style="width:100%; text-align:right"><asp:LinkButton ID="lnkMakePayment" runat="server" onclick="lnkMakePayment_Click" >Make Payment for Selected Sponsorships</asp:LinkButton></div>
    </asp:View>
    <asp:View ID="viewPayments" runat="server">
        <asp:LinkButton ID="lnkBack" runat="server" Text="Back to list" onclick="lnkBack_Click" />
        <br />
        <br />
        <div><asp:Label ID="lblViewPaymentsFor" runat="server" style="font-weight: 700" Font-Size="Medium"></asp:Label></div>
        <br />
        <table>
            <tbody>
                <tr>
                    <td>
        <asp:GridView ID="gvPayments" runat="server" AutoGenerateColumns="False" 
            GridLines="None" CellPadding="5" ShowHeaderWhenEmpty="True" Width="371px" 
            AllowSorting="True">
            <AlternatingRowStyle BackColor="#EEEEEE" />
            <Columns>
                <asp:BoundField DataField="DATE" DataFormatString="{0:MMMM dd, yyyy}" 
                    HeaderText="Date" />
                <asp:BoundField DataField="AMOUNT" DataFormatString="{0:c}" HeaderText="Amount">
                <HeaderStyle HorizontalAlign="Right" />
                <ItemStyle HorizontalAlign="Right" />
                </asp:BoundField>
                <asp:BoundField DataField="ACTIVITYTYPE" HeaderText="Activity Type" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="DATESORT" ShowHeader="False" Visible="false" />
            </Columns>
    
            <HeaderStyle BackColor="#B8E2E0" />
    
        </asp:GridView>        
        </td>
        
        <td style="width:20px;"></td>
        <td valign="top">

        <asp:Image ID="imgPayments" runat="server" /></td>
        </tr>
</tbody></table>
    </asp:View>
    
</asp:MultiView>
