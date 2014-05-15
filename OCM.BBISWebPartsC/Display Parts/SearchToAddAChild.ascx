<%@ Control Language="C#" 
    AutoEventWireup="true" 
    CodeBehind="SearchToAddAChild.ascx.cs" 
    Inherits="OCM.BBISWebParts.Display_Parts.SearchToAddAChild" %>

<%@ Register TagPrefix="uc" TagName="SearchAChild" Src="~/custom/ChildSponsorship2/SearchAChild.ascx" %>

<div>
    <img src="../images/AddAChildBox.jpg"  alt=""/><br />
    <div class="sponsorAChildWithTop"> 
        <uc:SearchAChild ID="searchToAddAChildWithTopImg" runat="server" />         
    </div>
    
</div>