<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="PartnerChildProfileDisplay.ascx.cs" Inherits="OCM.BBISWebParts.PartnerChildProfileDisplay" %>

<!-- Child Info Card Start -->
        <div class="col-xs-12 child-info-card">
          <div class="col-xs-12 col-sm-6 col-md-5 child-photo">
            <asp:Image ID="imgPhoto" runat="server" CssClass="img-responsive" />
          </div>
          <div class="col-xs-12 col-sm-6 col-md-7 child-info-list">
            <div class="col-xs-12 child-greeting">
              <h1>Hello. My name is <span><asp:Label ID="lblName" runat="server" /></span>. It's nice to meet you.</h1>
            </div>
            <div class="col-xs-12 child-details">
              <p><i class="fa fa-male"></i><i class="fa fa-female"></i><span> <asp:Label ID="lblchildGender" runat="server" /></span></p>
              <p><i class="fa fa-map-marker fa-fw"></i><span> <asp:Label ID="lblCountry" runat="server" /></span></p>
              <p><i class="fa fa-birthday-cake fa-fw"></i><span><asp:Label ID="lblchildBirthdate" runat="server" /> (Age: <asp:Label ID="lblchildAge" runat="server" />)</span></p>
              <p><i class="fa fa-home fa-fw"></i><span><asp:Label ID="lblchildProject" runat="server" /></span></p>
              <div class="info-tabs hidden-sm">
                <div role="tabpanel">
                <!-- Nav tabs -->
                <ul class="nav nav-tabs" role="tablist">
                  <li role="presentation" class="active"><a href="#Bio1" aria-controls="Bio1" role="tab" data-toggle="tab">My Story</a></li>
                  <li role="presentation"><a href="#Project1" aria-controls="Project1" role="tab" data-toggle="tab">My Project</a></li>
                  <li role="presentation"><a href="#Country1" aria-controls="Country1" role="tab" data-toggle="tab">My Country</a></li>
                </ul>

                <!-- Tab panes -->
                <div class="tab-content">
                  <div role="tabpanel" class="tab-pane fade in active" id="Bio1">
                    <p><asp:Label ID="lblchildBio1" runat="server" /></p>
                  </div>
                  <div role="tabpanel" class="tab-pane fade" id="Project1">
                    <p><asp:Label ID="lblProjectInfo1" runat="server" /></p>
                  </div>
                  <div role="tabpanel" class="tab-pane fade" id="Country1">
                    <p><asp:Label ID="lblCountryInfo1" runat="server" /></p>
                  </div>
                </div>
              </div>
              </div>
              <asp:LinkButton ID="lnkSponsor1" runat="server" CssClass="sponsor-me">Sponsor Me <i class='fa fa-arrow-circle-right'></i></asp:LinkButton>
            </div>
          </div>

          <div class="col-xs-12 country-details visible-sm hidden-lg">

            <div class="info-tabs" role="tabpanel">
              <!-- Nav tabs -->
              <ul class="nav nav-tabs" role="tablist">
                <li role="presentation" class="active"><a href="#Bio" aria-controls="Bio" role="tab" data-toggle="tab">My Story</a></li>
                <li role="presentation"><a href="#Project" aria-controls="Project" role="tab" data-toggle="tab">My Project</a></li>
                <li role="presentation"><a href="#Country" aria-controls="Country" role="tab" data-toggle="tab">My Country</a></li>
              </ul>

              <!-- Tab panes -->
              <div class="tab-content">
                <div role="tabpanel" class="tab-pane fade in active" id="Bio">
                  <p><asp:Label ID="lblchildBio2" runat="server" /></p>
                </div>
                <div role="tabpanel" class="tab-pane fade" id="Project">
                  <p><asp:Label ID="lblProjectInfo2" runat="server" /></p>
                </div>
                <div role="tabpanel" class="tab-pane fade" id="Country">
                  <p><asp:Label ID="lblCountryInfo2" runat="server" /></p>
                </div>
              </div>
            </div>

            <asp:LinkButton ID="lnkSponsor2" runat="server" CssClass="sponsor-me">Sponsor Me <i class='fa fa-arrow-circle-right'></i></asp:LinkButton>
          </div>

        </div>
        <!-- Child Info Card End -->

<asp:Label ID="lblError" runat="server" Visible="false" />
