<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="MySponsoredChildMediaDisplay.ascx.cs" Inherits="OCM.BBISWebParts.MySponsoredChildMediaDisplay" %>


<div>
    <object>
        <param name="movie" value="http://www.youtube.com/v/ZbubK2l4yD8"><param name="allowFullScreen" value="true">
        <param name="allowScriptAccess" value="always">
        <embed src="http://www.youtube.com/v/ZbubK2l4yD8" type="application/x-shockwave-flash" allowfullscreen="true" allowScriptAccess="always" width="700" height="480">
    </object>
</div>
<div>
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" Width="700px">
        <asp:ListItem Value="https://www.youtube.com/user/hooplakidz?v=tkXOKkxc0BA">Child Video 1</asp:ListItem>
        <asp:ListItem Value="http://www.youtube.com/v/ZbubK2l4yD8">Child Video 2</asp:ListItem>
        <asp:ListItem Value="http://www.youtube.com/v/0I0WfnhVs2s">Child Video 3</asp:ListItem>
    </asp:DropDownList> 
</div>