<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WriteALetterChildListDisplay.ascx.cs" Inherits="OCM.BBISWebParts.WriteALetterChildListDisplay" %>

<style type="text/css">
    .Validation
    {
        color: Red;
        font-weight: bold;
    }
</style>
	<asp:GridView ID="gvSponsorships" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="RevenueId" onrowdatabound="gvSponsorships_RowDataBound" 
        BorderStyle="None" GridLines="None" HorizontalAlign="Center" Width="70%" 
        onrowcommand="gvSponsorships_RowCommand" >
        <Columns>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:ImageButton ID="imgThumbnail" runat="server" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="ChildID" HeaderText="Child ID" Visible="false" />
            <asp:TemplateField HeaderText="Child ID 2" Visible="false">
                <ItemTemplate>
                    <asp:Label ID="lblChildID" runat="server" Text='<%# Bind("[ChildID]") %>' />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Child No">
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
            
        </Columns>
    </asp:GridView>
