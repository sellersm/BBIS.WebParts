<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SponsorshipPaymentCartDisplay.ascx.cs" Inherits="OCM.BBISWebParts.SponsorshipPaymentCartDisplay" %>
    <p>
        <asp:LinkButton ID="lnkBack" runat="server" Text="Back to list" 
			onclick="lnkBack_Click" />
        </p>
    <asp:GridView ID="gvCart" runat="server" AutoGenerateColumns="False" 
        BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" 
        ShowFooter="True" onrowdatabound="gvCart_RowDataBound" Width="600px" 
        onrowupdated="gvCart_RowUpdated" DataKeyNames="Id" 
        onrowediting="gvCart_RowEditing" onrowdeleting="gvCart_RowDeleting" 
        onrowupdating="gvCart_RowUpdating" style="margin-right: 39px" 
    CellPadding="3" >
        <Columns>
            <asp:TemplateField HeaderText="Child No.">
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Number") %>'></asp:Label>
                </ItemTemplate>
                <ItemStyle Width="80px" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Child's Name">
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
                </ItemTemplate>
                <ItemStyle Width="160px" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="# Months">
                <EditItemTemplate>
                    <asp:TextBox ID="txtMonths" runat="server" Text='<%# Bind("Months") %>' ></asp:TextBox>
                    <asp:LinkButton ID="Button1" runat="server" CausesValidation="False" CommandName="Update"
                    Text="Update" ToolTip="Click to save the change to the number of months" ForeColor="Red"/>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("Months") %>'></asp:Label>
                </ItemTemplate>
                <ControlStyle Width="80px"/>
                <ItemStyle Width="80px" />
                <ItemStyle HorizontalAlign="Center" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Amount">
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("Amount", "{0:c}") %>'></asp:Label>
                </ItemTemplate>
                <ItemStyle Width="70px" HorizontalAlign="Right" />
            </asp:TemplateField>
                <asp:TemplateField HeaderText="" ShowHeader="False">
                <ItemTemplate>
                    <asp:LinkButton ID="Button1" runat="server" CausesValidation="False" CommandName="Edit"
                    Text="Edit # Months" ToolTip="Edit the number of months to pay for this sponsorship" />
                    &nbsp;&nbsp;<asp:LinkButton ID="Button2" runat="server" CausesValidation="False" CommandName="Delete"
                    Text="Remove" ToolTip="Remove this payment from the sponsorship payment cart" />
                    </ItemTemplate>
                <EditItemTemplate>
                    <asp:LinkButton ID="Button2" runat="server" CausesValidation="False" CommandName="Delete"
                    Text="Remove this payment" ToolTip="Remove this payment from the sponsorship payment cart" />
                 </EditItemTemplate>
                <ItemStyle HorizontalAlign="Center" />
                <FooterTemplate>
                    <asp:Button ID="btnCheckout" runat="server" Text="Continue >>" OnClick="btnContinue_Click" />
                </FooterTemplate>
                <FooterStyle BackColor="#FFBA58" HorizontalAlign="Center"/>
                <ItemStyle Width="150px" />
            </asp:TemplateField>
    </Columns>
    <HeaderStyle BackColor="#FFBA58" Height="25px" HorizontalAlign="Center" />
</asp:GridView>
<asp:Label ID="lblError" runat="server" Visible="false" />