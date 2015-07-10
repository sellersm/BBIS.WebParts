<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="PartnerEventSponsorshipPaymentFormDisplay.ascx.cs" Inherits="OCM.BBISWebParts.PartnerEventSponsorshipPaymentFormDisplay" %>
<style type="text/css">
    .Validation
    {
        color: Red;
        font-weight: bold;
    }
</style>
<asp:Label ID="lblReferrer" runat="server" ForeColor="Green" Visible="true" Text="" /><br />
<asp:Label ID="lblError" runat="server" ForeColor="Red" Visible="false" /><br />
<asp:Label ID="lblTotal" runat="server" />
<table>
    <tbody><tr>
        <td class="style1">            
            <table>
                <tbody>
                    <tr>
                        <td></td>
                    </tr>
                <tr>
                    <td class="style3">
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server"  ValidationGroup="Checkout" HeaderText="The following required fields are missing" ForeColor="Red" CssClass="Validation" />
                    </td>
                </tr>
                <tr>
                    <td class="NCC_ScholarshipApp_subSectionHeader">
                        Please provide the following information:
                    </td>
                </tr>
                <tr>
                    <td class="style1">
                        <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                            <ContentTemplate>
                                <table>
                                    <tbody>
                                        <tr>
                                            <td>
                                                <span id="PC1689_ctl00_lblFirstName" class="BBFieldCaption ChildSearchFieldCaption">First Name *</span></td>
                                            <td class="style4">
                                                <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFirstName" ErrorMessage="First Name" ForeColor="Red" ValidationGroup="Checkout">*</asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <span id="PC1689_ctl00_lblMI" class="BBFieldCaption ChildSearchFieldCaption">Middle Initial</span>
                                            </td>
                                            <td class="style4">
                                                <asp:TextBox ID="txtMiddle" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <span id="PC1689_ctl00_lblLastName" class="BBFieldCaption ChildSearchFieldCaption">Last Name *</span></td>
                                            <td class="style4">
                                                <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
                                                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                                    ControlToValidate="txtLastName" ErrorMessage="Last Name" ForeColor="Red" 
                                                    ValidationGroup="Checkout">*</asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td><span class="BBFieldCaption ChildSearchFieldCaption">Address 1 *</span></td>
                                            <td class="style4">
                                                <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
                                                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                                                    ControlToValidate="txtAddress" ErrorMessage="Address 1" ForeColor="Red" 
                                                    ValidationGroup="Checkout">*</asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td><span id="PC1689_ctl00_lblAddress2" class="BBFieldCaption ChildSearchFieldCaption">Address 2</span>
                                            </td>
                                            <td class="style4">
                                                <asp:TextBox ID="txtAddress2" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td><span class="BBFieldCaption ChildSearchFieldCaption">City *</span></td>
                                            <td class="style4">
                                                <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
                                                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtCity" ErrorMessage="City" ForeColor="Red" ValidationGroup="Checkout">*</asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td><span class="BBFieldCaption ChildSearchFieldCaption">State *</span></td>
                                            <td class="style4">
                                                <asp:DropDownList ID="cmbState" runat="server">
                                                    <asp:ListItem Value="">[Select State]</asp:ListItem>
                                                    <asp:ListItem Value="AL">Alabama</asp:ListItem>
                                                    <asp:ListItem Value="AK">Alaska</asp:ListItem>
                                                    <asp:ListItem Value="AZ">Arizona</asp:ListItem>
                                                    <asp:ListItem Value="AR">Arkansas</asp:ListItem>
                                                    <asp:ListItem Value="CA">California</asp:ListItem>
                                                    <asp:ListItem Value="CO">Colorado</asp:ListItem>
                                                    <asp:ListItem Value="CT">Connecticut</asp:ListItem>
                                                    <asp:ListItem Value="DC">District of Columbia</asp:ListItem>
                                                    <asp:ListItem Value="DE">Delaware</asp:ListItem>
                                                    <asp:ListItem Value="FL">Florida</asp:ListItem>
                                                    <asp:ListItem Value="GA">Georgia</asp:ListItem>
                                                    <asp:ListItem Value="HI">Hawaii</asp:ListItem>
                                                    <asp:ListItem Value="ID">Idaho</asp:ListItem>
                                                    <asp:ListItem Value="IL">Illinois</asp:ListItem>
                                                    <asp:ListItem Value="IN">Indiana</asp:ListItem>
                                                    <asp:ListItem Value="IA">Iowa</asp:ListItem>
                                                    <asp:ListItem Value="KS">Kansas</asp:ListItem>
                                                    <asp:ListItem Value="KY">Kentucky</asp:ListItem>
                                                    <asp:ListItem Value="LA">Louisiana</asp:ListItem>
                                                    <asp:ListItem Value="ME">Maine</asp:ListItem>
                                                    <asp:ListItem Value="MD">Maryland</asp:ListItem>
                                                    <asp:ListItem Value="MA">Massachusetts</asp:ListItem>
                                                    <asp:ListItem Value="MI">Michigan</asp:ListItem>
                                                    <asp:ListItem Value="MN">Minnesota</asp:ListItem>
                                                    <asp:ListItem Value="MS">Mississippi</asp:ListItem>
                                                    <asp:ListItem Value="MO">Missouri</asp:ListItem>
                                                    <asp:ListItem Value="MT">Montana</asp:ListItem>
                                                    <asp:ListItem Value="NE">Nebraska</asp:ListItem>
                                                    <asp:ListItem Value="NV">Nevada</asp:ListItem>
                                                    <asp:ListItem Value="NH">New Hampshire</asp:ListItem>
                                                    <asp:ListItem Value="NJ">New Jersey</asp:ListItem>
                                                    <asp:ListItem Value="NM">New Mexico</asp:ListItem>
                                                    <asp:ListItem Value="NY">New York</asp:ListItem>
                                                    <asp:ListItem Value="NC">North Carolina</asp:ListItem>
                                                    <asp:ListItem Value="ND">North Dakota</asp:ListItem>
                                                    <asp:ListItem Value="OH">Ohio</asp:ListItem>
                                                    <asp:ListItem Value="OK">Oklahoma</asp:ListItem>
                                                    <asp:ListItem Value="OR">Oregon</asp:ListItem>
                                                    <asp:ListItem Value="PA">Pennsylvania</asp:ListItem>
                                                    <asp:ListItem Value="RI">Rhode Island</asp:ListItem>
                                                    <asp:ListItem Value="SD">South Carolina</asp:ListItem>
                                                    <asp:ListItem Value="SD">South Dakota</asp:ListItem>
                                                    <asp:ListItem Value="TN">Tennessee</asp:ListItem>
                                                    <asp:ListItem Value="TX">Texas</asp:ListItem>
                                                    <asp:ListItem Value="UT">Utah</asp:ListItem>
                                                    <asp:ListItem Value="VT">Vermont</asp:ListItem>
                                                    <asp:ListItem Value="VA">Virginia</asp:ListItem>
                                                    <asp:ListItem Value="WA">Washington</asp:ListItem>
                                                    <asp:ListItem Value="WV">West Virginia</asp:ListItem>
                                                    <asp:ListItem Value="WI">Wisconsin</asp:ListItem>
                                                    <asp:ListItem Value="WY">Wyoming</asp:ListItem>
                                                </asp:DropDownList>
                                                &nbsp;<asp:RequiredFieldValidator ID="reqState" runat="server" 
                                                    ControlToValidate="cmbState" ErrorMessage="State" ForeColor="Red" 
                                                    ValidationGroup="Checkout">*</asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                      
                                        <tr>
                                            <td>
                                                <span id="PC1689_ctl00_lblZip" class="BBFieldCaption ChildSearchFieldCaption">Zip *</span></td>
                                            <td class="style4">
                                                <asp:TextBox ID="txtZip" runat="server"></asp:TextBox>
                                                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                                    ControlToValidate="txtZip" ErrorMessage="Zip" ForeColor="Red" 
                                                    ValidationGroup="Checkout">*</asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <span id="PC1689_ctl00_lblDayPhone" class="BBFieldCaption ChildSearchFieldCaption">
												Mobile Phone *</span>
                                                </td>
                                            <td class="style4">
                                                <span id="PC1689_ctl00_reqVldDayPhone" style="color:Red;display:none;">&nbsp;*</span><asp:TextBox ID="txtMobilePhone" runat="server"></asp:TextBox>
                                                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                                                    ControlToValidate="txtMobilePhone" ErrorMessage="Mobile Phone" ForeColor="Red" 
                                                    ValidationGroup="Checkout">*</asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <span id="PC1689_ctl00_lblEveningPhone" class="BBFieldCaption ChildSearchFieldCaption">Home Phone</span>
                                            </td>
                                            <td class="style4">
                                                <asp:TextBox ID="txtHomePhone" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <span id="PC1689_ctl00_lblEmail" class="BBFieldCaption ChildSearchFieldCaption">
												Email *</span>
                                                </td>
                                            <td class="style4">
                                                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                                                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                                                    ControlToValidate="txtEmail" ErrorMessage="Email" ForeColor="Red" 
                                                    ValidationGroup="Checkout">*</asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </ContentTemplate>
                        </asp:UpdatePanel>                        
                    </td>
                </tr>
            </tbody></table>
        </td>
    </tr>
    <tr>
        <td class="style1">
            <asp:UpdatePanel ID="updateBilling" runat="server">
                <ContentTemplate>
                    <table>
                        <tr>
                            <td>
                                <span class="BBFieldCaption ChildSearchFieldCaptionBold">Is your Billing Address the same as above? *</span>                            
                                <asp:RadioButtonList 
                                    ID="radBilling" runat="server" RepeatDirection="Horizontal" 
                                    AutoPostBack="True" onselectedindexchanged="radBilling_SelectedIndexChanged">
                                    <asp:ListItem Selected="True" Value="Yes">Yes</asp:ListItem>
                                    <asp:ListItem Value="No">No</asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Panel ID="pnlBillingAddress" runat="server" Visible="false">
                                    <table>
                                        <tr>
                                            <td>Billing Address:</td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td><span class="BBFieldCaption ChildSearchFieldCaption">Address 1 *</span></td>
                                            <td class="style4">
                                                <asp:TextBox ID="txtBillingAddress" runat="server"></asp:TextBox>
                                                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                                    ControlToValidate="txtBillingAddress" ErrorMessage="Billing Address 1" ForeColor="Red" 
                                                    ValidationGroup="Checkout">*</asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td><span class="BBFieldCaption ChildSearchFieldCaption">Address 2</span>
                                            </td>
                                            <td class="style4">
                                                <asp:TextBox ID="txtBillingAddress2" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td><span class="BBFieldCaption ChildSearchFieldCaption">City *</span></td>
                                            <td class="style4">
                                                <asp:TextBox ID="txtBillingCity" runat="server"></asp:TextBox>
                                                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtBillingCity" ErrorMessage="Billing City" ForeColor="Red" ValidationGroup="Checkout">*</asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td><span class="BBFieldCaption ChildSearchFieldCaption">State *</span></td>
                                            <td class="style4">
                                                <asp:DropDownList ID="cmbBillingState" runat="server">
                                                    <asp:ListItem Value="">[Select State]</asp:ListItem>
                                                    <asp:ListItem Value="AL">Alabama</asp:ListItem>
                                                    <asp:ListItem Value="AK">Alaska</asp:ListItem>
                                                    <asp:ListItem Value="AZ">Arizona</asp:ListItem>
                                                    <asp:ListItem Value="AR">Arkansas</asp:ListItem>
                                                    <asp:ListItem Value="CA">California</asp:ListItem>
                                                    <asp:ListItem Value="CO">Colorado</asp:ListItem>
                                                    <asp:ListItem Value="CT">Connecticut</asp:ListItem>
                                                    <asp:ListItem Value="DC">District of Columbia</asp:ListItem>
                                                    <asp:ListItem Value="DE">Delaware</asp:ListItem>
                                                    <asp:ListItem Value="FL">Florida</asp:ListItem>
                                                    <asp:ListItem Value="GA">Georgia</asp:ListItem>
                                                    <asp:ListItem Value="HI">Hawaii</asp:ListItem>
                                                    <asp:ListItem Value="ID">Idaho</asp:ListItem>
                                                    <asp:ListItem Value="IL">Illinois</asp:ListItem>
                                                    <asp:ListItem Value="IN">Indiana</asp:ListItem>
                                                    <asp:ListItem Value="IA">Iowa</asp:ListItem>
                                                    <asp:ListItem Value="KS">Kansas</asp:ListItem>
                                                    <asp:ListItem Value="KY">Kentucky</asp:ListItem>
                                                    <asp:ListItem Value="LA">Louisiana</asp:ListItem>
                                                    <asp:ListItem Value="ME">Maine</asp:ListItem>
                                                    <asp:ListItem Value="MD">Maryland</asp:ListItem>
                                                    <asp:ListItem Value="MA">Massachusetts</asp:ListItem>
                                                    <asp:ListItem Value="MI">Michigan</asp:ListItem>
                                                    <asp:ListItem Value="MN">Minnesota</asp:ListItem>
                                                    <asp:ListItem Value="MS">Mississippi</asp:ListItem>
                                                    <asp:ListItem Value="MO">Missouri</asp:ListItem>
                                                    <asp:ListItem Value="MT">Montana</asp:ListItem>
                                                    <asp:ListItem Value="NE">Nebraska</asp:ListItem>
                                                    <asp:ListItem Value="NV">Nevada</asp:ListItem>
                                                    <asp:ListItem Value="NH">New Hampshire</asp:ListItem>
                                                    <asp:ListItem Value="NJ">New Jersey</asp:ListItem>
                                                    <asp:ListItem Value="NM">New Mexico</asp:ListItem>
                                                    <asp:ListItem Value="NY">New York</asp:ListItem>
                                                    <asp:ListItem Value="NC">North Carolina</asp:ListItem>
                                                    <asp:ListItem Value="ND">North Dakota</asp:ListItem>
                                                    <asp:ListItem Value="OH">Ohio</asp:ListItem>
                                                    <asp:ListItem Value="OK">Oklahoma</asp:ListItem>
                                                    <asp:ListItem Value="OR">Oregon</asp:ListItem>
                                                    <asp:ListItem Value="PA">Pennsylvania</asp:ListItem>
                                                    <asp:ListItem Value="RI">Rhode Island</asp:ListItem>
                                                    <asp:ListItem Value="SD">South Carolina</asp:ListItem>
                                                    <asp:ListItem Value="SD">South Dakota</asp:ListItem>
                                                    <asp:ListItem Value="TN">Tennessee</asp:ListItem>
                                                    <asp:ListItem Value="TX">Texas</asp:ListItem>
                                                    <asp:ListItem Value="UT">Utah</asp:ListItem>
                                                    <asp:ListItem Value="VT">Vermont</asp:ListItem>
                                                    <asp:ListItem Value="VA">Virginia</asp:ListItem>
                                                    <asp:ListItem Value="WA">Washington</asp:ListItem>
                                                    <asp:ListItem Value="WV">West Virginia</asp:ListItem>
                                                    <asp:ListItem Value="WI">Wisconsin</asp:ListItem>
                                                    <asp:ListItem Value="WY">Wyoming</asp:ListItem>
                                                </asp:DropDownList>
                                                &nbsp;<asp:RequiredFieldValidator ID="reqBillingState" runat="server" 
                                                    ControlToValidate="cmbBillingState" ErrorMessage="Billing State" ForeColor="Red" 
                                                    ValidationGroup="Checkout">*</asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <span class="BBFieldCaption ChildSearchFieldCaption">Zip *</span></td>
                                            <td class="style4">
                                                <asp:TextBox ID="txtBillingZip" runat="server"></asp:TextBox>
                                                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                                                    ControlToValidate="txtBillingZip" ErrorMessage="Billing Zip" ForeColor="Red" 
                                                    ValidationGroup="Checkout">*</asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                       
                                    </table>
                                </asp:Panel>
                            </td>
                        </tr>
                    </table>
                </ContentTemplate>
            </asp:UpdatePanel>
        </td>
    </tr>
    <tr>
        <td class="style1">
            <asp:UpdatePanel ID="updateHearAbout" runat="server">
                <ContentTemplate>
                    <table>
                        <tr>
                            <td><hr></td>
                        </tr>
                        <tr>
                            <td class="NCC_ScholarshipApp_subSectionHeader"><span id="PC1689_ctl00_lblAdditionInfoHeader">Additional Information</span></td>
                        </tr>
                        <tr>
                            <td>
                                <table>
                                    <tr>
                                        <td class="style2">
                                            <span id="PC1689_ctl00_lblCurrentSponsor" class="BBFieldCaption ChildSearchFieldCaption">Are You a Current Sponsor? *</span>
                                        </td>
                                        <td>
                                            <asp:RadioButtonList id="radIsSponsor" runat="server" AutoPostBack="True" 
                                                onselectedindexchanged="radIsSponsor_SelectedIndexChanged" 
                                                RepeatDirection="Horizontal">
                                                <asp:ListItem Value="Yes">Yes</asp:ListItem>
                                                <asp:ListItem Value="No" Selected="True">No</asp:ListItem>
                                            </asp:RadioButtonList>
                                            <span id="PC1689_ctl00_reqVldCurrentSponsor" style="color:Red;display:none;">&nbsp;*</span>
                                        </td>
                                    </tr>                                    
                                </table>
                            </td>
                        </tr>
                        
                        <tr>
                            <td class="style2"></td>
                            <td>
                                            
                            </td>
                        </tr>                        
                    </table>
                </ContentTemplate>
            </asp:UpdatePanel>
        </td>
    </tr>
    <tr>
        <td class="style1">
            <asp:UpdatePanel ID="updatePayment" runat="server">
                <ContentTemplate>
                    <table>
                        <tr>
                            <td>
                                <hr>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Panel ID="pnlCC" runat="server" >
                                    <table>
                                        <tr>
                                                <td class="NCC_ScholarshipApp_subSectionHeader">Credit Card Information:</td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <table>
                                                    <tr>
                                                        <td class="style1" colspan="2">
                                                            <span id="PC1689_ctl00_lblCcName" class="BBFieldCaption ChildSearchFieldCaption">Name on Card *</span>
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="txtCcName" runat="server" Width="175px" CssClass="BBFieldControlCell ChildSearchFieldControlCell_long" MaxLength="50" />
                                                            <asp:RequiredFieldValidator ID="reqCcName" runat="server" ControlToValidate="txtCcName" Text="*" ErrorMessage="Credit Card Name" ForeColor="Red" ValidationGroup="Checkout" />                                                            
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style1" colspan="2">
                                                            <span id="PC1689_ctl00_lblCcNumber" class="BBFieldCaption ChildSearchFieldCaption">Card Number *</span>
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="txtCcNumber" runat="server" Width="175px" CssClass="BBFieldControlCell ChildSearchFieldControlCell_long" MaxLength="50" />
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="txtCcNumber" Text="*" ErrorMessage="Credit Card Number" ForeColor="Red" ValidationGroup="Checkout" />                                                            
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style1" colspan="2">
                                                            <span id="PC1689_ctl00_lblCcSecurityCode" class="BBFieldCaption ChildSearchFieldCaption">Security Code *</span>
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="txtCcSecurityCode" runat="server" Width="40px" CssClass="BBFieldControlCell ChildSearchFieldControlCell_long" MaxLength="10" />
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="txtCcSecurityCode" Text="*" ErrorMessage="Credit Card Security Code" ForeColor="Red" ValidationGroup="Checkout" />                                                            
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style1" colspan="2">
                                                            <span id="PC1689_ctl00_lblCcType" class="BBFieldCaption ChildSearchFieldCaption">Credit Card Type *</span>
                                                        </td>
                                                        <td>
                                                            <asp:DropDownList ID="cmbCcType" runat="server">
                                                                <asp:ListItem value="">-- Select --</asp:ListItem>
			                                                    <asp:ListItem value="MasterCard">MasterCard</asp:ListItem>
			                                                    <asp:ListItem value="Visa">Visa</asp:ListItem>
			                                                    <asp:ListItem value="AmericanExpress">American Express</asp:ListItem>
			                                                    <asp:ListItem value="Discover">Discover</asp:ListItem>
                                                            </asp:DropDownList>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="cmbCcType" Text="*" ErrorMessage="Credit Card Type" ForeColor="Red" ValidationGroup="Checkout" />
                                                            </span>
                                                    </td></tr>
                                                    <tr>
                                                        <td class="style1" colspan="2">
                                                            <span id="PC1689_ctl00_lblCcExpDate" class="BBFieldCaption ChildSearchFieldCaption">Expiration Date *</span>
                                                        </td>
                                                        <td>
                                                            <asp:DropDownList ID="cmbCcExpMonth" runat="server">
                                                                <asp:ListItem value="">-- Month --</asp:ListItem>
			                                                    <asp:ListItem value="01">01</asp:ListItem>
			                                                    <asp:ListItem value="02">02</asp:ListItem>
			                                                    <asp:ListItem value="03">03</asp:ListItem>
			                                                    <asp:ListItem value="04">04</asp:ListItem>
			                                                    <asp:ListItem value="05">05</asp:ListItem>
			                                                    <asp:ListItem value="06">06</asp:ListItem>
			                                                    <asp:ListItem value="07">07</asp:ListItem>
			                                                    <asp:ListItem value="08">08</asp:ListItem>
			                                                    <asp:ListItem value="09">09</asp:ListItem>
			                                                    <asp:ListItem value="10">10</asp:ListItem>
			                                                    <asp:ListItem value="11">11</asp:ListItem>
			                                                    <asp:ListItem value="12">12</asp:ListItem>
                                                            </asp:DropDownList>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="cmbCcExpMonth" Text="*" ErrorMessage="Credit Card Expiration Month" ForeColor="Red" ValidationGroup="Checkout" />
                                                            </span>
                                                            <asp:DropDownList ID="cmbCcExpYear" runat="server">
                                                            
                                                            </asp:DropDownList>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ControlToValidate="cmbCcExpYear" Text="*" ErrorMessage="Credit Card Expiration Month" ForeColor="Red" ValidationGroup="Checkout" />
                                                        </td>
                                                    </tr>
												</table>
												<table>
													<tr><td>&nbsp;</td></tr>
                                                    <tr>
                                                        <td>
                                                            I authorize One Child Matters to charge my credit card $39 on an ongoing, monthly basis. NOTE: you may cancel this monthly charge at any time by contacting One Child Matters
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                    </table>
                                </asp:Panel>
                            </td>
                        </tr>                    
                    </table>
                </ContentTemplate>
            </asp:UpdatePanel>            
        </td>
    </tr>
    <tr>
        <td>
            <hr />
        </td>
    </tr>
    <tr>
        <td class="style1">
            &nbsp;<asp:Button ID="btnSubmit" runat="server" Text="Complete Sponsorship" 
                ValidationGroup="Checkout" onclick="btnSubmit_Click" />
        </td>
    </tr>
</tbody>
</table>