<%@ Control Language="C#" 
    AutoEventWireup="true" 
    CodeBehind="SearchAChild.ascx.cs" 
    Inherits="OCM.BBISWebParts.Display_Parts.SearchAChild" %>

<link href="../../Styles/SearchAChild.css" rel="stylesheet" type="text/css" />
<br />
        <asp:Label ID="lblAge" runat="server" Text="Age" class="label"></asp:Label><br />
        <asp:DropDownList ID="ddlAge" runat="server" class="dropdownList" >
            <asp:ListItem Selected="True" Value="All" Text="All" />
            <asp:ListItem Selected="false" Value="0-5" Text="0-5" />
            <asp:ListItem Selected="false" Value="6-10" Text="6-10" />
            <asp:ListItem Selected="false" Value="3" Text="3" />
            <asp:ListItem Selected="false" Value="4" Text="4" />
            <asp:ListItem Selected="false" Value="5" Text="5" />
            <asp:ListItem Selected="false" Value="6" Text="6" />
            <asp:ListItem Selected="false" Value="7" Text="7" />
            <asp:ListItem Selected="false" Value="8" Text="8" />
            <asp:ListItem Selected="false" Value="9" Text="9" />
            <asp:ListItem Selected="false" Value="10" Text="10" />
            <asp:ListItem Selected="false" Value="11" Text="11" />
            <asp:ListItem Selected="false" Value="12" Text="12" />
            <asp:ListItem Selected="false" Value="13" Text="13" />
            <asp:ListItem Selected="false" Value="14" Text="14" />
            <asp:ListItem Selected="false" Value="15" Text="15" />
            <asp:ListItem Selected="false" Value="16" Text="16" />
        </asp:DropDownList>
       <br />
        <asp:Label ID="lblGender" runat="server" Text="Gender" class="label"></asp:Label><br />
        <asp:DropDownList ID="ddlGender" runat="server" class="dropdownList" >
            <asp:ListItem Selected="True" Value="Either" Text="Either" />
            <asp:ListItem Selected="false" Value="Boy" Text="Boy" />
            <asp:ListItem Selected="false" Value="Girl" Text="Girl" />
        </asp:DropDownList>
        <br />
        <asp:Label ID="lblCountry" runat="server" Text="Country" class="label"></asp:Label><br />
        <asp:DropDownList ID="ddlCountry" runat="server" class="dropdownList">
            <asp:ListItem Selected="True" Value="All" Text="All" />
            <asp:ListItem Selected="False" Value="Bangladesh" Text="Bangladesh" />
            <asp:ListItem Selected="False" Value="Cambodia" Text="Cambodia" />
            <asp:ListItem Selected="False" Value="Dominican Republic" Text="Dominican Republic" />
            <asp:ListItem Selected="False" Value="Egypt" Text="Egypt" />
            <asp:ListItem Selected="False" Value="Ethiopia" Text="Ethiopia" />
            <asp:ListItem Selected="False" Value="Haiti" Text="Haiti" />
            <asp:ListItem Selected="False" Value="Honduras" Text="Honduras" />
            <asp:ListItem Selected="False" Value="India" Text="India" />
            <asp:ListItem Selected="False" Value="Jordan" Text="Jordan" />
            <asp:ListItem Selected="False" Value="Kenya" Text="Kenya" />
            <asp:ListItem Selected="False" Value="Lebanon" Text="Lebanon" />
            <asp:ListItem Selected="False" Value="Kyrgyzstan" Text="Kyrgyzstan" />
            <asp:ListItem Selected="False" Value="Mozambique" Text="Mozambique" />
            <asp:ListItem Selected="False" Value="Nepal" Text="Nepal" />
            <asp:ListItem Selected="False" Value="Nicaragua" Text="Nicaragua" />
            <asp:ListItem Selected="False" Value="Philippines" Text="Philippines" />
            <asp:ListItem Selected="False" Value="Romania" Text="Romania" />
            <asp:ListItem Selected="False" Value="Sri Lanka" Text="Sri Lanka" />
            <asp:ListItem Selected="False" Value="Swaziland" Text="Swaziland" />
            <asp:ListItem Selected="False" Value="Zimbabwe" Text="Zimbabwe" />
        </asp:DropDownList>
        <br />
        <asp:TextBox ID="txtTest" runat="server" Text="Test" />
        <asp:Button ID="btnSearch" runat="server" Text="Search" class="button" 
    onclick="btnSearch_Click" />
        <br />
        <asp:Button ID="btnChooseForMe" runat="server" Text="Choose for me" 
    class="button" onclick="btnChooseForMe_Click" />
