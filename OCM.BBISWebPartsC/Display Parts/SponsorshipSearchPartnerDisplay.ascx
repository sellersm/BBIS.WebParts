<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SponsorshipSearchPartnerDisplay.ascx.cs" Inherits="OCM.BBISWebParts.SponsorshipSearchPartnerDisplay" %>


<asp:Repeater ID="rptSearch" runat="server" OnItemDataBound="rptSearch_ItemDataBound">
    
    <HeaderTemplate></HeaderTemplate>
		
    <ItemTemplate>

        <!-- Child Card Start -->
        <div class="col-xs-12 col-sm-6 col-md-4 col-lg-3 child-card">
			<div class="col-xs-12 child-photo">
				<div id="childPhoto1" class="child-thumbnail inner-border"  runat="server" ></div>
			</div>
			<div class="col-xs-12 child-details">
				<h2><%#Eval("FULLNAME")%></h2>
				<p><i class="fa fa-male"></i><i class="fa fa-female"></i><span> <%#Eval("GENDER")%></span></p>
				<p><i class="fa fa-map-marker fa-fw"></i><span> <%#Eval("COUNTRYNAME")%></span></p>
				<p><i class="fa fa-birthday-cake fa-fw"></i><span><%#Eval("BIRTHDATE")%> (Age: <%#Eval("AGE")%>)</span></p>   
				<asp:LinkButton ID="lnkMoreInfo" runat="server" CssClass="sponsor-me">Get to Know Me <i class='fa fa-arrow-circle-right'></i></asp:LinkButton>
			</div>
        </div>
        <!-- Child Card End -->

    </ItemTemplate>

    <AlternatingItemTemplate>
    
        <!-- Child Card Start -->
        <div class="col-xs-12 col-sm-6 col-md-4 col-lg-3 child-card">
			<div class="col-xs-12 child-photo">
				<div id="childPhoto2" class="child-thumbnail inner-border" runat="server"></div>        
			</div>

			<div class="col-xs-12 child-details">
				<h2><%#Eval("FULLNAME")%></h2>
				<p><i class="fa fa-male"></i><i class="fa fa-female"></i><span> <%#Eval("GENDER")%></span></p>
				<p><i class="fa fa-map-marker fa-fw"></i><span> <%#Eval("COUNTRYNAME")%></span></p>
				<p><i class="fa fa-birthday-cake fa-fw"></i><span><%#Eval("BIRTHDATE")%> (Age: <%#Eval("AGE")%>)</span></p>   
				<asp:LinkButton ID="lnkMoreInfo" runat="server" CssClass="sponsor-me">Get to Know Me <i class='fa fa-arrow-circle-right'></i></asp:LinkButton>
			</div>
		</div>
        <!-- Child Card End --> 

    </AlternatingItemTemplate>

    <FooterTemplate></FooterTemplate>

</asp:Repeater>

<asp:Panel ID="pnlNav" runat="server" Visible="true">

    <!-- Pagination Starts -->
    <div class="row paginate text-center">
        <div class="col-xs-12">
            <ul class="pager">
              <li><asp:LinkButton ID="lnkPrevious" runat="server" Text="Previous" OnClick="lnkPrevious_Click" /></li>
              <li><asp:LinkButton ID="lnkNext" runat="server" Text="Next" OnClick="lnkNext_Click" /></li>
              <div class="goto">
                Go To Page:
                <asp:DropDownList ID="cmbPages" runat="server" AutoPostBack="True" OnSelectedIndexChanged="cmbPages_SelectedIndexChanged" />
              </div>
            </ul>
        </div>
    </div>
    <!-- Pagination Ends -->    

</asp:Panel>

<asp:Panel ID="pnlNoResults" runat="server" Visible="false">
    
    <!-- Error Message Start -->
    <div class="col-xs-12 showing-now text-center">
      <p>There are no children that match your search criteria. Please try again.</p>
    </div>  
    <!-- Error Message End -->
    
</asp:Panel>

<asp:Label ID="lblError" runat="server" Visible="false"></asp:Label>
