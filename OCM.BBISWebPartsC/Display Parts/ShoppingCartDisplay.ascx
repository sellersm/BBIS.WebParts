﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ShoppingCartDisplay.ascx.cs" Inherits="OCM.BBISWebParts.ShoppingCartDisplay" %>
<head>
    <title></title>
   
</head>
<body>

<div id="main-wrapper-sco" class="clearfix">
    <div class="region region-content">
        <div id="block-system-main" class="block block-system">
            <div class="content">
                <div class="panel-display panel-2col clearfix">
                    
                    <div class="panel-panel panel-col-first">
                        <div class="inside">
                            <div class="panel-pane pane-block pane-wvcheckout-cart">
                                <div class="pane-content">
                                    <div class="basket-items" id="basket-items">
                                        <h1>
                                            <div class="float-left" style="margin-left: 10px;">
                                                My Shopping Cart</div>
                                            <div class="sprite-icon-basket sprite-icons-cart">
                                                <img src="http://localhost/bbis/givingcatalog/image/shoppingcart/cart_icon.png" width="20px" height="22px" style="margin-left:-10px"/>
                                            </div>
                                            <div class="clear-both">
                                            </div>
                                        </h1>
                                        <div id="basketError" class="fieldError">
                                        </div>
                                        <div class="item card-enabled" id="cartitem-121764727">
                                            <div>
                                                <div class="item-image">
                                                    <img alt="Deep Well" src="https://donate.worldvision.org/OA_MEDIA/xxwvus/istore/deepwell_08_lg.jpg"
                                                        width="70"></div>
                                                <div class="item-information">
                                                    <div class="item-description">
                                                        <h4>
                                                            <a href="/OA_HTML/xxwv2ibeCCtpItmDspRte.jsp?item=154" onclick="sendLPOS('lft_txt_DeepWell_MyBasket','');">
                                                                Water Filter</a></h4>
                                                        <div class="product-type">
                                                            <div class="sponsorship">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="line-item-summary">
                                                        <form action="/commerce/checkout?msg=&amp;ref=xxwv2ibeCCtpSctDspRte.jsp%3Fsection%3D10373%26beginIndex%3D0&amp;add=true"
                                                        method="post" id="wvcheckout-update-line-form" accept-charset="UTF-8">
                                                        <div>
                                                            <div id="line-item-error" class="panelError">
                                                            </div>
                                                            <div class="price-error fieldError">
                                                            </div>
                                                            <div class="price">
                                                                <div class="form-item form-type-textfield form-item-amount">
                                                                    <input maxlength="6" class="numeric-only edit-amount form-text" style="" type="text"
                                                                        id="edit-amount" name="amount" value="12.00" size="60">
                                                                </div>
                                                                <div class="float-right">
                                                                    $&nbsp;</div>
                                                                <div class="clear-both">
                                                                </div>
                                                            </div>
                                                            <div class="qty-error fieldError">
                                                            </div>
                                                            <div class="qty">
                                                                <div class="form-item form-type-textfield form-item-qty">
                                                                    <input maxlength="3" class="numeric-only form-text" style="" type="text" id="edit-qty"
                                                                        name="qty" value="1" size="60">
                                                                </div>
                                                                <div class="float-right">
                                                                    Qty&nbsp;</div>
                                                                <div class="clear-both">
                                                                </div>
                                                            </div>
                                                            <input type="hidden" name="line" value="121764727"/>
                                                            <input type="hidden" name="cart" value="28512027"/>
                                                            <div class="item-total">
                                                                Total: $12.00</div>
                                                            <div class="item-actions">
                                                                <a href="" class="use-ajax action ajax-processed"
                                                                    title="Remove this item from your basket">Remove</a> |
                                                                <input type="submit" id="edit-submit" name="op" value="Update" class="form-submit ajax-processed"/></div>
                                                            <input type="hidden" name="form_build_id" value="form-hakKszAJhpBweSL2Sh3GMyIj_iK2mBSxy39Kxc1a4Ws"/>
                                                            <input type="hidden" name="form_id" value="wvcheckout_update_line_form"/>
                                                        </div>
                                                        </form>
                                                    </div>
                                                </div>
                                                <div class="clear-both">
                                                </div>
                                            </div>
                                            <div>
                                                <!--<div class="item-gift-card">
                                                    <a href="/commerce/wvcheckout/nojs/cardoptions/lft/MyBasket" class="ctools-use-modal ctools-modal-card-options-lightbox ctools-use-modal-processed"
                                                        title="Free card available during checkout">
                                                        <div class="sprite-icon-gift-card sprite-icons-cart float-left">
                                                        </div>
                                                        <div class="float-left">
                                                            Free card available during checkout</div>
                                                        <div class="sprite-icon-help sprite-icons-cart float-left">
                                                        </div>
                                                    </a>
                                                    <div class="clear-both">
                                                    </div>
                                                </div>-->
                                                <div class="card-multiple-qty">
                                                </div>
                                            </div>
                                            <div class="clear-both">
                                            </div>
                                        </div>
                                        <!--<div class="item card-enabled" id="cartitem-121764687">
                                            <div>
                                                <div class="item-image">
                                                    <img alt="Water for One Person" src="https://donate.worldvision.org/OA_MEDIA/xxwvus/istore/Water_For_Family_LG_FY14.jpg"
                                                        width="90"></div>
                                                <div class="item-information">
                                                    <div class="item-description">
                                                        <h4>
                                                            <a href="/OA_HTML/xxwv2ibeCCtpItmDspRte.jsp?item=2672467" onclick="sendLPOS('lft_txt_WaterforOnePerson_MyBasket','');">
                                                                Water for One Person</a></h4>
                                                        <div class="product-type">
                                                            <div class="sponsorship">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="line-item-summary">
                                                        <form action="/commerce/checkout?msg=&amp;ref=xxwv2ibeCCtpSctDspRte.jsp%3Fsection%3D10373%26beginIndex%3D0&amp;add=true"
                                                        method="post" id="wvcheckout-update-line-form--2" accept-charset="UTF-8">
                                                        <div >
                                                            <div id="line-item-error" class="panelError">
                                                            </div>
                                                            <div class="price-error fieldError">
                                                            </div>
                                                            <div class="price">
                                                                <div class="form-item form-type-textfield form-item-amount">
                                                                    <input maxlength="6" class="numeric-only edit-amount form-text" style="" type="text"
                                                                        id="edit-amount--2" name="amount" value="25" size="60">
                                                                </div>
                                                                <div class="float-right">
                                                                    $&nbsp;</div>
                                                                <div class="clear-both">
                                                                </div>
                                                            </div>
                                                            <div class="qty-error fieldError">
                                                            </div>
                                                            <div class="qty">
                                                                <div class="form-item form-type-textfield form-item-qty">
                                                                    <input maxlength="3" class="numeric-only form-text" style="" type="text" id="edit-qty--2"
                                                                        name="qty" value="1" size="60">
                                                                </div>
                                                                <div class="float-right">
                                                                    Qty&nbsp;</div>
                                                                <div class="clear-both">
                                                                </div>
                                                            </div>
                                                            <input type="hidden" name="line" value="121764687">
                                                            <input type="hidden" name="cart" value="28512027">
                                                            <div class="item-total">
                                                                Total: $25</div>
                                                            <div class="item-actions">
                                                                <a href="/commerce/wvcheckout/deletecartline/28512027/121764687" class="use-ajax action ajax-processed"
                                                                    title="Remove this item from your basket">Remove</a> |
                                                                <input type="submit" id="edit-submit--2" name="op" value="Update" class="form-submit ajax-processed"></div>
                                                            <input type="hidden" name="form_build_id" value="form-g1OZ-qmc_ekMqn7xG7y6XOW5tccAzGTlfu2Yo3HXP_w">
                                                            <input type="hidden" name="form_id" value="wvcheckout_update_line_form">
                                                        </div>
                                                        </form>
                                                    </div>
                                                </div>
                                                <div class="clear-both">
                                                </div>
                                            </div>
                                            <div>
                                                <div class="item-gift-card">
                                                    <a href="/commerce/wvcheckout/nojs/cardoptions/lft/MyBasket" class="ctools-use-modal ctools-modal-card-options-lightbox ctools-use-modal-processed"
                                                        title="Free card available during checkout">
                                                        <div class="sprite-icon-gift-card sprite-icons-cart float-left">
                                                        </div>
                                                        <div class="float-left">
                                                            Free card available during checkout</div>
                                                        <div class="sprite-icon-help sprite-icons-cart float-left">
                                                        </div>
                                                    </a>
                                                    <div class="clear-both">
                                                    </div>
                                                </div>
                                                <div class="card-multiple-qty">
                                                </div>
                                            </div>
                                            <div class="clear-both">
                                            </div>
                                        </div>-->
                                        <div class="donation-total">
                                            <div class="panelError">
                                            </div>
                                            <h5 class="label">
                                                Donation Total</h5>
                                            <h5 class="amount">
                                                $12.00</h5>
                                            <div class="clear-both">
                                            </div>
                                        </div>
                                        <div class="continue-browsing">
                                            <a href="http://donate.worldvision.org/OA_HTML/xxwv2ibeCCtpSctDspRte.jsp?section=10373&amp;beginIndex=0"
                                                style="width: 150px;" class="grayButton bin" onclick="sendLPOS('lft_btn_ContinueBrowsing_MyBasket','');">
                                                Continue Browsing</a></div>
                                    </div>
                                    <script type="text/javascript" src="https://view.atdmt.com/jaction/vwvwor_WVMICartPage_1"></script>
                                    <noscript>
                                        &lt;iframe src="https://view.atdmt.com/iaction/vwvwor_WVMICartPage_1" width="1"
                                        height="1" frameborder="0" scrolling="No" marginheight="0" marginwidth="0" topmargin="0"
                                        leftmargin="0"&gt;&lt;/iframe&gt;</noscript>
                                </div>
                            </div>
                            <div class="panel-separator">
                            </div>
                            <div class="panel-pane pane-custom pane-1">
                                <div class="pane-content">
                                    <!-- begin Doubleclick Floodlight tag -->
                                    <!--WVUS DART TAG-->
                                    
                                    <!--ALC/Gift Catalog DART TAG-->
                                    <script type="text/javascript">
                                        var axel = Math.random() + "";
                                        var a = axel * 10000000000000;
                                        document.write('<iframe src="https://4212015.fls.doubleclick.net/activityi;src=4212015;type=rt;cat=world910;ord=1;num=' + a + '?" width="1" height="1" frameborder="0" style="display:none"></iframe>');
                                    </script>
                                    <iframe src="https://4212015.fls.doubleclick.net/activityi;src=4212015;type=rt;cat=world910;ord=1;num=1019673317205.1609?"
                                        width="1" height="1" frameborder="0" style="display: none"></iframe>
                                    <noscript>
                                        &lt;iframe src="https://4212015.fls.doubleclick.net/activityi;src=4212015;type=rt;cat=world910;ord=1;num=1?"
                                        width="1" height="1" frameborder="0" style="display:none"&gt;&lt;/iframe&gt;
                                    </noscript>
                                    <!-- end Doubleclick Floodlight tag -->
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="panel-panel panel-col-last">
                        <div class="inside">
                            <div class="panel-pane pane-custom pane-2">
                                <div class="pane-content">
                                    <div class="checkout-options">
                                        <!--<h2>
                                            <div class="float-left">
                                                Secure Checkout</div>
                                            <div class="sprite-icon-lock sprite-icons-cart float-right">
                                            </div>
                                            <div class="clear-both">
                                            </div>
                                        </h2>-->
                                        <h2>
                                            <div class="float-left"  style="margin-left: 10px;">
                                                Secure Checkout</div>
                                            <div class="sprite-icon-lock sprite-icons-cart float-right">
                                                <img src="http://localhost/bbis/givingcatalog/image/shoppingcart/lock1.png" width="20px" height="22px" style="margin-left:-10px"/>
                                            </div>
                                            <div class="clear-both">
                                            </div>
                                        </h2>
                                        <div id="signInSectionError" class="fieldError">
                                        </div>
                                        <div class="checkout-options-inner" runat="server" id="pnlSecureCheckout">
                                            <div class="column1" >
                                                <form action="/commerce/checkout?msg=&amp;ref=xxwv2ibeCCtpSctDspRte.jsp%3Fsection%3D10373%26beginIndex%3D0&amp;add=true"
                                                method="post" id="wvcheckout-guest-checkout-enabled" accept-charset="UTF-8">
                                                <div >
                                                    <div id="guest_checkout" class="enabled">
                                                        <h5>
                                                            Guest Donor</h5>
                                                        <p>
                                                            Continue as a new donor and checkout as a guest. You may create an account sign
                                                            in later.
                                                        </p>
                                                    </div>
                                                    <asp:Button ID="btnGuestDonor" runat="server" 
                                                        class="orangeButton bin form-submit ajax-processed" Text="Continue" 
                                                        onclick="btnGuestDonor_Click" />
                                                    <%--<input class="orangeButton bin form-submit ajax-processed" type="submit" id="edit-guest-checkout-submit"
                                                        name="op" value="Continue" runat="server"/>
                                                        <input type="hidden" name="form_build_id" value="form-xCIO8OORwysz2emtuQQmu7KxwiPKOxW8SlTR8O0TcQw"/>
                                                    <input type="hidden" name="form_id" value="wvcheckout_guest_checkout_enabled"/>--%>
                                                </div>
                                                </form>
                                            </div>
                                            <div class="column2 left-border" id="signin-form">
                                                <form action="/commerce/checkout?msg=&amp;ref=xxwv2ibeCCtpSctDspRte.jsp%3Fsection%3D10373%26beginIndex%3D0&amp;add=true"
                                                method="post" id="wvcheckout-signin-form" accept-charset="UTF-8">
                                                <div>
                                                    <div id="box">
                                                        <h5>
                                                            Returning Donor</h5>
                                                        <div id="signInError" class="panelError">
                                                        </div>
                                                    </div>
                                                    <div id="signInEmailError" class="fieldError">
                                                    </div>
                                                    <div class="form-item form-type-textfield form-item-email">
                                                        <input data-default-val="Email" class="clear-default-value inactive form-text" type="text"
                                                            id="edit-email" name="email" value="Email" size="20" maxlength="128" 
                                                            style="height: 25px; width: 150px">
                                                    </div>
                                                    <div id="signInPWError" class="fieldError">
                                                    </div>
                                                    <div class="form-item form-type-password form-item-password">
                                                        <input style="display: none" class="password form-submit-field form-text" type="password"
                                                            id="edit-password" name="password" size="20" maxlength="128">
                                                    </div>
                                                    <div class="form-item form-type-textfield form-item-fake-password">
                                                        <input data-default-val="Password" class="clear-default-value inactive fake-password form-text"
                                                            type="text" id="edit-fake-password" name="fake-password" value="Password" size="20"
                                                            maxlength="128" style="height: 25px; width: 150px">
                                                    </div>
                                                    <div class="sign-in-submit">
                                                        <input class="orangeButton bin form-submit-button m-right-10 form-submit ajax-processed"
                                                            type="submit" id="edit-submit--3" name="op" value="Sign In"><a href="/commerce/wvcheckout/forgotpw"
                                                                class="ctools-use-modal ctools-modal-forgot-password-lightbox ctools-use-modal-processed"
                                                                title="Reset your password">Forgot Password?</a></div>
                                                    <input type="hidden" name="form_build_id" value="form-Z-AlGfwZzJ9XsZK9GhkMdPTL97TveRSuMUHMhKq5OSU">
                                                    <input type="hidden" name="form_id" value="wvcheckout_signin_form">
                                                </div>
                                                </form>
                                            </div>
                                            <div class="clear-both">
                                            </div>
                                        </div>
                                        <div class="clear-both">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="panel-separator">
                            </div>
                            <div class="panel-pane pane-custom pane-3" id="pnlMyMailingInfo" runat="server">
                                <div class="pane-content">
                                    <div class="mailing-information">
                                        <div>
                                            <h3>
                                                1. My Mailing Information</h3>
                                            <div id="mailingError" class="fieldError">
                                            </div>
                                            <p>
                                                Your address is legally required for tax purposes.</p>
                                            <label for="country">
                                                Country</label>
                                            <div class="float-left m-right-5 country-input">
                                                United States</div>
                                            <div class="float-left tooltip leftToolTip">
                                                <a href="/commerce/wvcheckout/nojs/countries/MyMailingInformation" class="ctools-use-modal ctools-modal-countries-mailing-lightbox ctools-use-modal-processed"
                                                    title="Donations from Other Countries"></a>
                                            </div>
                                            <form action="/commerce/system/ajax" method="post" id="wvcheckout-mailing-form" accept-charset="UTF-8">
                                            <div>
                                                <div class="fieldError first-name">
                                                </div>
                                                <div class="fieldError last-name">
                                                </div>
                                                <label>
                                                    Name</label>
                                                <div class="mailing-input">
                                                    <div class="form-item form-type-textfield form-item-first-name">
                                                        <input maxlength="70" class="first-name form-text" type="text" id="edit-first-name"
                                                            name="first-name" value="" size="60">
                                                    </div>
                                                    <div class="form-item form-type-textfield form-item-last-name">
                                                        <input maxlength="70" class="clear-default-value inactive last-name form-text" data-default-val="Last"
                                                            type="text" id="edit-last-name" name="last-name" value="Last" size="60">
                                                    </div>
                                                </div>
                                                <div class="fieldError address">
                                                </div>
                                                <label for="address">
                                                    Address</label>
                                                <div class="mailing-input">
                                                    <div class="form-item form-type-textfield form-item-address">
                                                        <input maxlength="75" class="address form-text" type="text" id="edit-address" name="address"
                                                            value="" size="60">
                                                    </div>
                                                </div>
                                                <div class="fieldError address2">
                                                </div>
                                                <label for="line-2">
                                                    Line 2</label>
                                                <div class="mailing-input">
                                                    <div class="form-item form-type-textfield form-item-line-2">
                                                        <input maxlength="75" class="clear-default-value inactive line-2 form-text" data-default-val="Optional"
                                                            type="text" id="edit-line-2" name="line-2" value="Optional" size="60">
                                                    </div>
                                                </div>
                                                <div class="fieldError city">
                                                </div>
                                                <label for="city">
                                                    City</label>
                                                <div class="mailing-input">
                                                    <div class="form-item form-type-textfield form-item-city">
                                                        <input maxlength="30" class="city form-text" type="text" id="edit-city" name="city"
                                                            value="" size="60">
                                                    </div>
                                                </div>
                                                <div class="fieldError state">
                                                </div>
                                                <label for="state" class="state">
                                                    State</label><div class="mailing-input">
                                                        <select name="state" class="state">
                                                            <option selected="selected" value=""></option>
                                                            <option value="AL" data-extended-value="Alabama" data-abbreviated-value="AL">Alabama</option>
                                                            <option value="AK" data-extended-value="Alaska" data-abbreviated-value="AK">Alaska</option>
                                                            <option value="AS" data-extended-value="American Samoa" data-abbreviated-value="AS">
                                                                American Samoa</option>
                                                            <option value="AZ" data-extended-value="Arizona" data-abbreviated-value="AZ">Arizona</option>
                                                            <option value="AR" data-extended-value="Arkansas" data-abbreviated-value="AR">Arkansas</option>
                                                            <option value="CA" data-extended-value="California" data-abbreviated-value="CA">California</option>
                                                            <option value="CO" data-extended-value="Colorado" data-abbreviated-value="CO">Colorado</option>
                                                            <option value="CT" data-extended-value="Connecticut" data-abbreviated-value="CT">Connecticut</option>
                                                            <option value="DE" data-extended-value="Delaware" data-abbreviated-value="DE">Delaware</option>
                                                            <option value="DC" data-extended-value="District of Columbia" data-abbreviated-value="DC">
                                                                District of Columbia</option>
                                                            <option value="FM" data-extended-value="Federated States of Micronesia" data-abbreviated-value="FM">
                                                                Federated States of Micronesia</option>
                                                            <option value="FL" data-extended-value="Florida" data-abbreviated-value="FL">Florida</option>
                                                            <option value="GA" data-extended-value="Georgia" data-abbreviated-value="GA">Georgia</option>
                                                            <option value="GU" data-extended-value="Guam" data-abbreviated-value="GU">Guam</option>
                                                            <option value="HI" data-extended-value="Hawaii" data-abbreviated-value="HI">Hawaii</option>
                                                            <option value="ID" data-extended-value="Idaho" data-abbreviated-value="ID">Idaho</option>
                                                            <option value="IL" data-extended-value="Illinois" data-abbreviated-value="IL">Illinois</option>
                                                            <option value="IN" data-extended-value="Indiana" data-abbreviated-value="IN">Indiana</option>
                                                            <option value="IA" data-extended-value="Iowa" data-abbreviated-value="IA">Iowa</option>
                                                            <option value="KS" data-extended-value="Kansas" data-abbreviated-value="KS">Kansas</option>
                                                            <option value="KY" data-extended-value="Kentucky" data-abbreviated-value="KY">Kentucky</option>
                                                            <option value="LA" data-extended-value="Louisiana" data-abbreviated-value="LA">Louisiana</option>
                                                            <option value="ME" data-extended-value="Maine" data-abbreviated-value="ME">Maine</option>
                                                            <option value="MH" data-extended-value="Marshall Islands" data-abbreviated-value="MH">
                                                                Marshall Islands</option>
                                                            <option value="MD" data-extended-value="Maryland" data-abbreviated-value="MD">Maryland</option>
                                                            <option value="MA" data-extended-value="Massachusetts" data-abbreviated-value="MA">Massachusetts</option>
                                                            <option value="MI" data-extended-value="Michigan" data-abbreviated-value="MI">Michigan</option>
                                                            <option value="MN" data-extended-value="Minnesota" data-abbreviated-value="MN">Minnesota</option>
                                                            <option value="MS" data-extended-value="Mississippi" data-abbreviated-value="MS">Mississippi</option>
                                                            <option value="MO" data-extended-value="Missouri" data-abbreviated-value="MO">Missouri</option>
                                                            <option value="MT" data-extended-value="Montana" data-abbreviated-value="MT">Montana</option>
                                                            <option value="NE" data-extended-value="Nebraska" data-abbreviated-value="NE">Nebraska</option>
                                                            <option value="NV" data-extended-value="Nevada" data-abbreviated-value="NV">Nevada</option>
                                                            <option value="NH" data-extended-value="New Hampshire" data-abbreviated-value="NH">New
                                                                Hampshire</option>
                                                            <option value="NJ" data-extended-value="New Jersey" data-abbreviated-value="NJ">New
                                                                Jersey</option>
                                                            <option value="NM" data-extended-value="New Mexico" data-abbreviated-value="NM">New
                                                                Mexico</option>
                                                            <option value="NY" data-extended-value="New York" data-abbreviated-value="NY">New York</option>
                                                            <option value="NC" data-extended-value="North Carolina" data-abbreviated-value="NC">
                                                                North Carolina</option>
                                                            <option value="ND" data-extended-value="North Dakota" data-abbreviated-value="ND">North
                                                                Dakota</option>
                                                            <option value="MP" data-extended-value="Northern Mariana Islands" data-abbreviated-value="MP">
                                                                Northern Mariana Islands</option>
                                                            <option value="OH" data-extended-value="Ohio" data-abbreviated-value="OH">Ohio</option>
                                                            <option value="OK" data-extended-value="Oklahoma" data-abbreviated-value="OK">Oklahoma</option>
                                                            <option value="OR" data-extended-value="Oregon" data-abbreviated-value="OR">Oregon</option>
                                                            <option value="PW" data-extended-value="Palau" data-abbreviated-value="PW">Palau</option>
                                                            <option value="PA" data-extended-value="Pennsylvania" data-abbreviated-value="PA">Pennsylvania</option>
                                                            <option value="PR" data-extended-value="Puerto Rico" data-abbreviated-value="PR">Puerto
                                                                Rico</option>
                                                            <option value="RI" data-extended-value="Rhode Island" data-abbreviated-value="RI">Rhode
                                                                Island</option>
                                                            <option value="SC" data-extended-value="South Carolina" data-abbreviated-value="SC">
                                                                South Carolina</option>
                                                            <option value="SD" data-extended-value="South Dakota" data-abbreviated-value="SD">South
                                                                Dakota</option>
                                                            <option value="TN" data-extended-value="Tennessee" data-abbreviated-value="TN">Tennessee</option>
                                                            <option value="TX" data-extended-value="Texas" data-abbreviated-value="TX">Texas</option>
                                                            <option value="UT" data-extended-value="Utah" data-abbreviated-value="UT">Utah</option>
                                                            <option value="VT" data-extended-value="Vermont" data-abbreviated-value="VT">Vermont</option>
                                                            <option value="VI" data-extended-value="Virgin Islands" data-abbreviated-value="VI">
                                                                Virgin Islands</option>
                                                            <option value="VA" data-extended-value="Virginia" data-abbreviated-value="VA">Virginia</option>
                                                            <option value="WA" data-extended-value="Washington" data-abbreviated-value="WA">Washington</option>
                                                            <option value="WV" data-extended-value="West Virginia" data-abbreviated-value="WV">West
                                                                Virginia</option>
                                                            <option value="WI" data-extended-value="Wisconsin" data-abbreviated-value="WI">Wisconsin</option>
                                                            <option value="WY" data-extended-value="Wyoming" data-abbreviated-value="WY">Wyoming</option>
                                                            <option value="AE" data-extended-value="Armed Forces Africa, Canada, Middle East, Europe"
                                                                data-abbreviated-value="AE">Armed Forces Africa, Canada, Middle East, Europe</option>
                                                            <option value="AA" data-extended-value="Armed Forces Americas" data-abbreviated-value="AA">
                                                                Armed Forces Americas</option>
                                                            <option value="AP" data-extended-value="Armed Forces Pacific" data-abbreviated-value="AP">
                                                                Armed Forces Pacific</option>
                                                        </select></div>
                                                <div class="fieldError zip">
                                                </div>
                                                <label for="zip">
                                                    Zip</label>
                                                <div class="mailing-input">
                                                    <div class="form-item form-type-textfield form-item-zip">
                                                        <input maxlength="10" class="zip numeric-hyphen-only form-text" type="text" id="edit-zip"
                                                            name="zip" value="" size="60">
                                                    </div>
                                                </div>
                                                <div class="fieldError phone">
                                                </div>
                                                <label for="phone">
                                                    Phone</label>
                                                <div class="mailing-input">
                                                    <div class="form-item form-type-textfield form-item-phone">
                                                        <input maxlength="10" class="clear-default-value inactive phone numeric-only form-text"
                                                            data-default-val="Optional" type="text" id="edit-phone" name="phone" value="Optional"
                                                            size="60">
                                                    </div>
                                                </div>
                                                <div class="fieldError email">
                                                </div>
                                                <label for="email">
                                                    Email</label>
                                                <div class="mailing-input">
                                                    <div class="form-item form-type-textfield form-item-email">
                                                        <input maxlength="254" class="email form-text" type="text" id="edit-email--2" name="email"
                                                            value="" size="60">
                                                    </div>
                                                </div>
                                                <div class="float-left m-left-10" style="font-size: 11px; margin-top: -5px; width: 45px;">
                                                    <a href="http://www.worldvision.org/content.nsf/pages/privacy-policy?OpenDocument"
                                                        target="_blank" onclick="sendLPOS('rgt_txt_PrivacyPolicy_MyMailingInformation','');">
                                                        Privacy<br>
                                                        Policy</a></div>
                                                <div id="changeemail-password" style="display: none;">
                                                    <div class="fieldError password">
                                                    </div>
                                                    <label for="password">
                                                        Password:</label>
                                                    <div class="mailing-input">
                                                        <div class="form-item form-type-password form-item-password">
                                                            <input class="changeemail-password form-text" type="password" id="edit-password--2"
                                                                name="password" size="20" maxlength="128"/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="mailing-input-no-label">
                                                    <div class="form-item form-type-checkbox form-item-use-billing">
                                                        <input class="float-left form-checkbox" type="checkbox" id="edit-use-billing" name="use-billing"
                                                            value="1" checked="checked">
                                                        <label class="option" for="edit-use-billing">
                                                            Use this as my billing address
                                                        </label>
                                                    </div>
                                                </div>
                                                <div class="clear-both">
                                                </div>
                                                <div style="margin-top: 10px; margin-left: 235px; margin-bottom: 10px">
                                                    <input type="hidden" name="mailPrevStatus" value="HIDDEN"/>
                                                    <input class="send-card-edit-cancel form-submit ajax-processed" type="submit" id="edit-mailcancel"
                                                        name="cancel" value="Cancel"/><input class="orangeButton bin form-submit ajax-processed"
                                                            style="width: 150px;" type="submit" id="edit-mailsubmit" name="op" value="Continue"/></div>
                                                <input type="hidden" name="form_build_id" value="form-fxdfNrN4mABnNUKqVkxMgkGh4StFWRRYb0BCqXNL1fk"/>
                                                <input type="hidden" name="form_id" value="wvcheckout_mailing_form"/>
                                            </div>
                                            </form>
                                            <!-- Google Code for Mailing Info Remarketing List -->
                                            <noscript>
                                                &lt;div style="display:inline;"&gt;&lt;img height="1" width="1" style="border-style:none;"
                                                alt="" src="https://www.googleadservices.com/pagead/conversion/1072345708/?label=C8DyCITAzwEQ7OSq_wM&amp;amp;guid=ON&amp;amp;script=0"/&gt;&lt;/div&gt;</noscript></div>
                                    </div>
                                </div>
                            </div>
                            <div class="panel-separator">
                            </div>
                            <div class="panel-pane pane-custom pane-4">
                                <div class="pane-content">
                                    <!--<div class="card-options">
                                        <div>
                                            <h3>
                                                2. Free Card(s) Options</h3>
                                            <div id="cardError" class="fieldError">
                                            </div>
                                            <div id="cardForm">
                                                <form action="/commerce/system/ajax" method="post" id="wvcheckout-card-form" accept-charset="UTF-8">
                                                <div>
                                                    <p class="sub-header">
                                                        Mail your loved ones a beautiful card by checking item(s) below. Printable cards
                                                        and eCard are available after checkout.</p>
                                                    <div class="float-left m-top-5">
                                                        <a href="/commerce/wvcheckout/nojs/cardoptions/rgt/Cards" title="Free card available during checkout"
                                                            class="ctools-use-modal ctools-modal-card-options-lightbox ctools-use-modal-processed">
                                                        </a>
                                                    </div>
                                                    <div class="clear-both">
                                                    </div>
                                                    <div class="send-card-options  unchecked">
                                                        <h5>
                                                            Deep Well</h5>
                                                        <div class="send-card-to">
                                                            <div class="float-left m-left-5">
                                                                <div class="form-item form-type-checkbox form-item-send-card-121764727">
                                                                    <input value="0" type="checkbox" id="edit-send-card-121764727" name="send-card-121764727"
                                                                        class="form-checkbox">
                                                                    <label class="option" for="edit-send-card-121764727">
                                                                        Mail Card to&nbsp;
                                                                    </label>
                                                                </div>
                                                            </div>
                                                            <div style="width: 213px;" class="float-left">
                                                                <div class="form-item form-type-select form-item-send-card-to-121764727">
                                                                    <select class="float-left sendCartTo-121764727 send-card-to-addresses form-select ajax-processed"
                                                                        style="display: none" id="edit-send-card-to-121764727" name="send-card-to-121764727">
                                                                        <option value="10530241" selected="selected">Myself</option>
                                                                        <option value="NEW">Add New Address</option>
                                                                    </select>
                                                                </div>
                                                            </div>
                                                            <input class="personalize edit-mode form-submit ajax-processed" type="submit" id="edit-send-card-edit-121764727"
                                                                name="edit121764727" value="Edit &amp; Personalize"><div class="clear-both">
                                                                </div>
                                                        </div>
                                                    </div>
                                                    <div class="send-card-options  unchecked">
                                                        <h5>
                                                            Water for One Person</h5>
                                                        <div class="send-card-to">
                                                            <div class="float-left m-left-5">
                                                                <div class="form-item form-type-checkbox form-item-send-card-121764687">
                                                                    <input value="0" type="checkbox" id="edit-send-card-121764687" name="send-card-121764687"
                                                                        class="form-checkbox">
                                                                    <label class="option" for="edit-send-card-121764687">
                                                                        Mail Card to&nbsp;
                                                                    </label>
                                                                </div>
                                                            </div>
                                                            <div style="width: 213px;" class="float-left">
                                                                <div class="form-item form-type-select form-item-send-card-to-121764687">
                                                                    <select class="float-left sendCartTo-121764687 send-card-to-addresses form-select ajax-processed"
                                                                        style="display: none" id="edit-send-card-to-121764687" name="send-card-to-121764687">
                                                                        <option value="10530241">Myself</option>
                                                                        <option value="NEW">Add New Address</option>
                                                                    </select>
                                                                </div>
                                                            </div>
                                                            <input class="personalize edit-mode form-submit ajax-processed" type="submit" id="edit-send-card-edit-121764687"
                                                                name="edit121764687" value="Edit &amp; Personalize"><div class="clear-both">
                                                                </div>
                                                        </div>
                                                    </div>
                                                    <div class="send-card-options-continue show-button">
                                                        <input class="orangeButton bin form-submit ajax-processed" style="width: 150px;"
                                                            type="submit" id="edit-cardsubmit" name="op" value="Continue"></div>
                                                    <input type="hidden" name="form_build_id" value="form-qh0cPe58fYcru-fJ0Bxx2Sp9jiboh5ZXqa4u0TgRZOQ">
                                                    <input type="hidden" name="form_id" value="wvcheckout_card_form">
                                                </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>-->
                                </div>
                            </div>
                            <div class="panel-separator">
                            </div>
                            <div class="panel-pane pane-custom pane-5" id="pnlMyPaymentInfo" runat="server">
                                <div class="pane-content">
                                    <div class="payment-information">
                                        <div>
                                            <h3>
                                                2. My Payment Information</h3>
                                            <div id="paymentError" class="fieldError">
                                            </div>
                                            <div id="paymentForm">
                                                <form action="/commerce/system/ajax" method="post" id="wvcheckout-payment-form" accept-charset="UTF-8">
                                                <div>
                                                    <div id="billing-address">
                                                        <div class="my-info">
                                                            <div class="label">
                                                                Billing to</div>
                                                            <div class="address">
                                                                Trucma1 fgdg<br>
                                                                fdgdfgdfg<br>
                                                                dfgdfg, CO 80921</div>
                                                            <input class="float-right payment-address-edit form-submit ajax-processed" type="submit"
                                                                id="edit-payaddredit" name="EditAddress" value="Edit"/><div class="clear-both">
                                                                </div>
                                                        </div>
                                                    </div>
                                                    <div id="payment">
                                                        <div class="payment-types-container">
                                                            <div class="card-information">
                                                                <ul class="cc-types">
                                                                    <li>
                                                                        <input type="button" data-type="visa" class="cc-card visa sprite-icons-payment "/>
                                                                            <img alt="Visa"
                                                                            src="http://localhost/bbis/givingcatalog/image/shoppingcart/visa_icon.png" width="90px" height="80px" style="margin-top:-60px; margin-left:-20px"/>
                                                                      
                                                                        
                                                                        </li>
                                                                        <li>
                                                                            <input type="button" data-type="mc" class="cc-card mc sprite-icons-payment " />
                                                                                <img alt="Master"
                                                                            src="http://localhost/bbis/givingcatalog/image/shoppingcart/mastercard.png" width="65px" height="60px" style="margin-top:-50px; margin-left:-12px"/>
                                                                            </li>
                                                                            <li>
                                                                                <input type="button" data-type="amex" class="cc-card amex sprite-icons-payment " />
                                                                                <img alt="AMEX"
                                                                            src="http://localhost/bbis/givingcatalog/image/shoppingcart/amex.png" width="65px" height="60px" style="margin-top:-50px; "/>
                                                                                </li><li>
                                                                                    <input type="button" data-type="discover" class="cc-card discover sprite-icons-payment " />
                                                                                    <img alt="Discover"
                                                                            src="http://localhost/bbis/givingcatalog/image/shoppingcart/discover.png" width="65px" height="60px" style="margin-top:-50px; "/>
                                                                                    </li>
                                                                                    <%--<li>
                                                                                        <input class="cc-card paypal sprite-icons-payment  form-submit ajax-processed" type="submit"
                                                                                            id="edit-paypal" name="op" value="" />
                                                                                        <img alt="Discover"
                                                                            src="http://localhost/bbis/givingcatalog/image/shoppingcart/paypal_icon.jpg" width="60px" height="37px" style="margin-top:-50px;margin-left:0px "/>
                                                                                    </li>--%>
                                                                                    </ul>
                                                                <input type="hidden" name="card-type" value=""/>
                                                            </div>
                                                        </div>
                                                        <div class="fieldError card-number">
                                                        </div>
                                                        <label for="card-number">
                                                            Card number</label><div class="payment-input">
                                                                <div class="form-item form-type-textfield form-item-card-number">
                                                                    <input maxlength="16" class="card-number numeric-only form-text" type="text" id="edit-card-number"
                                                                        name="card-number" value="" size="60"/>
                                                                </div>
                                                            </div>
                                                        <div class="fieldError expiration-month">
                                                        </div>
                                                        <label for="expiration-month">
                                                            Expiration</label><div class="payment-input">
                                                                <div class="form-item form-type-select form-item-card-month">
                                                                    <select class="expiration-month form-select" id="edit-card-month" name="card-month">
                                                                        <option value="0">Month</option>
                                                                        <option value="1">01</option>
                                                                        <option value="2">02</option>
                                                                        <option value="3">03</option>
                                                                        <option value="4">04</option>
                                                                        <option value="5">05</option>
                                                                        <option value="6">06</option>
                                                                        <option value="7">07</option>
                                                                        <option value="8">08</option>
                                                                        <option value="9">09</option>
                                                                        <option value="10">10</option>
                                                                        <option value="11">11</option>
                                                                        <option value="12">12</option>
                                                                    </select>
                                                                </div>
                                                            </div>
                                                        <div class="payment-input m-left-8">
                                                            <div class="form-item form-type-select form-item-card-year">
                                                                <select class="expiration-year form-select" id="edit-card-year" name="card-year">
                                                                    <option value="0">Year</option>
                                                                    <option value="2014">14</option>
                                                                    <option value="2015">15</option>
                                                                    <option value="2016">16</option>
                                                                    <option value="2017">17</option>
                                                                    <option value="2018">18</option>
                                                                    <option value="2019">19</option>
                                                                    <option value="2020">20</option>
                                                                    <option value="2021">21</option>
                                                                    <option value="2022">22</option>
                                                                    <option value="2023">23</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                        <div class="clear-both">
                                                        </div>
                                                        <div class="fieldError card-name">
                                                        </div>
                                                        <label for="card-name">
                                                            Name on card</label><div class="payment-input">
                                                                <div class="form-item form-type-textfield form-item-card-name">
                                                                    <input maxlength="70" class="card-name form-text" type="text" id="edit-card-name"
                                                                        name="card-name" value="" size="60"/>
                                                                </div>
                                                            </div>
                                                        <div class="clear-both">
                                                        </div>
                                                    </div>
                                                    <div style="margin-top: 10px; margin-left: 235px;">
                                                        <input class="orangeButton bin m-left-10 form-submit ajax-processed" style="width: 150px;"
                                                            type="submit" id="edit-paysubmit" name="Continue" value="Continue"/></div>
                                                    <div class="clear-both">
                                                    </div>
                                                    <input type="hidden" name="form_build_id" value="form-BfRAOrRfA8-Z-cTi5AxtoSSg6Q7j9vl9s5PgkfkxGZg"/>
                                                    <input type="hidden" name="form_id" value="wvcheckout_payment_form"/>
                                                </div>
                                                </form>
                                            </div>
                                            <!-- Google Code for Payment Page Remarketing List -->
                                            <noscript>
                                                &lt;div style="display:inline;"&gt;&lt;img height="1" width="1" style="border-style:none;"
                                                alt="" src="https://www.googleadservices.com/pagead/conversion/1072345708/?label=iLVuCPzAzwEQ7OSq_wM&amp;amp;guid=ON&amp;amp;script=0"/&gt;&lt;/div&gt;</noscript></div>
                                    </div>
                                </div>
                            </div>
                            <div class="panel-separator">
                            </div>
                            <div class="panel-pane pane-custom pane-6">
                                <div class="pane-content">
                                    <div class="review-and-submit">
                                    </div>
                                </div>
                            </div>
                            <div class="panel-separator">
                            </div>
                            <div class="panel-pane pane-custom pane-7 recommendations">
                                <div class="pane-content">
                                    <div class="recommendations-widget"  style="width:420px">
                                        <h2>
                                            You May Also Like</h2>
                                        <form action="/commerce/checkout?msg=&amp;ref=xxwv2ibeCCtpSctDspRte.jsp%3Fsection%3D10373%26beginIndex%3D0&amp;add=true"
                                        method="post" id="wvcheckout-where-most-needed-form" accept-charset="UTF-8">
                                        <div>
                                            <div class="recItem-mostNeed" id="recItem-mostNeed">
                                                <div class="amount-error">
                                                </div>
                                                <div class="recItemTitle">
                                                    Give Where Most Needed</div>
                                                <div class="most-need">
                                                    <input class="greyCTA form-submit ajax-processed" type="submit" id="edit-most-needed-submit"
                                                        name="op" value="Add Donation" /></div>
                                                <div class="recItemPrice">
                                                    <div class="form-item form-type-textfield form-item-most-needed-amount">
                                                        <input maxlength="6" class="numeric-only form-text" type="text" id="edit-most-needed-amount"
                                                            name="most-needed-amount" value="0" size="60" />
                                                    </div>
                                                    <div class="float-right m-top-5">
                                                        $&nbsp;</div>
                                                    <div class="clear-both">
                                                    </div>
                                                </div>
                                                <div class="clear-both">
                                                </div>
                                                <p style="font-size: 12px; padding: 5px 0 0 0;">
                                                    Help us meet the needs of the world's most vulnerable children and families. <a href="/OA_HTML/xxwv2ibeCCtpItmDspRte.jsp?go=item&amp;item=1932079&amp;section=10800"
                                                        onclick="sendLPOS('rgt_btn_Recmd_WhereMostNeededPledge');">Give monthly</a>
                                                    to help even more.</p>
                                            </div>
                                            <input type="hidden" name="form_build_id" value="form-qsMRTpm6SUzhh7JVDTxJdq7jEqq4IqZvd-MZVH4gRpg"/>
                                            <input type="hidden" name="form_id" value="wvcheckout_where_most_needed_form"/>
                                        </div>
                                        </form>
                                        <div id="recBody">
                                            <%--<div id="recPrev" class="recNav" onclick="showRecs(-1); sendLPOS('rgt_img_Recmd_Previous');"
                                                style="visibility: hidden;">
                                                <div class="sprite-icons-cart sprite-arrow-double-blue-left">
                                                </div>
                                            </div>--%>
                                            <div id="recItems">
                                                <div style="display: block;" id="recItem1" class="recItem ">
                                                    <div class="recItemImage">
                                                        <a onclick="sendLPOS('rgt_img_Recmd_2Chickens');" href="/OA_HTML/xxwv2ibeCCtpItmDspRte.jsp?item=1270176">
                                                            <img alt="" src="http://localhost/bbis/givingcatalog/image/shoppingcart/t1.png" alt=""/></a>
                                                    </div>
                                                    <div class="recItemTitle">
                                                        <a onclick="sendLPOS('rgt_txt_Recmd_2Chickens');" href="/OA_HTML/xxwv2ibeCCtpItmDspRte.jsp?item=1270176">
                                                            2 Goat</a>
                                                    </div>
                                                    <div class="recItemPrice">
                                                        $25
                                                    </div>
                                                    <div class="recItemDonate">
                                                        <form action="/OA_HTML/xxwv2ibeCCtpBuyRoute.jsp?a=b" method="GET" name="myBasketDonateForm">
                                                        <input value="null" name="refpage" type="hidden"/>
                                                        <input value="1270176" name="item" type="hidden"/>
                                                        <input value="" name="section" type="hidden"/>
                                                        <input value="1" name="qty" type="hidden"/>
                                                        <input value="100" name="tmpx" type="hidden"/>
                                                        <input value="100" name="tmpy" type="hidden"/>
                                                        <input class="greyCTA" onclick="sendLPOS('rgt_btn_Recmd_2Chickens')" name="Add to Cart.x"
                                                            value="Add Donation" border="0" type="submit"/>
                                                        </form>
                                                    </div>
                                                </div>
                                                <div style="display: block;" id="recItem2" class="recItem recItemMid">
                                                    <div class="recItemImage">
                                                        <a onclick="sendLPOS('rgt_img_Recmd_CleanWaterFund');" href="/OA_HTML/xxwv2ibeCCtpItmDspRte.jsp?item=1895304">
                                                            <img src="http://localhost/bbis/givingcatalog/image/shoppingcart/t3.png" alt="" /></a>
                                                    </div>
                                                    <div class="recItemTitle">
                                                        <a onclick="sendLPOS('rgt_txt_Recmd_CleanWaterFund');" href="/OA_HTML/xxwv2ibeCCtpItmDspRte.jsp?item=1895304">
                                                            Goat</a>
                                                    </div>
                                                    <div class="recItemPrice">
                                                        $25
                                                    </div>
                                                    <div class="recItemDonate">
                                                        <form action="/OA_HTML/xxwv2ibeCCtpBuyRoute.jsp?a=b" method="GET" name="myBasketDonateForm">
                                                        <input value="null" name="refpage" type="hidden"/>
                                                        <input value="1895304" name="item" type="hidden"/>
                                                        <input value="" name="section" type="hidden"/>
                                                        <input value="1" name="qty" type="hidden"/>
                                                        <input value="100" name="tmpx" type="hidden"/>
                                                        <input value="100" name="tmpy" type="hidden"/>
                                                        <input class="greyCTA" onclick="sendLPOS('rgt_btn_Recmd_CleanWaterFund')" name="Add to Cart.x"
                                                            value="Add Donation" border="0" type="submit"/>
                                                        </form>
                                                    </div>
                                                </div>
                                                <div style="display: block;" id="recItem3" class="recItem ">
                                                    <div class="recItemImage">
                                                        <a onclick="sendLPOS('rgt_img_Recmd_ClothingforChildren');" href="/OA_HTML/xxwv2ibeCCtpItmDspRte.jsp?item=1753164">
                                                            <img src="http://localhost/bbis/givingcatalog/image/shoppingcart/t7.png" alt="" /></a>
                                                    </div>
                                                    <div class="recItemTitle">
                                                        <a onclick="sendLPOS('rgt_txt_Recmd_ClothingforChildren');" href="/OA_HTML/xxwv2ibeCCtpItmDspRte.jsp?item=1753164">
                                                            Clothing for Children</a>
                                                    </div>
                                                    <div class="recItemPrice">
                                                        $30
                                                    </div>
                                                    <div class="recItemDonate">
                                                        <form action="/OA_HTML/xxwv2ibeCCtpBuyRoute.jsp?a=b" method="GET" name="myBasketDonateForm">
                                                        <input value="null" name="refpage" type="hidden"/>
                                                        <input value="1753164" name="item" type="hidden"/>
                                                        <input value="" name="section" type="hidden"/>
                                                        <input value="1" name="qty" type="hidden"/>
                                                        <input value="100" name="tmpx" type="hidden"/>
                                                        <input value="100" name="tmpy" type="hidden"/>
                                                        <input class="greyCTA" onclick="sendLPOS('rgt_btn_Recmd_ClothingforChildren')" name="Add to Cart.x"
                                                            value="Add Donation" border="0" type="submit"/>
                                                        </form>
                                                    </div>
                                                </div>
                                                <div style="display: none;" id="recItem4" class="recItem ">
                                                    <div class="recItemImage">
                                                        <a onclick="sendLPOS('rgt_img_Recmd_2Bibles');" href="/OA_HTML/xxwv2ibeCCtpItmDspRte.jsp?item=274">
                                                            <img src="http://localhost/bbis/givingcatalog/image/shoppingcart/t7.png" alt=""/></a>
                                                    </div>
                                                    <div class="recItemTitle">
                                                        <a onclick="sendLPOS('rgt_txt_Recmd_2Bibles');" href="/OA_HTML/xxwv2ibeCCtpItmDspRte.jsp?item=274">
                                                            2 Bibles</a>
                                                    </div>
                                                    <div class="recItemPrice">
                                                        $36
                                                    </div>
                                                    <div class="recItemDonate">
                                                        <form action="/OA_HTML/xxwv2ibeCCtpBuyRoute.jsp?a=b" method="GET" name="myBasketDonateForm">
                                                        <input value="null" name="refpage" type="hidden"/>
                                                        <input value="274" name="item" type="hidden"/>
                                                        <input value="" name="section" type="hidden"/>
                                                        <input value="1" name="qty" type="hidden"/>
                                                        <input value="100" name="tmpx" type="hidden"/>
                                                        <input value="100" name="tmpy" type="hidden"/>
                                                        <input class="greyCTA" onclick="sendLPOS('rgt_btn_Recmd_2Bibles')" name="Add to Cart.x"
                                                            value="Add Donation" border="0" type="submit"/>
                                                        </form>
                                                    </div>
                                                </div>
                                                <div style="display: none;" id="recItem5" class="recItem recItemMid">
                                                    <div class="recItemImage">
                                                        <a onclick="sendLPOS('rgt_img_Recmd_HopeforSexuallyExploitedGirls');" href="/OA_HTML/xxwv2ibeCCtpItmDspRte.jsp?item=186">
                                                            <img src="http://localhost/bbis/givingcatalog/image/shoppingcart/t1.png" alt="" /></a>
                                                    </div>
                                                    <div class="recItemTitle">
                                                        <a onclick="sendLPOS('rgt_txt_Recmd_HopeforSexuallyExploitedGirls');" href="/OA_HTML/xxwv2ibeCCtpItmDspRte.jsp?item=186">
                                                            Hope for Sexually Exploited Girls</a>
                                                    </div>
                                                    <div class="recItemPrice">
                                                        $35
                                                    </div>
                                                    <div class="recItemDonate">
                                                        <form action="/OA_HTML/xxwv2ibeCCtpBuyRoute.jsp?a=b" method="GET" name="myBasketDonateForm">
                                                        <input value="null" name="refpage" type="hidden"/>
                                                        <input value="186" name="item" type="hidden"/>
                                                        <input value="" name="section" type="hidden"/>
                                                        <input value="1" name="qty" type="hidden"/>
                                                        <input value="100" name="tmpx" type="hidden"/>
                                                        <input value="100" name="tmpy" type="hidden"/>
                                                        <input class="greyCTA" onclick="sendLPOS('rgt_btn_Recmd_HopeforSexuallyExploitedGirls')"
                                                            name="Add to Cart.x" value="Add Donation" border="0" type="submit"/>
                                                        </form>
                                                    </div>
                                                </div>
                                                <div style="display: none;" id="recItem6" class="recItem ">
                                                    <div class="recItemImage">
                                                        <a onclick="sendLPOS('rgt_img_Recmd_350WorthofMedicines');" href="/OA_HTML/xxwv2ibeCCtpItmDspRte.jsp?item=1895066">
                                                            <img src="http://localhost/bbis/givingcatalog/image/shoppingcart/t3.png" alt="" /></a>
                                                    </div>
                                                    <div class="recItemTitle">
                                                        <a onclick="sendLPOS('rgt_txt_Recmd_350WorthofMedicines');" href="/OA_HTML/xxwv2ibeCCtpItmDspRte.jsp?item=1895066">
                                                            $350 Worth of Medicines</a>
                                                    </div>
                                                    <div class="recItemPrice">
                                                        $35
                                                    </div>
                                                    <div class="recItemDonate">
                                                        <form action="/OA_HTML/xxwv2ibeCCtpBuyRoute.jsp?a=b" method="GET" name="myBasketDonateForm">
                                                        <input value="null" name="refpage" type="hidden"/>
                                                        <input value="1895066" name="item" type="hidden"/>
                                                        <input value="" name="section" type="hidden"/>
                                                        <input value="1" name="qty" type="hidden"/>
                                                        <input value="100" name="tmpx" type="hidden"/>
                                                        <input value="100" name="tmpy" type="hidden"/>
                                                        <input class="greyCTA" onclick="sendLPOS('rgt_btn_Recmd_350WorthofMedicines')" name="Add to Cart.x"
                                                            value="Add Donation" border="0" type="submit"/>
                                                        </form>
                                                    </div>
                                                </div>
                                                <div style="display: none;" id="recItem7" class="recItem ">
                                                    <div class="recItemImage">
                                                        <a onclick="sendLPOS('rgt_img_Recmd_CareerTrainingforGirlsandWomen');" href="/OA_HTML/xxwv2ibeCCtpItmDspRte.jsp?item=1445848">
                                                            <img alt="" src="http://localhost/bbis/givingcatalog/image/shoppingcart/t3.png" alt="" /></a>
                                                    </div>
                                                    <div class="recItemTitle">
                                                        <a onclick="sendLPOS('rgt_txt_Recmd_CareerTrainingforGirlsandWomen');" href="/OA_HTML/xxwv2ibeCCtpItmDspRte.jsp?item=1445848">
                                                            Career Training for Girls and Women</a>
                                                    </div>
                                                    <div class="recItemPrice">
                                                        $25
                                                    </div>
                                                    <div class="recItemDonate">
                                                        <form action="/OA_HTML/xxwv2ibeCCtpBuyRoute.jsp?a=b" method="GET" name="myBasketDonateForm">
                                                        <input value="null" name="refpage" type="hidden"/>
                                                        <input value="1445848" name="item" type="hidden"/>
                                                        <input value="" name="section" type="hidden"/>
                                                        <input value="1" name="qty" type="hidden"/>
                                                        <input value="100" name="tmpx" type="hidden"/>
                                                        <input value="100" name="tmpy" type="hidden"/>
                                                        <input class="greyCTA" onclick="sendLPOS('rgt_btn_Recmd_CareerTrainingforGirlsandWomen')"
                                                            name="Add to Cart.x" value="Add Donation" border="0" type="submit"/>
                                                        </form>
                                                    </div>
                                                </div>
                                                <div style="display: none;" id="recItem8" class="recItem recItemMid">
                                                    <div class="recItemImage">
                                                        <a onclick="sendLPOS('rgt_img_Recmd_Seedsfor1Family');" href="/OA_HTML/xxwv2ibeCCtpItmDspRte.jsp?item=1115387">
                                                            <img alt="" src="http://localhost/bbis/givingcatalog/image/shoppingcart/t7.png" alt=""/></a>
                                                    </div>
                                                    <div class="recItemTitle">
                                                        <a onclick="sendLPOS('rgt_txt_Recmd_Seedsfor1Family');" href="/OA_HTML/xxwv2ibeCCtpItmDspRte.jsp?item=1115387">
                                                            Seeds for 1 Family</a>
                                                    </div>
                                                    <div class="recItemPrice">
                                                        $17
                                                    </div>
                                                    <div class="recItemDonate">
                                                        <form action="/OA_HTML/xxwv2ibeCCtpBuyRoute.jsp?a=b" method="GET" name="myBasketDonateForm">
                                                        <input value="null" name="refpage" type="hidden"/>
                                                        <input value="1115387" name="item" type="hidden"/>
                                                        <input value="" name="section" type="hidden"/>
                                                        <input value="1" name="qty" type="hidden"/>
                                                        <input value="100" name="tmpx" type="hidden"/>
                                                        <input value="100" name="tmpy" type="hidden"/>
                                                        <input class="greyCTA" onclick="sendLPOS('rgt_btn_Recmd_Seedsfor1Family')" name="Add to Cart.x"
                                                            value="Add Donation" border="0" type="submit"/>
                                                        </form>
                                                    </div>
                                                </div>
                                                <div style="display: none;" id="recItem9" class="recItem ">
                                                    <div class="recItemImage">
                                                        <a onclick="sendLPOS('rgt_img_Recmd_250WorthofNecessitiesintheUSA');" href="/OA_HTML/xxwv2ibeCCtpItmDspRte.jsp?item=1115331">
                                                            <img src="http://localhost/bbis/givingcatalog/image/shoppingcart/t3.png" alt="" /></a>
                                                    </div>
                                                    <div class="recItemTitle">
                                                        <a onclick="sendLPOS('rgt_txt_Recmd_250WorthofNecessitiesintheUSA');" href="/OA_HTML/xxwv2ibeCCtpItmDspRte.jsp?item=1115331">
                                                            $250 Worth of Necessities in the USA</a>
                                                    </div>
                                                    <div class="recItemPrice">
                                                        $25
                                                    </div>
                                                    <div class="recItemDonate">
                                                        <form action="/OA_HTML/xxwv2ibeCCtpBuyRoute.jsp?a=b" method="GET" name="myBasketDonateForm">
                                                        <input value="null" name="refpage" type="hidden"/>
                                                        <input value="1115331" name="item" type="hidden"/>
                                                        <input value="" name="section" type="hidden"/>
                                                        <input value="1" name="qty" type="hidden"/>
                                                        <input value="100" name="tmpx" type="hidden"/>
                                                        <input value="100" name="tmpy" type="hidden"/>
                                                        <input class="greyCTA" onclick="sendLPOS('rgt_btn_Recmd_250WorthofNecessitiesintheUSA')"
                                                            name="Add to Cart.x" value="Add Donation" border="0" type="submit"/>
                                                        </form>
                                                    </div>
                                                </div>
                                            </div>
                                            <%--<div style="visibility: visible;" id="recNext" class="recNav" onclick="showRecs(1); sendLPOS('rgt_img_Recmd_Next');">
                                                <div class="sprite-icons-cart sprite-arrow-double-blue-right">
                                                </div>
                                            </div>--%>
                                            <div style="clear: both">
                                            </div>
                                        </div>
                                        <script type="text/javascript">
                                            var currentRecIndex = 1;
                                            showRecs(0);

                                            function showRecs(direction) {
                                                currentRecIndex = currentRecIndex + Number(direction);

                                                jQuery(".recItem").hide();

                                                if (currentRecIndex == 1) {
                                                    jQuery("[id=recItem1]").show();
                                                    jQuery("[id=recItem2]").show();
                                                    jQuery("[id=recItem3]").show();
                                                    jQuery('[id=recPrev]').css('visibility', 'hidden');

                                                    if (jQuery("[id=recItem4]").length) {
                                                        jQuery('[id=recNext]').css('visibility', 'visible');
                                                    } else {
                                                        jQuery('[id=recNext]').css('visibility', 'hidden');
                                                    }
                                                }
                                                else if (currentRecIndex == 2) {
                                                    jQuery("[id=recItem4]").show();
                                                    jQuery("[id=recItem5]").show();
                                                    jQuery("[id=recItem6]").show();
                                                    jQuery('[id=recPrev]').css('visibility', 'visible');

                                                    if (jQuery("[id=recItem7]").length) {
                                                        jQuery('[id=recNext]').css('visibility', 'visible');
                                                    } else {
                                                        jQuery('[id=recNext]').css('visibility', 'hidden');
                                                    }
                                                }
                                                else {
                                                    jQuery("[id=recItem7]").show();
                                                    jQuery("[id=recItem8]").show();
                                                    jQuery("[id=recItem9]").show();
                                                    jQuery('[id=recPrev]').css('visibility', 'visible');
                                                    jQuery('[id=recNext]').css('visibility', 'hidden');
                                                }
                                            }

                                        </script>
                                    </div>
                                </div>
                            </div>
                            <div class="panel-separator">
                            </div>
                            <div class="panel-pane pane-custom pane-8">
                                <div class="pane-content">
                                    <div class="need-help clear-both">
                                        <div class="column1">
                                            <div class="sprite-icon-telephone sprite-icons-cart float-left m-top-5">
                                                &nbsp;</div>
                                            <div class="float-left m-top-5 m-left-10" style="width: 400px;">
                                                <strong>Need help?</strong> 1-800-111-2222</div>
                                        </div>
                                        <div class="column2">
                                            M-F 6AM - 6PM Mountain Time<br/>
                                            Sat-Sun Closed</div>
                                        <div class="clear-both">
                                            &nbsp;</div>
                                    </div>
                                </div>
                            </div>
                            <div class="panel-separator">
                            </div>
                            <!--<div class="panel-pane pane-custom pane-9">
                                <div class="pane-content">
                                    <div class="secure-checkout clear-both">
                                        <div class="p-top-10 float-left">
                                            <a href="https://sealinfo.thawte.com/thawtesplash?form_file=fdf/thawtesplash.fdf&amp;dn=DONATE.WORLDVISION.ORG&amp;lang=en"
                                                onclick="sendLPOS('rgt_img_SecurityLogo_Thawte');" target="_blank" class="sprite-icons-secure sprite-logo-thawte">
                                            </a>
                                        </div>
                                        <div class="left-border float-left p-top-10">
                                            <a href="http://www.ecfa.org/MemberProfile.aspx?ID=5968" onclick="sendLPOS('rgt_img_SecurityLogo_ECFA');"
                                                target="_blank" class="sprite-icons-secure sprite-logo-ecfa"></a>
                                        </div>
                                        <div class="left-border p-top-10 float-left">
                                            <a href="http://www.charitynavigator.org/index.cfm?bay=search.summary&amp;orgid=4768"
                                                onclick="sendLPOS('rgt_img_SecurityLogo_CharityNavigator');" target="_blank"
                                                class="sprite-icons-secure sprite-logo-charity-navigator"></a>
                                        </div>
                                        <div class="left-border float-left">
                                            <a href="http://charityreports.bbb.org/public/seal.aspx?ID=688312004" onclick="sendLPOS('rgt_img_SecurityLogo_BBB');"
                                                target="_blank" class="sprite-icons-secure sprite-logo-bbb"></a>
                                        </div>
                                        <div class="clear-both" style="height: 1px;">
                                        </div>
                                    </div>
                                </div>
                            </div>-->
                            <div class="panel-separator">
                            </div>
                            <div class="panel-pane pane-custom pane-10 tracking-tags">
                                <div class="pane-content">
                                    <!-- Google Code for Cart Page Remarketing List -->
                                    <script type="text/javascript">
<!--                                        //--><![CDATA[// ><!--

                                        /* <![CDATA[ */
                                        var google_conversion_id = 1072345708;
                                        var google_conversion_language = "en";
                                        var google_conversion_format = "3";
                                        var google_conversion_color = "666666";
                                        var google_conversion_label = "m5f3CJy9zwEQ7OSq_wM";
                                        var google_conversion_value = 0;
                                        /* ]]]]><![CDATA[> */

                                        //--><!]]>
                                    </script>
                                    <script type="text/javascript" src="https://www.googleadservices.com/pagead/conversion.js">
<!--                                        //--><![CDATA[// ><!--


                                        //--><!]]>
                                    </script>
                                    <img height="1" width="1" border="0" alt="" src="https://www.googleadservices.com/pagead/conversion/1072345708/?random=1398104834159&amp;cv=7&amp;fst=1398104834159&amp;num=1&amp;fmt=3&amp;value=0&amp;label=m5f3CJy9zwEQ7OSq_wM&amp;bg=666666&amp;hl=en&amp;guid=ON&amp;u_h=900&amp;u_w=1440&amp;u_ah=860&amp;u_aw=1440&amp;u_cd=24&amp;u_his=49&amp;u_tz=-360&amp;u_java=true&amp;u_nplug=12&amp;u_nmime=18&amp;frm=0&amp;url=https%3A//donate.worldvision.org/commerce/checkout%3Fmsg%3D%26ref%3Dxxwv2ibeCCtpSctDspRte.jsp%253Fsection%253D10373%2526beginIndex%253D0%26add%3Dtrue&amp;ref=https%3A//donate.worldvision.org/commerce/checkout%3Fmsg%3D%26ref%3Dxxwv2ibeCCtpSctDspRte.jsp%253Fsection%253D10373%2526beginIndex%253D0%26add%3Dtrue"><p>
                                    </p>
                                    <noscript>
                                        &lt;div style="display:inline;"&gt; &lt;img height="1" width="1" style="border-style:none;"
                                        alt="" src="https://www.googleadservices.com/pagead/conversion/1072345708/?label=m5f3CJy9zwEQ7OSq_wM&amp;amp;guid=ON&amp;amp;script=0"
                                        /&gt;&lt;/div&gt; &lt;p&gt;&lt;/p&gt;</noscript>
                                </div>
                            </div>
                            <div class="panel-separator">
                            </div>
                            <div class="panel-pane pane-custom pane-11">
                                <div class="pane-content">
                                    <!-- Google Code for Cart Page Remarketing List -->
                                    <script type="text/javascript">
<!--                                        //--><![CDATA[// ><!--

                                        /* <![CDATA[ */
                                        var google_conversion_id = 1072345708;
                                        var google_conversion_language = "en";
                                        var google_conversion_format = "3";
                                        var google_conversion_color = "666666";
                                        var google_conversion_label = "m5f3CJy9zwEQ7OSq_wM";
                                        var google_conversion_value = 0;
                                        /* ]]]]><![CDATA[> */

                                        //--><!]]>
                                    </script>
                                    <script type="text/javascript" src="https://www.googleadservices.com/pagead/conversion.js">
<!--                                        //--><![CDATA[// ><!--


                                        //--><!]]>
                                    </script>
                                    <img height="1" width="1" border="0" alt="" src="https://www.googleadservices.com/pagead/conversion/1072345708/?random=1398104834165&amp;cv=7&amp;fst=1398104834159&amp;num=2&amp;fmt=3&amp;value=0&amp;label=m5f3CJy9zwEQ7OSq_wM&amp;bg=666666&amp;hl=en&amp;guid=ON&amp;u_h=900&amp;u_w=1440&amp;u_ah=860&amp;u_aw=1440&amp;u_cd=24&amp;u_his=49&amp;u_tz=-360&amp;u_java=true&amp;u_nplug=12&amp;u_nmime=18&amp;frm=0&amp;url=https%3A//donate.worldvision.org/commerce/checkout%3Fmsg%3D%26ref%3Dxxwv2ibeCCtpSctDspRte.jsp%253Fsection%253D10373%2526beginIndex%253D0%26add%3Dtrue&amp;ref=https%3A//donate.worldvision.org/commerce/checkout%3Fmsg%3D%26ref%3Dxxwv2ibeCCtpSctDspRte.jsp%253Fsection%253D10373%2526beginIndex%253D0%26add%3Dtrue"><p>
                                    </p>
                                    <noscript>
                                        &lt;div style="display:inline;"&gt; &lt;img height="1" width="1" style="border-style:none;"
                                        alt="" src="https://www.googleadservices.com/pagead/conversion/1072345708/?label=m5f3CJy9zwEQ7OSq_wM&amp;amp;guid=ON&amp;amp;script=0"
                                        /&gt;&lt;/div&gt; &lt;p&gt;&lt;/p&gt;</noscript>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div id="shadowbox_container" style="display: none;">
    <div id="shadowbox_overlay">
    </div>
    <div id="shadowbox">
        <div id="shadowbox_top_side" style="position: relative; height: 10px; width: 100%;
            padding: 0; line-height: 0; font-size: 0">
            <div id="shadowbox_top_left" style="position: absolute; width: 10px; height: 10px;
                top: 0; left: 0;">
                <canvas height="10" width="10" id="top-left"></canvas>
            </div>
            <div id="shadowbox_top_right" style="position: absolute; width: 10px; height: 10px;
                top: 0; right: 0;">
                <canvas height="10" width="10" id="top-right"></canvas>
            </div>
            <div id="shadowbox_top_middle" style="position: relative; height: 10px; background: #ffffff;
                margin: 0 10px 0 10px;">
            </div>
        </div>
        <div id="shadowbox-inner-box" style="background: #ffffff;">
            <div id="shadowbox_header" style="border-bottom: 1px solid #f0f0f0; position: relative;
                height: 55px; margin-bottom: 10px">
                <div id="shadowbox_title">
                    <div id="shadowbox_title_inner">
                    </div>
                </div>
                <div id="shadow_logo_spot" style="position: absolute; right: 0; top: 0;">
                    &nbsp;
                </div>
                <div id="shadowbox_button_close">
                    <a id="shadowbox_nav_close" title="Close" onclick="shadowboxClickTrack('lb_close');Shadowbox.close()">
                    </a>
                </div>
            </div>
            <div id="shadowbox_body">
                <div id="shadowbox_body_inner">
                </div>
                <div id="shadowbox_loading">
                    <div id="shadowbox_loading_indicator">
                    </div>
                    <span><a onclick="shadowboxClickTrack('lb_cancel');Shadowbox.close();">Cancel</a></span></div>
            </div>
            <div id="shadowbox_info">
                <div id="shadowbox_info_inner">
                    <div id="shadowbox_counter">
                    </div>
                    <div id="shadowbox_nav">
                        <a id="shadowbox_nav_next" title="Next" onclick="Shadowbox.next()"></a><a id="shadowbox_nav_play"
                            title="Play" onclick="Shadowbox.play()"></a><a id="shadowbox_nav_pause" title="Pause"
                                onclick="Shadowbox.pause()"></a><a id="shadowbox_nav_previous" title="Previous" onclick="Shadowbox.previous()">
                                </a>
                    </div>
                    <div class="shadowbox_clear">
                    </div>
                </div>
            </div>
        </div>
        <div id="shadowbox_bottom_side" style="position: relative; height: 10px; width: 100%;
            padding: 0; line-height: 0; font-size: 0;">
            <div id="shadowbox_bottom_left" style="position: absolute; width: 10px; height: 10px;
                top: 0; left: 0;">
                <canvas height="10" width="10" id="bottom-left"></canvas>
            </div>
            <div id="shadowbox_bottom_right" style="position: absolute; width: 10px; height: 10px;
                top: 0; right: 0;">
                <canvas height="10" width="10" id="bottom-right"></canvas>
            </div>
            <div id="shadowbox_bottom_middle" style="position: relative; height: 10px; background: #ffffff;
                margin: 0 10px 0 10px;">
            </div>
        </div>
    </div>
</div>

</body>