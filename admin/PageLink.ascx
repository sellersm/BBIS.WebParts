<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="PageLink.ascx.vb" Inherits="Blackbaud.Web.Content.Portal.PageLink"
    TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<%@ Register TagPrefix="cc" Namespace="Blackbaud.Web.Content.Core.Controls" Assembly="Blackbaud.Web.Content.Core" %>
<style type="text/css">
    .SearchFieldDeleteButton
    {
        border: 0 none;
        position: absolute;
        right: 22px;
        top: -9px;
    }
    .SearchFieldTextLink
    {
        padding-right:45px; 
        white-space:normal;
    }    
    
</style>
<div class="SearchFieldContainer" id="SearchFieldContainer" runat="server">
    <div class="SearchFieldBox" >
        <div class="SearchField">
            <span class="SearchFieldTextOnly SearchFieldTextLink" runat="server" id="pageSelectorLabel" style="cursor: pointer;">&nbsp;
                <cc:BBLabel Encode="false" ID="pageLink" runat="server"></cc:BBLabel>
            </span>
            <span class="SearchFieldButton">
                <asp:ImageButton ID="btnRemove" CssClass="SearchFieldDeleteButton" ImageUrl="~/images/Admin/Buttons/Remove.gif"
                    AlternateText="Remove page" runat="server"></asp:ImageButton>
                <img id="pageSelector" runat="server" src="~/images/Admin/Buttons/Search.gif" alt="Click here to select a page" />                
            </span>                        
        </div>         
    </div>    
    <asp:Label ID="lblReqFldMarker" CssClass="SearchFieldRequired" runat="server">*</asp:Label>
</div>
<span class="clear"></span>
<div style="display: none">
    <input type="hidden" id="txtPageName" name="txtPageName" runat="server" />
    <input type="hidden" id="txtPageId" name="txtPageId" runat="server" />
    <input type="hidden" id="txtTabId" name="txtTabId" runat="server" />
    <input type="hidden" id="txtContentTypeFilterId" name="txtContentTypeFilter" runat="server" />
</div>
