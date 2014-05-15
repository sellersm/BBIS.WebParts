﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ShoppingCartCheckoutDisplay.ascx.cs"
    Inherits="OCM.BBISWebParts.ShoppingCartCheckoutDisplay" %>
<style type="text/css">
    @charset "UTF-8";
body {
	background-color: #ccc;
	background-image: url("/OA_MEDIA/xxwv2/istore/bg-gradient.gif");
	background-repeat: repeat-x;
	color: #000;
	font: 100%/1.4 Trebuchet MS;
	margin: 0;
	padding: 0;
}
body.sco-body{
	background-color: #ccc;
}
/* ~~ Element/tag selectors ~~ */
ul, ol, dl { /* Due to variations between browsers, it's best practices to zero padding and margin on lists. For consistency, you can either specify the amounts you want here, or on the list items (LI, DT, DD) they contain. Remember that what you do here will cascade to the .nav list unless you write a more specific selector. */
	padding: 0;
	margin: 0;
}
h1, h2, h3, h4, h5, h6, p {
	margin-top: 0;	 /* removing the top margin gets around an issue where margins can escape from their containing div. The remaining bottom margin will hold it away from any elements that follow. */
	padding-right: 15px;
	padding-left: 15px; /* adding the padding to the sides of the elements within the divs, instead of the divs themselves, gets rid of any box model math. A nested div with side padding can also be used as an alternate method. */
}
a img { /* this selector removes the default blue border displayed in some browsers around an image when it is surrounded by a link */
	border: none;
}
/* ~~ Styling for your site's links must remain in this order - including the group of selectors that create the hover effect. ~~ */
a {
	text-decoration: none; /* unless you style your links to look extremely unique, it's best to provide underlines for quick visual identification */
}
a:visited, a:link {
	color: #006699;
}
a:hover, a:active, a:focus { /* this group of selectors will give a keyboard navigator the same hover experience as the person using a mouse. */
	text-decoration: underline;
}
/* ~~ this container surrounds all other divs giving them their percentage-based width ~~ */
.container.sco {
	width: 960px;
	background: #FFF;
	background-color: #FFF !important;
	margin: auto; /* the auto value on the sides, coupled with the width, centers the layout. It is not needed if you set the .container's width to 100%. */
}
/* ~~ the header is not given a width. It will extend the full width of your layout. It contains an image placeholder that should be replaced with your own linked logo ~~ */
.header {
	background: #FF6600;
}
/* ~~ Hides elements like the Skip to main content link */
.element-invisible{
	display:none;
}
/* ~~ These are the columns for the layout. ~~

1) Padding is only placed on the top and/or bottom of the divs. The elements within these divs have padding on their sides. This saves you from any "box model math". Keep in mind, if you add any side padding or border to the div itself, it will be added to the width you define to create the *total* width. You may also choose to remove the padding on the element in the div and place a second div within it with no width and the padding necessary for your design.

2) No margin has been given to the columns since they are all floated. If you must add margin, avoid placing it on the side you're floating toward (for example: a right margin on a div set to float right). Many times, padding can be used instead. For divs where this rule must be broken, you should add a "display:inline" declaration to the div's rule to tame a bug where some versions of Internet Explorer double the margin.

3) Since classes can be used multiple times in a document (and an element can also have multiple classes applied), the columns have been assigned class names instead of IDs. For example, two sidebar divs could be stacked if necessary. These can very easily be changed to IDs if that's your preference, as long as you'll only be using them once per document.

4) If you prefer your nav on the left instead of the right, simply float these columns the opposite direction (all left instead of all right) and they'll render in reverse order. There's no need to move the divs around in the HTML source.

*/
#main-wrapper-sco .page-checkoutpage .panel-2col .panel-col-first {
  width: 490px;
}
* html .page-checkoutpage .panel-2col .panel-col-first {
  width: 489px;
}
.page-checkoutpage .panel-2col .panel-col-first .inside {
	margin:0px;
}
.page-checkoutpage .panel-2col .panel-col-last {
  width: 470px;
}
* html .page-checkoutpage .panel-2col .panel-col-last {
  width: 469px;
}
.page-checkoutpage .panel-2col .panel-col-last .inside {
	margin:0px;
}
.page-checkout .panel-2col .panel-col-first {
  width: 490px;
}
* html .page-checkout .panel-2col .panel-col-first {
  width: 489px;
}
.page-checkout .panel-2col .panel-col-first .inside {
	margin:0px;
}
.page-checkout .panel-2col .panel-col-last {
  width: 470px;
}
* html .page-checkout .panel-2col .panel-col-last {
  width: 469px;
}
.page-checkout .panel-2col .panel-col-last .inside {
	margin:0px;
}
#main-wrapper-sco{
	min-height: 200px;
}
.page-level-error {
	padding:20px
}
.page-level-error .dcs-hours{
	color: 	#666567;
}
/* ~~ This grouped selector gives the lists in the .content area space ~~ */
.content ul, .content ol {
	padding: 0 15px 15px 40px; /* this padding mirrors the right padding in the headings and paragraph rule above. Padding was placed on the bottom for space between other elements on the lists and on the left to create the indention. These may be adjusted as you wish. */
}
/* ~~ The footer ~~ */
.footer {
	background: #CCCCCC;
	clear: both; /* this clear property forces the .container to understand where the columns end and contain them */
	padding: 10px 0;
	position: relative;/* this gives IE6 hasLayout to properly clear */
}
/* ~~ miscellaneous float/clear classes ~~ */
#main-wrapper-sco .fltrt {  /* this class can be used to float an element right in your page. The floated element must precede the element it should be next to on the page. */
	float: right;
	margin-left: 8px;
}
#main-wrapper-sco .fltlft { /* this class can be used to float an element left in your page. The floated element must precede the element it should be next to on the page. */
	float: left;
	margin-right: 8px;
}
-->
.sco #universalheader #header {
	filter: none;
}
#main-wrapper-sco input.inactive, #main-wrapper-sco textarea.inactive{
	color: #666567;
}
#main-wrapper-sco select {
    border: 1px solid #999999;
	font-size: 12px;
}
#main-wrapper-sco input,#main-wrapper-sco select {
	line-height: normal;
	margin:0px;
	padding:1px;
}

#main-wrapper-sco .content .form-item, #main-wrapper-sco .content .form-actions{
	margin:0px;
}
#main-wrapper-sco h1, #main-wrapper-sco h2{
	background-image: url('/commerce/sites/all/themes/wv/images/header-blue-gradiant.png');
	background-position: top left;
	background-repeat: repeat-x;
	color:#fff;
	font-size: 16px;
	line-height: normal;
	margin: 0px;
	padding-bottom: 5px;
	padding-top: 4px;
}
#main-wrapper-sco form {
	margin:0px;
}
#main-wrapper-sco .recommendations{width:462px;}
#main-wrapper-sco .recommendations h2 {background-color:#686666;background-image:none;}
#main-wrapper-sco h3{
	background: #686666;
	color: #fff;
	font-size: 15px;
	line-height: normal;
	margin: 0px;
	padding-bottom: 5px;
	padding-top: 4px;
}
#main-wrapper-sco h3.header-only{
	background: #a4a3a3;
}
#main-wrapper-sco h4{
	font-size: 18px;
}

/* generic styling classes */
#main-wrapper-sco .left-border{
	border-left: 1px solid #DCDDDE;
}
#main-wrapper-sco .height-12{
	height: 12px;
}
#main-wrapper-sco .p-right-5{
	padding-right: 5px;
}
#main-wrapper-sco .p-right-10{
	padding-right: 10px;
}
#main-wrapper-sco .p-left-10{
	padding-left: 10px;
}
#main-wrapper-sco .p-top-10{
	padding-top: 10px;
}
#main-wrapper-sco .m-top-3{
	margin-top: 3px;
}
#main-wrapper-sco .m-top-5{
	margin-top: 5px;
}
#main-wrapper-sco .m-left-5{
	margin-left: 5px;
}
#main-wrapper-sco .m-left-8{
	margin-left: 8px;
}
#main-wrapper-sco .m-left-10{
	margin-left: 10px;
}
#main-wrapper-sco .m-left-15{
	margin-left: 15px;
}
#main-wrapper-sco .m-left-30{
	margin-left: 30px;
}
#main-wrapper-sco .m-top-10{
	margin-top: 10px;
}
#main-wrapper-sco .m-top-15{
	margin-top: 15px;
}
#main-wrapper-sco .m-bottom-10, .m-bottom-10{
	margin-bottom: 10px;
}
#main-wrapper-sco .m-bottom-20{
	margin-bottom: 20px;
}
#main-wrapper-sco .m-right-5{
	margin-right: 5px;
}
#main-wrapper-sco .m-right-10, .m-right-10{
	margin-right: 10px;
}
#main-wrapper-sco .m-right-20{
	margin-right: 20px;
}
#main-wrapper-sco .m-right-30{
	margin-right: 30px;
}
#main-wrapper-sco .thin-right-border{
	border-right: 1px solid #DCDDDE;
}
#main-wrapper-sco .thin-left-border{
	border-left: 1px solid #DCDDDE;
}
#main-wrapper-sco .thin-bottom-light-border{
	border-bottom: 1px solid #B3B3B3;
	padding-bottom: 0px;
}

#main-wrapper-sco .orangeButton.bin, #main-wrapper-sco .grayButton.bin {
    border-radius: 5px 5px 5px 5px;
    font-size: 16px;
    padding: 1px 10px;
}
#main-wrapper-sco .orangeButton, #main-wrapper-sco .orangeButton2, #main-wrapper-sco .grayButton, #main-wrapper-sco .grayButton2, .orangeButton, .orangeButton2, .grayButton, .grayButton2 {
    border: medium none;
    color: #fff;
    cursor: pointer;
    font-family: Trebuchet MS !important;
}
#main-wrapper-sco .orangeButton,#main-wrapper-sco .orangeButton2, .orangeButton, .orangeButton2 {
    background: none repeat scroll 0 0 #FF6600;
}
#main-wrapper-sco .grayButton,#main-wrapper-sco .grayButton2 {
    background: none repeat scroll 0 0 #006699;
}
#thank-you .upsell-bin a.orangeButton, #thank-you .upsell-bin a.orangeButton:visited,#thank-you .upsell-bin a.orangeButton:link, a.orangeButton, a.orangeButton2, a.grayButton, a.grayButton2 {
	color:#fff;
}
#thank-you .upsell-bin a.orangeButton, #thank-you .upsell-bin a.orangeButton:visited,#thank-you .upsell-bin a.orangeButton:link {
	font-weight: normal;
}
#thank-you .upsell-bin a.orangeButton, #thank-you .upsell-bin a.orangeButton:visited,#thank-you .upsell-bin a.orangeButton:link, a.orangeButton:hover, a.orangeButton:active, a.orangeButton:focus, a.grayButton:hover, a.grayButton:active, a.grayButton:focus {
	text-decoration:none;
}
.orangeButton2, .grayButton2 {
    border-radius: 10px 10px 10px 10px;
    font-size: 16px;
    margin-top: 10px;
    padding: 2px 20px;
}
.orangeButton, .grayButton {
    border-radius: 10px 10px 10px 10px;
    font-size: 16px;
    padding: 4px 15px;
}
.orangeButton.bin, .grayButton.bin { border-radius: 5px 5px 5px 5px; font-size: 16px; padding: 1px 10px; -moz-border-radius: 5px; -webkit-border-radius: 5px; }
#main-wrapper-sco  .orangeButton2:hover, #main-wrapper-sco  .orangeButton:hover, #main-wrapper-sco .grayButton2:hover, #main-wrapper-sco .grayButton:hover, .orangeButton2:hover, .orangeButton:hover, .grayButton2:hover, .grayButton:hover { background: #ff9046; }

.orangeButton.disabled, .orangeButton.disabled:hover, .grayButton.disabled, .grayButton.disabled:hover{
	background: #DCDDDE;
	color: #fff;
	cursor: text;
}

.basket-items, .checkout-options, .you-may-also-like, .need-help, .card-options, .trusted-site, .mailing-information, .payment-information, .review-and-submit{
	border: 1px solid #DCDDDE;
	margin: 10px;
}
.checkout-options, .you-may-also-like, .need-help, .trusted-site, .card-options, .mailing-information, .payment-information, .review-and-submit{
	margin-left: 0px;
	margin-bottom: 0px;
}
.card-options, .mailing-information, .payment-information, .review-and-submit{
	margin-top: 0px;
}
.payment-information-entry{
	margin-top: 10px;
	margin-bottom: 10px;
}

.also-like-item {
	float:left;
	width:110px;
}
.checkout-options{
	font-size: 13px;
	margin-bottom: 0px;
}
.checkout-options-inner{
	margin-bottom:15px;
	margin-top:15px;
}
.checkout-options h5, .checkout-options h6{
	font-size: 18px;
}
.checkout-options h5{
	color: #003f5f;
	margin-bottom: 12px;
}
.checkout-options h5, .checkout-options p{
	padding-left:0px;
}
.checkout-options input{
	margin-bottom:5px;
}
.checkout-options input.password, .checkout-options input.fake-password, .checkout-options input[type="password"], .checkout-options input[type="text"], .checkout-options input[type="email"]{
	width: 235px;
}
.checkout-options .column1, .checkout-options .column2 {
	float:left;
	padding: 0px;
}
.checkout-options .column1, .checkout-options .column2{
	padding-left:20px;
}
.checkout-options .column1{
	width: 35%;
}
.checkout-options .column2{
	width: 55%;
}
.checkout-options .column1 p{
	margin-bottom: 6px;
}

.checkout-options a{
	font-size: 11px;
}
.checkout-options #guest_checkout.disabled h5, .checkout-options #guest_checkout.disabled p{
	color: #828181;
}
.sprite-icon-basket{ float:right; }

.also-like-item h5 {
	padding:0px;
}
.item img {
	border: 1px solid #DCDDDE;
}
.donation-total, .need-help {
	background: #eff0f1;
}
.need-help .column1, .need-help .column2 {
	color: #666;
	float:left;
	padding-top: 5px;
}
.need-help .column1 {
	color: #000000;
	font-size: 15px;
	padding-left: 5px;
	width: 59%;
}
.need-help .column1 strong{
	font-size: 17px;
}
.need-help .column2 {
	color:#666567;
	font-size:13px;
	padding-right: 5px;
	width: 38%;
}
.need-help strong {
	color: #000000;
}
.popups-container .modal-header{
	border:none;
}
.item .price input{
	text-align: right;
	width: 50px;
}
.item .qty input{
	text-align: right;
	width: 25px;
}
.item {
	border-bottom: 3px solid #666;
	clear: both;
	margin: 10px 10px 20px 10px;
	padding-bottom: 10px;
}
.item .item-image, .item .item-information {
	float:left;
}
.item .item-image{
	width:90px;
}
.item .item-information {
	width:352px;
}
.item .item-description {
	float: left;
	margin-left: 10px;
	width: 230px;
}
.item .item-description h4, .item .item-description h4 a {
	color: #111111;
	margin:0px;
	padding:0px;
}
.item .item-description .sponsorship {
	color: #666567;
	font-size: 13px;
	margin-top: -2px;
}
.item .item-description .commitment-frequency {
	font-size: 13px;
	margin-top: 12px;
}
.item .line-item-summary {
	float: right;
	font-size: 14px;
	min-height: 80px;
	text-align: right;
	width: 110px;
}
.item .line-item-summary div.price, .item .line-item-summary div.qty, .item .line-item-summary div.item-total  {
	clear: both;
	margin-bottom: 5px;
}
.item .item-actions {
	clear:both;
	color: #DCDDDE;
	font-size: 11px;
	text-align:right;
}
.item .item-gift-card{
	border-top: 1px solid #DCDDDE;
	clear:both;
	font-size: 12px;
	height: 26px;
	margin-top: 6px;
}
.item .item-gift-card div{
	margin-right: 5px;
	margin-top: 6px;
}
.item .item-gift-card .note, .send-card-address-edit .note, #billing-address .note, .create-account .note, .send-card-to .note, .card-item .note{
	font-size:11px;
}
.send-card-to .note {
	margin-left: 34px;
	margin-top: 6px;
}
.item .item-gift-card .sprite-icon-gift-card{
	margin-top: 0px;
}

.line-item-summary .form-item{float:right;}
.line-item-summary .form-item input{margin-left:5px;}
#main-wrapper-sco .item-actions input{border:none;background:none;font-size: 11px;color: #006699;cursor:pointer;vertical-align: inherit;}
#main-wrapper-sco .item-actions input:hover{text-decoration:underline;}
.item-actions .ajax-progress-throbber.ajax-progress{margin-left:-70px;margin-top:15px;}
.item-actions .ajax-progress-throbber.ajax-progress .message{position:absolute;top:0px;margin-top:3px;text-align:left;width:70px;}

.clear-both {
	clear:both;
}
.float-left{
	float:left;
}
.float-right{
	float:right;
}
a.action {
	color: #006699;
	text-decoration: none;
}
a.action:hover, a.action:active, a.action:focus {
	text-decoration: underline;
}
.donation-total, .continue-browsing {
	clear: both;
	margin: 10px 10px 20px 10px;
	padding: 5px;
}

.donation-total h5{
	font-size: 19px;
	padding-bottom: 10px;
	padding-top: 10px;
}
.donation-total h6{
	font-size: 13px;
}
.donation-total h5, .donation-total h6 {
	float: left;
	height:22px;
	margin: 0px;
	padding:0px;
}
.donation-total h5.label, .donation-total h6.label {
	background-color: transparent;
	color: #000;
	margin-top: 5px;
	width:57%;
}
.donation-total h5.amount, .donation-total h6.amount {
	margin-top: 5px;
	text-align: right;
	width:42%;
}

div.ajax-progress-throbber.ajax-progress {float: none; position: absolute; margin-left: 5px; color: black; width: 65px; font-size: 10px;}
.ajax-progress .message{float:none;}

.sprite-icons-cart {
    background-image: url('/commerce/sites/all/themes/wv/images/sprite-icons-cart.png');
	background-repeat: no-repeat;
	background-position: top left;
}
.sprite-icons-cart:hover {
    background-image: url('/commerce/sites/all/themes/wv/images/sprite-icons-cart-hover.png');
	background-repeat: no-repeat;
	background-position: top left;
}

.sprite-arrow-double-blue-left, .sprite-arrow-double-blue-left:hover{ background-position: 0 0; width: 19px; height: 51px; }
.sprite-arrow-double-blue-right, .sprite-arrow-double-blue-right:hover{ background-position: 0 -101px; width: 19px; height: 50px; }
.sprite-button-cta-left-rollover, .sprite-button-cta-left-rollover:hover{ background-position: 0 -201px; width: 3px; height: 27px; }
.sprite-button-cta-left, .sprite-button-cta-left:hover{ background-position: 0 -278px; width: 3px; height: 27px; }
.sprite-button-cta-right-rollover, .sprite-button-cta-right-rollover:hover{ background-position: 0 -355px; width: 3px; height: 27px; }
.sprite-button-cta-right, .sprite-button-cta-right:hover{ background-position: 0 -432px; width: 3px; height: 27px; }
.sprite-icon-basket, .sprite-icon-basket:hover{ background-position: 0 -509px; width: 20px; height: 19px; }
.sprite-icon-gift-card, .sprite-icon-gift-card:hover{ background-position: 0 -578px; width: 22px; height: 26px; }
.sprite-icon-help, .sprite-icon-help:hover{ background-position: 0 -654px; width: 21px; height: 20px; }
.sprite-icon-lock, .sprite-icon-lock:hover{ background-position: 0 -724px; width: 13px; height: 19px; }
.sprite-icon-play-video, .sprite-icon-play-video:hover{ background-position: 0 -793px; width: 19px; height: 18px; }
.sprite-icon-telephone, .sprite-icon-telephone:hover{ background-position: 0 -861px; width: 31px; height: 33px; }


.sprite-icons-secure  {
    background-image: url('/commerce/sites/all/themes/wv/images/sprite-icons-secure.png');
	background-repeat: no-repeat;
	background-position: top left;
	display:block;
}
.sprite-logo-bbb{ background-position: 0 0; width: 34px; height: 55px; }
.sprite-logo-charity-navigator{ background-position: 0 -60px; width: 146px; height: 37px; }
.sprite-logo-ecfa{ background-position: 0 -102px; width: 34px; height: 33px; }
.sprite-logo-thawte{ background-position: 0 -140px; width: 110px; height: 27px; }

.sprite-icons-payment.amex, .sprite-icons-payment.amex.no-hover:hover{ background-position: 0 -112px; width: 57px; height: 36px; }
.sprite-icons-payment.amex.gray{ background-position: 0 0; width: 57px; height: 36px; }
.sprite-icons-payment.amex:hover, .sprite-icons-payment.amex.selected{ background-position: 0 -56px; width: 57px; height: 36px; }

.sprite-icons-payment.discover, .sprite-icons-payment.discover.no-hover:hover{ background-position: 0 -354px; width: 56px; height: 36px; }
.sprite-icons-payment.discover.gray{ background-position: 0 -242px; width: 56px; height: 36px; }
.sprite-icons-payment.discover:hover, .sprite-icons-payment.discover.selected{ background-position: 0 -298px; width: 56px; height: 36px; }

.sprite-icons-payment.mc, .sprite-icons-payment.mc.no-hover:hover{ background-position: 0 -522px; width: 55px; height: 36px; }
.sprite-icons-payment.mc.gray{ background-position: 0 -410px; width: 55px; height: 36px; }
.sprite-icons-payment.mc:hover, .sprite-icons-payment.mc.selected{ background-position: 0 -466px; width: 55px; height: 36px; }

.sprite-icons-payment.paypal, .sprite-icons-payment.paypal.no-hover:hover{ background-position: 0 -690px; width: 57px; height: 36px; }
.sprite-icons-payment.paypal.gray{ background-position: 0 -578px; width: 57px; height: 36px; }
.sprite-icons-payment.paypal:hover, .sprite-icons-payment.paypal.selected{ background-position: 0 -634px; width: 57px; height: 36px; }

.sprite-icons-payment.visa, .sprite-icons-payment.visa.no-hover:hover{ background-position: 0 -895px; width: 55px; height: 36px; }
.sprite-icons-payment.visa.gray{ background-position: 0 -783px; width: 55px; height: 36px; }
.sprite-icons-payment.visa:hover, .sprite-icons-payment.visa.selected{ background-position: 0 -839px; width: 55px; height: 36px; }


.sprite-payment-checked-checkbox{ background-position: 0 -168px; width: 18px; height: 17px; }
.sprite-payment-checkmark{ background-position: 0 -205px; width: 16px; height: 17px; }
.sprite-payment-no-checkmark{ background: none; width: 16px; height: 17px; }
.sprite-payment-unchecked-checkbox{ background-position: 0 -746px; width: 18px; height: 17px; }

.sprite-icons-payment {
    background-image: url('/commerce/sites/all/themes/wv/images/sprite-icons-payment.png');
	background-repeat: no-repeat;
	display:block;
}


.secure-checkout {
	border: 1px solid #DCDDDE;
	padding-bottom: 10px;
	padding-top: 5px;
	margin-right: 10px;
	margin-top: 10px;
}
.secure-checkout div{
	margin-left: 10px;
	padding-left:10px;
}
.sign-in-submit {
	margin-bottom: 10px;
	margin-top: 30px;
}
.sign-in-submit input{
	margin-right: 10px;
}
#main-wrapper-sco .content .form-item.form-item-email{
	margin-bottom: 8px;
}
.mailing-information label, .mailing-information .my-info .label, .send-card-address-edit label, .send-card-to-myself .label, .payment-information label, .payment-information .my-info .label, .card-info .label, .review-and-submit label{
	background:transparent;
	color: #000;
	clear:both;
	display:block;
	float: left;
	padding:0px;
}
.mailing-information label, .mailing-information .my-info .label, .send-card-address-edit label, .send-card-to-myself .label, .payment-information label, .payment-information .my-info .label, .card-info .label{
	width: 100px;
}
.review-and-submit label{
	width: 200px;
}

.mailing-information label, .review-and-submit label{
	padding-left: 15px;
}

.payment-information label.option{
	padding-left: 5px;
}
.mailing-information div.mailing-input, .send-card-address-edit div.send-card-input, .mailing-information .my-info .address, .payment-information div.payment-input, .payment-information .my-info .address{
	float:left;
}
.my-info .address, .card-item .send-to{
	float:left;
	overflow:hidden;
	text-overflow:ellipsis;
	white-space:nowrap;
	width: 335px;
}
.card-options .card-item .send-to {
	width: 385px;
}
.payment-information .my-info .address{
	width: 263px;
}
.send-card-to-myself.my-info .address{
	width: 295px;
}
.mailing-information input, .send-card-address-edit input, .payment-information input, .mailing-information select, .send-card-address-edit select, .payment-information select{
	width:320px;
}
.mailing-information input[type="checkbox"], .send-card-address-edit input[type="checkbox"], .payment-information input[type="checkbox"]{
	width:14px;
}
.mailing-information select.state, .mailing-information input {
	width:275px;
}
.payment-information select.expiration-month, .payment-information select.expiration-year{
	width: 60px;
}
.payment-information input.card-number{
	width:125px;
}
.mailing-information input.first-name,  .mailing-information input.last-name {
	 width: 133px;
}
.mailing-information input.zip, .send-card-address-edit input.zip, .payment-information input.zip{
	width:71px;
}
.mailing-information .form-item-use-billing label{
	clear: none;
	padding-left: 8px;
	width: 250px;
}

.mailing-information input.use-billing {
	width:15px;
}
.mailing-information div.mailing-input-no-label{
	clear: both;
	margin-left: 115px;
}
.mailing-information p {
	padding: 5px 0 15px 15px;
}
.mailing-information, .payment-information, .review-and-submit {
	font-size: 13px;
}
.mailing-information label, .send-card-address-edit label, .mailing-information div.mailing-input, .send-card-address-edit div.send-card-input, .payment-information div.payment-input{
	margin-bottom: 7px;
}
.mailing-information .my-info, .payment-information .form-item-paperless {
	margin: 10px;
}
.content .form-item.form-item-first-name, .content .form-item.form-item-last-name{float:left;}
.content .form-item.form-item-last-name{margin-left:6px;}

.content .panel-2col .panel-separator{
	margin: 0px;
}
.review-and-submit .donation-total{
	margin: 0px;
}
div.preauthenticated p{
	margin: 0px;
}
div.preauthenticated{
	margin: 20px 0 20px 15px;
}
.checkout-options div.preauthenticated a{
	font-size: 13px;
}
/* emptyp basket */
.empty-basket{
	margin-bottom: 50px;
	margin-top: 50px;
	min-height: 750px;
}

.empty-basket p{
	margin-bottom: 40px;
	text-align: center;
}

.empty-basket div.center{
	margin: 0 auto;
	width: 180px;
}

/* errors displayed to user */
.fieldError, .panelError, .forgotPWEmailError, .recommendations-widget #recItem-mostNeed  .amount-error {
	color: #bb0707;
	font-size: 13px;
	font-weight: bold;
}
/* address form for mailing address, payment address and send a card address */
.mailing-information .fieldError, .send-card-address-edit .fieldError, .payment-information .fieldError{
	clear:both;
}
.mailing-information .fieldError{
	padding-left:15px;
}

.send-card-to-addresses {
	width: 210px;
}

.panelError{
	font-size:12px;
}
h1 div.edit {
	padding-top: 2px;
}
h3 a, h3 a:link, h3 a:visited, h1 div.edit a,  h1 div.edit a:link,  h1 div.edit a:visited {
	color: #fff;
}
h3 .edit, h1 .edit{
	font-size:11px;
	margin-right: 5px;
}
.card-options {
	font-size: 13px;
}
.remaining-characters-message{
	color: #666567;
	float:right;
}
/* Edit, Edit & Personalize and Cancel button */
.card-options input.personalize, .card-options input.send-card-edit-cancel, .mailing-information input.send-card-edit-cancel, #paymentForm .payment-cancel, #billing-address input.payment-address-edit, #payment input.payment-method-edit {
	background:none;
	border:none;
	color: #006699;
	cursor:pointer;
	font-size: 11px;
	text-align: right;
}
.card-options input.personalize:hover, .card-options input.send-card-edit-cancel:hover, .mailing-information input.send-card-edit-cancel:hover, #paymentForm .payment-cancel:hover, #billing-address input.payment-address-edit:hover, #payment input.payment-method-edit :hover{
	text-decoration:underline;
}
.card-options input.personalize {
	margin-left: 8px;
    width: 102px;
}
.card-options input.personalize.edit-mode {
	display:none;
}

.card-options input.send-card-edit-cancel, .mailing-information input.send-card-edit-cancel, #paymentForm .payment-cancel, #billing-address input.payment-address-edit, #payment input.payment-method-edit {
    text-align: right;
	width: 40px;
}
.mailing-information input.send-card-edit-cancel {
        text-align: left;
        width: 45px;
}
/* Credit card and payment information */

.card-options .sub-header, .cardForm .sub-header{
	float:left;
	margin-top:5px;
	margin-bottom:5px;
	width: 400px;
}
.card-options .send-card-options, .cardForm .send-card-options{
	border-top: 1px solid #DCDDDE;
	clear:both;
	padding: 10px 0;
}
.card-options .send-card-options .send-card-to, .cardForm .send-card-options .send-card-to{
	padding: 0 10px;
}
.card-options .gift-card-actions, .card-options .gift-card-actions, .cardForm .gift-card-actions, .cardForm .gift-card-actions{
	margin-top: 10px;
	text-align:right;
}
.card-options .send-card-address-edit, .card-options .send-card-message-edit, .cardForm .send-card-address-edit, .cardForm .send-card-message-edit{
	padding: 10px 15px;
}
.card-options .send-card-message-edit textarea, .cardForm .send-card-message-edit textarea{
	clear:both;
}

.card-options .send-card-options.unchecked, .cardForm .send-card-options.unchecked{
	margin-bottom: 0px;
}
.card-options .send-card-options h5{
	font-size: 16px;
}
.card-item {
	border-top: 1px solid #DCDDDE;
	padding-bottom: 10px;
	padding-top: 10px;
}
.card-item:first-child{
	border:none;
}

.card-item h4{
	padding-left:0px;
}
.card-item{
	font-size: 14px;
}
.card-item .send-to .recipient{
	color: #666567;
}
.card-options fieldset{
	background: #EFF0F1;
}

.card-options fieldset.send-card-message-edit{
	background-color: #fff;
	background-image: url('/commerce/sites/all/themes/wv/images/card-message-gradiant.png');
	background-repeat: repeat-x;
	border-top: 1px dotted #666666;
}

.card-options input[type=checkbox] {
    position: absolute;
    left: -9999px;
}

.card-options .send-card-options input[type=checkbox] + label{
	background-image: url('/commerce/sites/all/themes/wv/images/sprite-icons-payment.png');
	background-position: 0 -167px;
	background-repeat: no-repeat;
	background-color: #fff;
    display:inline-block;
	height: 21px;
	margin-bottom:8px;
	padding: 0 0 0 30px;
}

#billing-address .my-info {
	padding-top: 5px;
}

.card-options  .send-card-options.unchecked input[type=checkbox] + label{
    background-position: 0 -745px;
}
.card-options .send-card-options-continue {
	margin-bottom: 10px;
	margin-left:247px;
	margin-top: 10px;
}
.card-options .send-card-options-continue.show-button {
	display: block;
}
.card-options .send-card-options-continue.hide-button {
	display: none;
}
.card-options .send-card-options .send-card-edit-container {
	margin-top: 14px;
}
#paymentForm{
	padding-bottom: 10px;
	padding-top: 10px;
}
#paymentForm input.visa, #paymentForm input.mc, #paymentForm input.amex, #paymentForm input.discover, #paymentForm input.paypal{
	border:none;
}
.card-options textarea{
	resize:none;
}
.send-card-address-edit .note, #billing-address .note{
	margin-top: 6px;
}
select.select-billing-address, select.select-payment-method {

	width: 100%;
}
ul.cc-types{
	height: 45px;
	padding:5px 0 0 53px;
}
.cc-types li{
	display:inline;
	float:left;
	margin-right:10px;
}
.cc-types li a{
	display:block;
}
.card-information, .card-info{
	clear:both;
}
.card-information{
	margin-bottom:10px;
	padding-top: 10px;
}
.card-info{
	padding-top: 10px;
}

#payment {
	border-top: 1px solid #DCDDDE;
}
#payment, #billing-address {
	padding:15px;
}

.form-item-paperless label{
	clear:none;
	float:left;
	width:346px;
}
.payment-information input.paperless{
	float:left;
	margin-left:5px;
}
.payment-information .opted-in-paperless{
	margin: 0 15px;
}
/* review & submit section */
.review-input{
	margin-bottom:10px;
}
.review-and-submit .donation-total{
	padding-left: 25px;
	padding-right: 25px;
}

/* Modal/lightbox and tooltips */
#modalBackdrop {
	position: fixed!important;
	background-color: black!important;
	opacity: .55;
}

div.ctools-modal-content a.close img {
	display: none;
}
div.ctools-modal-content {
	background: white;
	border: solid 1px #DDD;
	color: black;
	font-size: 12px;
	padding: 0;
	margin: 2px;
	text-align: left;
	-webkit-border-radius: 0.5em;
	-moz-border-radius: 0.5em;
	-webkit-box-shadow: -1em 1em 1em rgba(0, 0, 0, 0.5);
	width: 600px;
}

div.ctools-modal-content {
	font-size: 12px;
}
div.ctools-modal-content .modal-header {
	background: white url('../../../modules/panels/images/bg-shade-light.png') repeat-x bottom left;
	color: #777;
	display: block;
	font-weight: 700;
	letter-spacing: normal;
	padding: 0.25em 1em;
	-moz-border-radius-topleft: 0.5em;
	-moz-border-radius-topright: 0.5em;
	-webkit-border-top-left-radius: 0.5em;
	-webkit-border-top-right-radius: 0.5em;
	border-top-left-radius: 0.5em;
	border-top-right-radius: 0.5em;
}

div.ctools-modal-content .modal-title {
	color: #555;
	font-size: 120%;
	font-weight: bold;
	letter-spacing: normal;
	overflow: hidden;
	text-shadow: white 1px 1px 1px;
	white-space: nowrap;
}
div.ctools-modal-content {
	text-align: left;
}

.ctools-modal-card-options-lightbox, .monthly-giving-lightbox, .ctools-modal-countries-mailing-lightbox, .ctools-modal-countries-card-lightbox, .ctools-modal-countries-payment-lightbox, .ctools-modal-paperless-lightbox, .ctools-modal-card-message-lightbox, .ctools-modal-card-signature-lightbox, .ctools-modal-basket-multiple-card-lightbox, .ctools-modal-multiple-card-lightbox, .ctools-modal-multiple-card-edit-lightbox{
	background-image: url('/commerce/sites/all/themes/wv/images/sprite-icons-cart.png');
	background-repeat: no-repeat;
	background-position: 0 -654px;
	height: 20px;
	float: left;
	width: 21px;
}
.ctools-modal-card-options-lightbox:hover, .monthly-giving-lightbox:hover, .ctools-modal-countries-mailing-lightbox:hover, .ctools-modal-countries-card-lightbox:hover, .ctools-modal-countries-payment-lightbox:hover, .ctools-modal-paperless-lightbox:hover, .ctools-modal-card-message-lightbox:hover, .ctools-modal-card-signature-lightbox:hover, .ctools-modal-basket-multiple-card-lightbox:hover, .ctools-modal-multiple-card-lightbox:hover, .ctools-modal-multiple-card-edit-lightbox:hover{
    background-image: url('/commerce/sites/all/themes/wv/images/sprite-icons-cart-hover.png');
	background-repeat: no-repeat;
	background-position: top left;
	background-position: 0 -654px;
	height: 20px;
	float: left;
	width: 21px;
}
#basket-items .ctools-modal-card-options-lightbox {
	background: none;
	width: 350px;
}
.ctools-modal-card-options-lightbox a, .ctools-modal-card-options-lightbox div, .ctools-modal-card-options-lightbox a:link, .ctools-modal-card-options-lightbox a:visited  {
	color: #000000;
}
.card-options-full-description.need-help-pwd .need-help-header{
	font-weight: bold;
	font-size: 14px;
}
div.card-options-full-description p, div.card-options-full-description .need-help-pwd{
	color: #666567;
	padding-left: 0px;
}
.card-message-description h4, .card-signature-description h4 {
	margin: 0px;
}
.card-message-description ul, .card-signature-description ul {
	list-style-type: disc;
	padding-left: 45px;
	margin:0px;
}
div.ctools-modal-content a.close{
	background: url("https://cdn.worldvision.org/m/common/lightbox/skin/icons/phlex-close.png") no-repeat scroll 0 0 transparent;
    display: block;
    font-size:0px;
	height: 41px;
	line-height:0;
	opacity: 1;
	position: absolute;
	right: -15px;
	top: -15px;
    width: 41px;
}
.page-checkoutpage #shadowbox_body {background-color: white;}
.page-checkout #shadowbox_body {background-color: white;}

div.ctools-modal-content table, div.card-options-full-description table{
	width: auto;
}
div.ctools-modal-content table tbody{
	border-top: none;
}
div.ctools-modal-content tbody tr:nth-child(2n) td, div.ctools-modal-content tbody tr.even td,
div.card-options-full-description tbody tr:nth-child(2n) td, div.card-options-full-description tbody tr.even td  {
    background: white;
}
.forgot-password p{
	padding:0px;
	margin-bottom: 19px;
}
.forgot-password .form-item {
	margin-top: 0px;
}
.forgot-password .form-item input {
	margin-bottom: 0px;
}
.card-options-full-description table p{
	color: #565656;
	font-family: GillSansWeb;
	font-size:15px;
	margin-bottom:-2px;
	margin-top:0px;
}
.card-options-full-description table p.sub-head{
	font-weight:bold;
	margin-bottom: 8px;
}
.card-options-full-description a{
	color: #FF6600;
}
.card-options-full-description a:hover{
	color: #006699;
}
.basket-items .card-multiple-qty{
	clear:both;
	margin-left: 27px;
}
.card-multiple-qty{
	font-size: 11px;
	margin-top: 2px;
	width: 380px;
}
.basket-items .premium-item{
	clear:both;
	margin-left: 27px;
}
.premium-item{
	font-size: 11px;
	margin-top: 2px;
	width: 380px;
}
.page-wvcheckout-nojs .monthly-giving-description, .page-wvcheckout-nojs .paperless-description, .page-wvcheckout-nojs .card-message-description, .page-wvcheckout-nojs .card-signature-description, .page-wvcheckout-nojs .edit-card, .page-wvcheckout-nojs .multiple-card-description,
.page-wvcheckout-nojs .countries-description {
	padding: 30px;
	font-size: 14px;
}
.monthly-giving-description, .paperless-description {
	font-size: 13px;
}
#main-wrapper-sco .tooltip{
	opacity:1;
	filter: alpha(opacity = 100);
	position: relative;
	z-index: 10;
}
div.ctools-modal-content .modal-header.tooltip-popup {
	background: white;
}
.left-arrow{
	background-image: url('/commerce/sites/all/themes/wv/images/left-arrow.png');
	left: -10px;
}
.right-arrow{
	background-image: url('/commerce/sites/all/themes/wv/images/right-arrow.png');
	right: -17px;
}
.left-arrow, .right-arrow{
	background-repeat: no-repeat;
	height: 20px;
	position: absolute;
	top:50px;
	width: 21px;
}

#thank-you .item .line-item-summary .item-grumpy-goat {
	text-align:left;
	margin-top:10px;
	padding:0px;
	margin-right:0px;
	margin-bottom:-25px;
}
#thank-you .item .line-item-summary .item-grumpy-goat img {
	border:none;
}
#thank-you .item .line-item-summary .item-grumpy-goat-text {
	font-size:11px;
	width: 170px;
	float:left;
	padding:0px;
	margin:0px;
}

/* Thank you page */
#thank-you {
	padding: 30px;
	font-size: 14px;
}
#thank-you h1{
	background: #fff;
	color: #000;
	font-size:19px;
	padding-left: 0px;
	padding-bottom: 10px;
}
#thank-you p {
	font-size:12px;
	margin: 0 0 10px 0;
	padding: 0px;
}
#thank-you .item {
	border: 1px solid #DCDDDE;
	margin: 0px 0px 10px 0px;
	padding-top: 10px;
	position: relative;
}
#thank-you .item .item-information {
	width: 770px;
}
#thank-you .item .p-left-10 {
	position:absolute;
	bottom:10px;
}
#thank-you .item .item-description {
	width: 510px;
}
#thank-you .item .item-description p, #thank-you .item .item-description div.shipping-to{
	color: #666567;
}
#thank-you .item .item-description p{
	margin-top: 12px;
}
#thank-you .item .item-image {
	padding-left: 10px;
	width: 110px;
	height: 105px;
}
#thank-you .item.card-enabled .item-image, #thank-you .item.card-enabled .item-description {
	margin-bottom:25px;
}
#thank-you .item .line-item-summary {
	min-height: 40px;
	width: 250px;
}
#thank-you .item .line-item-summary div {
	clear: none;
	margin-right: 5px;
	padding-right: 5px;
	padding-bottom: 5px;
}
#thank-you .item .line-item-summary div.fb-share-button {
	margin:0px;
	padding:0px;
}
#thank-you .item .line-item-summary .fb, #thank-you .item .line-item-summary .twitter{
	float:right;
	margin:0px;
	padding:0px;
}
#thank-you .item .line-item-summary .twitter{
	width: 30px;
}
#thank-you .donation-total{
	margin:0px;
}
.your-account-number, .your-order-number {
	border: 1px solid #DCDDDE;
	float:left;
	font-size:12px;
	padding: 10px;
	width:419px;
}.your-account-number {
	margin-right:2%;
}
#thank-you .upsell-bin {
	border: 1px solid #DCDDDE;
	margin-top: 10px;
	padding: 5px 10px;
	font-family: Trebuchet MS;
	position: relative;
	min-height:81px;
}
#thank-you .upsell-bin.small-bin {
	min-height:85px;
}
#thank-you .upsell-bin.no-image {
	min-height: 30px;
}
#thank-you .upsell-bin h3 {
	background: none;
	color: #000;
	font-size: 15tpx;
	padding-left: 0px;
	font-weight: bold;
}
#thank-you .upsell-text {
	font-size: 12px;
	float: left;
}
#thank-you .upsell-image.right {
	position:absolute;
	top:5px;
	right:5px;
}
#thank-you .upsell-image.left {
	float:left;
	margin-right: 50px;
}
#thank-you .upsell-bin ul {
	list-style-type:disc;
	padding-left: 15px;
	padding-bottom: 0px;
	font-size: 12px;
	line-height: 18px;
}
#thank-you .upsell-bin .li-link {
	list-style-type:none;
}
#thank-you .upsell-bin a {
	text-decoration: none;
	color: #ff6600;
	font-weight: bold;
}
#thank-you .upsell-bin a:visited, #thank-you .upsell-bin a:link {
	color: #ff6600;
}
#thank-you .upsell-bin a:hover, #thank-you .upsell-bin a:active, #thank-you .upsell-bin a:focus {
	text-decoration: underline;
}
.sponsored-child h3 {
	border-bottom: 1px solid #DCDDDE;
	padding-left: 5px;
	margin-bottom: 8px;
}
#thank-you .my-sponsored-child, #thank-you .my-wv{
	float: left;
}
#thank-you .my-sponsored-child{
	border-right: 1px solid #DCDDDE;
	color: #666567;
	margin-right: 13px;
	padding-left: 5px;
	width: 275px;
}
#thank-you .my-wv{
	font-size:12px;
	padding-bottom: 10px;
	width: 598px;
}
#thank-you .tax-disclaimer .note{
	font-style: italic;
}
#thank-you .tax-deductible-mailing-address{
	font-size:12px;
}
.thin-bottom-border{
	border-bottom: 1px solid #DCDDDE;
}
.social-sharing{
	color: #666567;
	font-size:12px;
	margin-top: 30px;
}
/* thank you - create an account lightbox */
#create-account {
	display:none;
}
.create-account.lightbox {
	padding-left: 15px;
	padding-right: 15px;
	padding-top:5px;
}
.create-account.lightbox p {
	margin: 0px;
	padding-left: 0px;
	padding-right: 0px;
}
.create-account.lightbox h3 {
	background: none;
	color: #000;
	padding-left: 0px;
	padding-bottom: 15px;
	padding-top: 15px;
}
.create-account.lightbox h5 {
	background: none;
	color: #000;
	font-weight:normal;
	margin:0px;
	padding-left: 0px;
	padding-bottom: 8px;
	padding-top: 0px;
}
.create-account.lightbox input{
	margin:0px;
}
.create-account.lightbox .label, .create-account.lightbox .field {
	float: left;
	padding-left: 0px;
}
.create-account.lightbox .label {
	background-color: transparent;
	color: #000000;
	clear:both;
	font-weight:normal;
	text-shadow:none;
	width: 120px;
}
.create-account.lightbox .form-item-password {
	float: left;
	margin-bottom: 0px;
}
.create-account.lightbox .note.password {
	clear: both;
	margin-left: 120px;
}
.create-account.lightbox ul{
	list-style-type:disc;
	margin-left: 22px;
	margin-top: 0px;
}
#CreateAcctPWError {
	clear: both;
	margin-left: 120px;
}
.create-account.lightbox .form-item {
	margin-top: 0px;
}
.create-account.lightbox .cancel {
	float: left;
	margin-left: 10px;
}
.create-account.lightbox .submit {
	float: left;
	margin-left: 120px;
}

.error-form-disabled, a.error-form-disabled {
	color: #828181;
	cursor: default;
}
a.error-form-disabled:link, a.error-form-disabled:hover {
	color: #828181;
}
 a.error-form-disabled {
	text-decoration:none;
}
.orangeButton.error-form-disabled, .orangeButton2.error-form-disabled, .orangeButton:hover.error-form-disabled, .orangeButton2:hover.error-form-disabled{
	background: #F0F0F0;
}
.card-options input.error-form-disabled, .mailing-information input.error-form-disabled {
	color: #828181;
}
/* log in and admin page */
.page-user .content, .page-admin .content {
	font-size: 13px;
	margin: 10px;
}
.page-user .content .form-type-password {
	margin-top: 10px;
}
.page-user .content #edit-actions {
	margin-top: 5px;
}
.page-user .content .form-submit {
	background: none repeat scroll 0 0 #FF6600;
    border: medium none;
	border-radius: 5px 5px 5px 5px;
    color: #FFFFFF;
    cursor: pointer;
    font-family: Trebuchet MS !important;
	font-size:15px;
    padding: 1px 10px;
}

/*  Child card module
    -----------------  */
#sponsorship .child-cards-container {
	max-width: 462px;
}

#sponsorship .child-cards {
	position: relative;
}

#sponsorship .card-area {
	border: 1px solid #DCDDDE;
	filter: inherit;
	max-width: 462px;
	opacity: inherit;
}

#sponsorship #loader {
	margin-top: -150px;
	margin-left: 70px;
	position: absolute;
	z-index: 2;
}

#sponsorship .child-image {
	filter: inherit;
	float: left;
	height: 133px;
	padding: 0;
	opacity: inherit;
}
#sponsorship .to, #sponsorship .child-image{
	width: 100px;
}

#sponsorship .card {
	float: left;
	opacity: inherit;
	filter: inherit;
	padding-left: 15px;
	padding-top: 10px;
	width: 383px;
}

#sponsorship .card .copy {
	display: none;
	float: left;
	opacity: inherit;
	filter: inherit;
	font-size: 13px;
	margin-left: 12px;
	width: 250px;
}

#sponsorship .card h2 {
	background: none;
	color: #000;
	margin: 0 0 8px 0;
	padding: 0px;
}

#sponsorship .card-area .child-navigation {
	display:block;
	float: left;
	height: 180px;
	width: 31px;
}

#sponsorship .card-area .previous-button, #sponsorship .card-area .next-button {
	background: #EFF0F1;
	cursor: pointer;
	height: 50px;
	padding: 65px 6px;
	width: 19px;
}

#sponsorship .card-area .next-button .arrow, #sponsorship .card-area .previous-button .arrow{
	background-image: url('/commerce/sites/all/themes/wv/images/sprite-icons-cart.png');
	background-repeat: no-repeat;
	background-position: top left;
	display:block;
	height: 50px;
	width: 19px;
}
#sponsorship .card-area .next-button .arrow{
	background-position: 0 -101px;
}
#sponsorship .card-area .previous-button .arrow{
	background-position: 0 0;
}

#sponsorship .child-details tr {
	padding: 0;
}

#sponsorship .child-details th {
	padding-bottom: 4px;
	text-align: left;
}

#sponsorship .child-details td {
	padding-bottom: 16px;
}

#sponsorship .child-details td:first-child {
	padding-right: 32px;
}

#sponsorship .read-my-story {
	display: block;
	height: 24px;
	padding: 3px 0 0 0px;
}

#sponsorship .child-photo{
	float:left;
}

#sponsorship .read-my-story{
	display:none;
	font-size:13px;
}

#sponsorship .sponsor-button {
	background: #006699;
	border-radius: 10px 10px 10px 10px;
	color: white !important;
	cursor: pointer;
	display: none;
	float: left;
	margin: 10px 0px 0 0px;
	padding-bottom: 4px;
	padding-top: 4px;
}
#sponsorship .sponsor-button:hover {
	background: #ff9046;
}
#sponsorship .search-link, #sponsorship .sponsor-button{
	text-align: center;
	width: 242px;
}
#sponsorship  .monthly-sponsorship {
	font-weight:bold;
}

#sponsorship .sponsor-button:hover {
	color: white;
	text-decoration: none !important;
}

#sponsorship .find-a-child-button {
	background: url('/commerce/sites/all/themes/wv/images/find-a-child-button.gif');
	display: block;
	width: 244px;
	height: 37px;
	float: left;
	margin-top: 14px;
	display: none;
	cursor:pointer;
	cursor:hand;
}
#sponsorship .sponsor-button.error-form-disabled {
	background: #F0F0F0;
	cursor: default;
}
#failoverChildSponsorLink {
	display: none;
	float: left;
	margin-left: 20px;
	background: url('/commerce/sites/all/themes/wv/images/failover-sponsor-button.gif')
		repeat-x;
	width: 230px;
	height: 36px;
	text-indent: -9999px;
}

#failoverChildSponsorLink:hover {
	background-position: 230px 0px;
}

#errorMsg {
	font-style: italic;
	font-weight: bold;
	text-align: center;
	margin-top: 12px;
	clear:both;
}

#sponsorship div.cwsLoader {
	margin: 80px 0 0 70px;
	display: block;
	position: absolute;
	z-index: 99;
}
/*-------------------------------------
   Sponsorship Widget Errors
 ------------------------------------*/
.sponsorship-info-error {
	  text-align:center;
}
.sponsorship-info-error p {
	 font-size: 12px;
}
.sponsorship-info-error p b {
	 font-size: 16px;
}
.sponsorship-info-error .orangeButton2 {
	 padding: 2px 8px;
}

/*-------------------------------------
  Read My Story Lightbox Styles
-------------------------------------*/
.lb-content {
	background-color: white;
	margin: 0px;
}

.white_content h3 {
	font-size: 16px;
	margin: 0px;
	clear: both;
	margin-bottom: 8px;
}

.lb-close {
	display: block;
	float: right;
	margin-top: -20px;
}

#my-story {
	display: none
}

#sb-wrapper-inner {
	border: none
}

#sb-body {
	background: none
}

#my-story p {

}

.child-story {
	clear: both;
	position: relative;
	top: 15px;
}

.xxwvSponPara p {
	margin: 12px 0 12px 0;
}

#child-story-details {

}

#child-story-imageURL{
	background:url();
	height:213px;
	width:167px;
	float:none;
	padding:0px;
}

#child-story-content {
	background-color: white;
	padding: 25px;
}

#child-story-quick-stats .bold {
	font-weight: bold;
	margin-top: 10px;
}

#child-story-quick-stats #column1 {
	float: left;
	width: 150px;
}

#child-story-quick-stats #column2 {
	float: left;
	margin-left: 15px;
}

#child-story-image {
	width: 190px;
	height: 250px;
	float: left;
}

#sponsorChildTitleLink-FirstPerson {
	font-size: 18px;
	margin-bottom: 8px;
}

a#largeSponsorLink {
	text-align: center;
	padding-top: 7px;
	width: 170px;
	height: 33px;
	background:
		url('/commerce/sites/all/themes/wv/images/child-story-sponsor-button.gif')
		0px 0px no-repeat;
	display: block;
	vertical-align: middle;
	text-decoration: none;
	font-size: 12px;
	color: white;
	cursor: pointer;
	font-weight: bold;
	text-align: center;
	margin-top: 8px;
}

/*-------------------------------------
  End Read My Story Lightbox Styles
-------------------------------------*/
.recommendations-widget #recItem-mostNeed {
	padding: 10px 20px;
	border-left: 1px solid #DCDDDE;
	border-right: 1px solid #DCDDDE;
}

.recommendations-widget #recItem-mostNeed .recItemMostNeedImage {
	float:left;
	padding:30px;
	width: 70px;
}
.recommendations-widget #recItem-mostNeed  .recItemTitle {
	color: black;
	font-size: 16px;
	float:left;
	height: 25px;
	padding-top: 5px;
}
.recommendations-widget #recItem-mostNeed  .recItemPrice {
	float:right;
	margin: 2px 8px 0 0;
}
.recommendations-widget #recItem-mostNeed  .recItemPrice .form-type-textfield {
	float: right;
}
.recommendations-widget #recItem-mostNeed input[type="text"] {
	text-align: right;
	line-height: 22px;
	height: 22px;
    width: 50px;
}
.recommendations-widget #recItem-mostNeed .most-need {
	float:right;
	margin-right: 30px;
	margin-top: 2px;
}

/*--------------------------------------
  Recommendations - Where Most Needed
 -------------------------------------*/

/*
// World Vision Core Site Development
// WVCSD Header Related Rules
// v1.0
// ==========================================
*/
.clearfix {
  *zoom: 1;
}
.clearfix:before,
.clearfix:after {
  display: table;
  content: "";
  line-height: 0;
}
.clearfix:after {
  clear: both;
}
.hide-text {
  font: 0/0 a;
  color: transparent;
  text-shadow: none;
  background-color: transparent;
  border: 0;
}
.input-block-level {
  display: block;
  width: 100%;
  min-height: 30px;
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
}
/*
// Color Variables & Helper Classes
// ==================================
*/
.ir {
  overflow: hidden;
  text-indent: -999px;
}
.regular-text {
  font-family: 'Gill Sans W01 Book', Arial, sans-serif;
}
.light-text {
  font-family: 'Gill Sans W01 Light', Arial, sans-serif;
}
.heavy-text {
  font-family: 'Gill Sans W01 Bold', Arial, sans-serif;
}
body.wvcsd {
  background: #efefef;
  font-family: 'Gill Sans W01 Book', Arial, sans-serif;
  margin: 0;
}
/*
// External links.
// ======
*/
.external-link {
  display: inline-block;
  background: url(../img/ext_link.png) -21px -18px no-repeat;
  width: 12px;
  height: 18px;
  text-indent: -999em;
  padding-left: 5px;
}
.container {
  position: relative;
  width: 940px;
  margin: 0 auto;
}
/*
// Header
// ======
*/
#header.wvcsd {
  background: #fff !important;
  height: 60px !important;
  padding: 15px 0 25px;
}
#header.wvcsd .brand a {
  display: inline-block;
  float: left;
}
#header.wvcsd .logo {
  width: 149px;
  height: 58px;
  background: url(../img/logo_world_vision_v2.png) 0 0 no-repeat;
  overflow: hidden;
  text-indent: -999px;
}
#header.wvcsd .logo:hover {
  background-position: left bottom;
}
#header.wvcsd .tagline {
  position: relative;
  top: 30px;
  left: 20px;
  font-size: 18px;
  font-family: 'Gill Sans W01 Light', Arial, sans-serif;
  color: #000000;
}
#header.wvcsd .tagline:hover {
  text-decoration: none;
}
#header.wvcsd .interact div {
  float: right;
}
#header.wvcsd .interact form {
  margin-bottom: 0;
}
#header.wvcsd .interact input[type="text"] {
  margin-right: 4px;
  -webkit-box-shadow: 0 0 5px rgba(199, 199, 199, 0.35);
  -moz-box-shadow: 0 0 5px rgba(199, 199, 199, 0.35);
  box-shadow: 0 0 5px rgba(199, 199, 199, 0.35);
}
#header.wvcsd .interact i:hover {
  background-position: left bottom;
}
#header.wvcsd .interact .icon-search {
  background: url(../img/icon_magnifying_glass_v1.png) 0 0 no-repeat;
  width: 28px;
  height: 28px;
  position: relative;
  top: -10px;
  cursor: pointer;
  border: none;
}
#header.wvcsd .interact .icon-search:hover {
  background-position: left bottom;
}
#header.wvcsd .interact .icon-shopping-cart {
  background: url(../img/icon_shopping_cart_v1.png) 0 0 no-repeat;
  width: 20px;
  height: 15px;
  margin-right: 5px;
  margin-top: -1px;
}
#header.wvcsd .interact .text:hover > .icon-shopping-cart {
  background-position: left bottom;
}
#header.wvcsd .interact ul.inline {
  float: left;
}
#header.wvcsd .interact .links {
  text-transform: uppercase;
  margin-right: -6px;
  margin-top: 2px;
}
#header.wvcsd .interact .links .text {
  padding-right: 10px;
}
#header.wvcsd .interact .links .text a {
  color: #000000;
  font-size: 13px;
  padding-right: 0;
}
#header.wvcsd .interact .links .text li {
  border-right: 1px solid #efefef;
  padding: 0 10px;
}
#header.wvcsd .interact .social li {
  padding: 0 6px 0 0 !important;
}
#header.wvcsd .interact .social li.icon {
  overflow: hidden;
  text-indent: -999px;
}
#header.wvcsd .interact .social li.icon a {
  width: 19px;
  height: 19px;
  display: block;
  background: url(../img/icons_social_19_v2.png) no-repeat;
}
#header.wvcsd .interact .social li.icon .icon_fb {
  background-position: 0 0;
}
#header.wvcsd .interact .social li.icon .icon_fb:hover {
  background-position: 0 -19px;
}
#header.wvcsd .interact .social li.icon .icon_tw {
  background-position: -19px 0;
}
#header.wvcsd .interact .social li.icon .icon_tw:hover {
  background-position: -19px -19px;
}
#header.wvcsd .interact .social li.icon .icon_yt {
  background-position: -38px 0;
}
#header.wvcsd .interact .social li.icon .icon_yt:hover {
  background-position: -38px -19px;
}
#header.wvcsd .interact .social .no_icon_blog {
  overflow: hidden;
  text-indent: -999px;
  display: block;
  width: 46px;
  height: 19px;
  padding-right: 0;
  background: url(../img/icon_blog_header_v2.png) no-repeat;
}
#header.wvcsd .interact .social .no_icon_blog:hover {
  background-position: 0 -19px;
}
/*
// Global Nav Bar Rules
// ====================
*/
#nav.wvcsd,
#header.wvcsd {
  height: 50px;
  background-color: #fe8b16;
  background-image: -moz-linear-gradient(top, #fda425, #ff6600);
  background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#fda425), to(#ff6600));
  background-image: -webkit-linear-gradient(top, #fda425, #ff6600);
  background-image: -o-linear-gradient(top, #fda425, #ff6600);
  background-image: linear-gradient(to bottom, #fda425, #ff6600);
  background-repeat: repeat-x;
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#fffda425', endColorstr='#ffff6600', GradientType=0);
  /*!
 * Bootstrap v2.3.2
 *
 * Copyright 2012 Twitter, Inc
 * Licensed under the Apache License v2.0
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Designed and built with all the love in the world @twitter by @mdo and @fat.
 */
  /* Allow for input prepend/append in search forms */
  /* move down carets for tabs */
  /*
@import "../src/lib/bootstrap/less/responsive-767px-max.less";
@import "../src/lib/bootstrap/less/responsive-768px-979px.less";
@import "../src/lib/bootstrap/less/responsive-1200px-min.less";
@import "../src/lib/bootstrap/less/responsive-navbar.less";
@import "../src/lib/bootstrap/less/responsive-utilities.less";
@import "../src/lib/bootstrap/less/responsive.less";
*/
  /* White icons with optional class, or on hover/focus/active states of certain elements */
  /* The Active Link  */
  /* override uikit */
  /* Dropdown */
}
#nav.wvcsd .accordion,
#header.wvcsd .accordion {
  margin-bottom: 20px;
}
#nav.wvcsd .accordion-group,
#header.wvcsd .accordion-group {
  margin-bottom: 2px;
  border: 1px solid #e5e5e5;
  -webkit-border-radius: 4px;
  -moz-border-radius: 4px;
  border-radius: 4px;
}
#nav.wvcsd .accordion-heading,
#header.wvcsd .accordion-heading {
  border-bottom: 0;
}
#nav.wvcsd .accordion-heading .accordion-toggle,
#header.wvcsd .accordion-heading .accordion-toggle {
  display: block;
  padding: 8px 15px;
}
#nav.wvcsd .accordion-toggle,
#header.wvcsd .accordion-toggle {
  cursor: pointer;
}
#nav.wvcsd .accordion-inner,
#header.wvcsd .accordion-inner {
  padding: 9px 15px;
  border-top: 1px solid #e5e5e5;
}
#nav.wvcsd .alert,
#header.wvcsd .alert {
  padding: 8px 35px 8px 14px;
  margin-bottom: 20px;
  text-shadow: 0 1px 0 rgba(255, 255, 255, 0.5);
  background-color: #fcf8e3;
  border: 1px solid #fbeed5;
  -webkit-border-radius: 4px;
  -moz-border-radius: 4px;
  border-radius: 4px;
}
#nav.wvcsd .alert,
#header.wvcsd .alert,
#nav.wvcsd .alert h4,
#header.wvcsd .alert h4 {
  color: #c09853;
}
#nav.wvcsd .alert h4,
#header.wvcsd .alert h4 {
  margin: 0;
}
#nav.wvcsd .alert .close,
#header.wvcsd .alert .close {
  position: relative;
  top: -2px;
  right: -21px;
  line-height: 20px;
}
#nav.wvcsd .alert-success,
#header.wvcsd .alert-success {
  background-color: #dff0d8;
  border-color: #d6e9c6;
  color: #468847;
}
#nav.wvcsd .alert-success h4,
#header.wvcsd .alert-success h4 {
  color: #468847;
}
#nav.wvcsd .alert-danger,
#header.wvcsd .alert-danger,
#nav.wvcsd .alert-error,
#header.wvcsd .alert-error {
  background-color: #f2dede;
  border-color: #eed3d7;
  color: #b94a48;
}
#nav.wvcsd .alert-danger h4,
#header.wvcsd .alert-danger h4,
#nav.wvcsd .alert-error h4,
#header.wvcsd .alert-error h4 {
  color: #b94a48;
}
#nav.wvcsd .alert-info,
#header.wvcsd .alert-info {
  background-color: #d9edf7;
  border-color: #bce8f1;
  color: #3a87ad;
}
#nav.wvcsd .alert-info h4,
#header.wvcsd .alert-info h4 {
  color: #3a87ad;
}
#nav.wvcsd .alert-block,
#header.wvcsd .alert-block {
  padding-top: 14px;
  padding-bottom: 14px;
}
#nav.wvcsd .alert-block > p,
#header.wvcsd .alert-block > p,
#nav.wvcsd .alert-block > ul,
#header.wvcsd .alert-block > ul {
  margin-bottom: 0;
}
#nav.wvcsd .alert-block p + p,
#header.wvcsd .alert-block p + p {
  margin-top: 5px;
}
#nav.wvcsd .breadcrumb,
#header.wvcsd .breadcrumb {
  padding: 8px 15px;
  margin: 0 0 20px;
  list-style: none;
  background-color: #f5f5f5;
  -webkit-border-radius: 4px;
  -moz-border-radius: 4px;
  border-radius: 4px;
}
#nav.wvcsd .breadcrumb > li,
#header.wvcsd .breadcrumb > li {
  display: inline-block;
  *display: inline;
  /* IE7 inline-block hack */
  *zoom: 1;
  text-shadow: 0 1px 0 #ffffff;
}
#nav.wvcsd .breadcrumb > li > .divider,
#header.wvcsd .breadcrumb > li > .divider {
  padding: 0 5px;
  color: #ccc;
}
#nav.wvcsd .breadcrumb > .active,
#header.wvcsd .breadcrumb > .active {
  color: #999999;
}
#nav.wvcsd .btn-group,
#header.wvcsd .btn-group {
  position: relative;
  display: inline-block;
  *display: inline;
  /* IE7 inline-block hack */
  *zoom: 1;
  font-size: 0;
  vertical-align: middle;
  white-space: nowrap;
  *margin-left: .3em;
}
#nav.wvcsd .btn-group:first-child,
#header.wvcsd .btn-group:first-child {
  *margin-left: 0;
}
#nav.wvcsd .btn-group + .btn-group,
#header.wvcsd .btn-group + .btn-group {
  margin-left: 5px;
}
#nav.wvcsd .btn-toolbar,
#header.wvcsd .btn-toolbar {
  font-size: 0;
  margin-top: 10px;
  margin-bottom: 10px;
}
#nav.wvcsd .btn-toolbar > .btn + .btn,
#header.wvcsd .btn-toolbar > .btn + .btn,
#nav.wvcsd .btn-toolbar > .btn-group + .btn,
#header.wvcsd .btn-toolbar > .btn-group + .btn,
#nav.wvcsd .btn-toolbar > .btn + .btn-group,
#header.wvcsd .btn-toolbar > .btn + .btn-group {
  margin-left: 5px;
}
#nav.wvcsd .btn-group > .btn,
#header.wvcsd .btn-group > .btn {
  position: relative;
  -webkit-border-radius: 0;
  -moz-border-radius: 0;
  border-radius: 0;
}
#nav.wvcsd .btn-group > .btn + .btn,
#header.wvcsd .btn-group > .btn + .btn {
  margin-left: -1px;
}
#nav.wvcsd .btn-group > .btn,
#header.wvcsd .btn-group > .btn,
#nav.wvcsd .btn-group > .dropdown-menu,
#header.wvcsd .btn-group > .dropdown-menu,
#nav.wvcsd .btn-group > .popover,
#header.wvcsd .btn-group > .popover {
  font-size: 14px;
}
#nav.wvcsd .btn-group > .btn-mini,
#header.wvcsd .btn-group > .btn-mini {
  font-size: 10.5px;
}
#nav.wvcsd .btn-group > .btn-small,
#header.wvcsd .btn-group > .btn-small {
  font-size: 11.9px;
}
#nav.wvcsd .btn-group > .btn-large,
#header.wvcsd .btn-group > .btn-large {
  font-size: 17.5px;
}
#nav.wvcsd .btn-group > .btn:first-child,
#header.wvcsd .btn-group > .btn:first-child {
  margin-left: 0;
  -webkit-border-top-left-radius: 4px;
  -moz-border-radius-topleft: 4px;
  border-top-left-radius: 4px;
  -webkit-border-bottom-left-radius: 4px;
  -moz-border-radius-bottomleft: 4px;
  border-bottom-left-radius: 4px;
}
#nav.wvcsd .btn-group > .btn:last-child,
#header.wvcsd .btn-group > .btn:last-child,
#nav.wvcsd .btn-group > .dropdown-toggle,
#header.wvcsd .btn-group > .dropdown-toggle {
  -webkit-border-top-right-radius: 4px;
  -moz-border-radius-topright: 4px;
  border-top-right-radius: 4px;
  -webkit-border-bottom-right-radius: 4px;
  -moz-border-radius-bottomright: 4px;
  border-bottom-right-radius: 4px;
}
#nav.wvcsd .btn-group > .btn.large:first-child,
#header.wvcsd .btn-group > .btn.large:first-child {
  margin-left: 0;
  -webkit-border-top-left-radius: 6px;
  -moz-border-radius-topleft: 6px;
  border-top-left-radius: 6px;
  -webkit-border-bottom-left-radius: 6px;
  -moz-border-radius-bottomleft: 6px;
  border-bottom-left-radius: 6px;
}
#nav.wvcsd .btn-group > .btn.large:last-child,
#header.wvcsd .btn-group > .btn.large:last-child,
#nav.wvcsd .btn-group > .large.dropdown-toggle,
#header.wvcsd .btn-group > .large.dropdown-toggle {
  -webkit-border-top-right-radius: 6px;
  -moz-border-radius-topright: 6px;
  border-top-right-radius: 6px;
  -webkit-border-bottom-right-radius: 6px;
  -moz-border-radius-bottomright: 6px;
  border-bottom-right-radius: 6px;
}
#nav.wvcsd .btn-group > .btn:hover,
#header.wvcsd .btn-group > .btn:hover,
#nav.wvcsd .btn-group > .btn:focus,
#header.wvcsd .btn-group > .btn:focus,
#nav.wvcsd .btn-group > .btn:active,
#header.wvcsd .btn-group > .btn:active,
#nav.wvcsd .btn-group > .btn.active,
#header.wvcsd .btn-group > .btn.active {
  z-index: 2;
}
#nav.wvcsd .btn-group .dropdown-toggle:active,
#header.wvcsd .btn-group .dropdown-toggle:active,
#nav.wvcsd .btn-group.open .dropdown-toggle,
#header.wvcsd .btn-group.open .dropdown-toggle {
  outline: 0;
}
#nav.wvcsd .btn-group > .btn + .dropdown-toggle,
#header.wvcsd .btn-group > .btn + .dropdown-toggle {
  padding-left: 8px;
  padding-right: 8px;
  -webkit-box-shadow: inset 1px 0 0 rgba(255,255,255,.125), inset 0 1px 0 rgba(255,255,255,.2), 0 1px 2px rgba(0,0,0,.05);
  -moz-box-shadow: inset 1px 0 0 rgba(255,255,255,.125), inset 0 1px 0 rgba(255,255,255,.2), 0 1px 2px rgba(0,0,0,.05);
  box-shadow: inset 1px 0 0 rgba(255,255,255,.125), inset 0 1px 0 rgba(255,255,255,.2), 0 1px 2px rgba(0,0,0,.05);
  *padding-top: 5px;
  *padding-bottom: 5px;
}
#nav.wvcsd .btn-group > .btn-mini + .dropdown-toggle,
#header.wvcsd .btn-group > .btn-mini + .dropdown-toggle {
  padding-left: 5px;
  padding-right: 5px;
  *padding-top: 2px;
  *padding-bottom: 2px;
}
#nav.wvcsd .btn-group > .btn-small + .dropdown-toggle,
#header.wvcsd .btn-group > .btn-small + .dropdown-toggle {
  *padding-top: 5px;
  *padding-bottom: 4px;
}
#nav.wvcsd .btn-group > .btn-large + .dropdown-toggle,
#header.wvcsd .btn-group > .btn-large + .dropdown-toggle {
  padding-left: 12px;
  padding-right: 12px;
  *padding-top: 7px;
  *padding-bottom: 7px;
}
#nav.wvcsd .btn-group.open .dropdown-toggle,
#header.wvcsd .btn-group.open .dropdown-toggle {
  background-image: none;
  -webkit-box-shadow: inset 0 2px 4px rgba(0,0,0,.15), 0 1px 2px rgba(0,0,0,.05);
  -moz-box-shadow: inset 0 2px 4px rgba(0,0,0,.15), 0 1px 2px rgba(0,0,0,.05);
  box-shadow: inset 0 2px 4px rgba(0,0,0,.15), 0 1px 2px rgba(0,0,0,.05);
}
#nav.wvcsd .btn-group.open .btn.dropdown-toggle,
#header.wvcsd .btn-group.open .btn.dropdown-toggle {
  background-color: #e6e6e6;
}
#nav.wvcsd .btn-group.open .btn-primary.dropdown-toggle,
#header.wvcsd .btn-group.open .btn-primary.dropdown-toggle {
  background-color: #0044cc;
}
#nav.wvcsd .btn-group.open .btn-warning.dropdown-toggle,
#header.wvcsd .btn-group.open .btn-warning.dropdown-toggle {
  background-color: #f89406;
}
#nav.wvcsd .btn-group.open .btn-danger.dropdown-toggle,
#header.wvcsd .btn-group.open .btn-danger.dropdown-toggle {
  background-color: #bd362f;
}
#nav.wvcsd .btn-group.open .btn-success.dropdown-toggle,
#header.wvcsd .btn-group.open .btn-success.dropdown-toggle {
  background-color: #51a351;
}
#nav.wvcsd .btn-group.open .btn-info.dropdown-toggle,
#header.wvcsd .btn-group.open .btn-info.dropdown-toggle {
  background-color: #2f96b4;
}
#nav.wvcsd .btn-group.open .btn-inverse.dropdown-toggle,
#header.wvcsd .btn-group.open .btn-inverse.dropdown-toggle {
  background-color: #222222;
}
#nav.wvcsd .btn .caret,
#header.wvcsd .btn .caret {
  margin-top: 8px;
  margin-left: 0;
}
#nav.wvcsd .btn-large .caret,
#header.wvcsd .btn-large .caret {
  margin-top: 6px;
}
#nav.wvcsd .btn-large .caret,
#header.wvcsd .btn-large .caret {
  border-left-width: 5px;
  border-right-width: 5px;
  border-top-width: 5px;
}
#nav.wvcsd .btn-mini .caret,
#header.wvcsd .btn-mini .caret,
#nav.wvcsd .btn-small .caret,
#header.wvcsd .btn-small .caret {
  margin-top: 8px;
}
#nav.wvcsd .dropup .btn-large .caret,
#header.wvcsd .dropup .btn-large .caret {
  border-bottom-width: 5px;
}
#nav.wvcsd .btn-primary .caret,
#header.wvcsd .btn-primary .caret,
#nav.wvcsd .btn-warning .caret,
#header.wvcsd .btn-warning .caret,
#nav.wvcsd .btn-danger .caret,
#header.wvcsd .btn-danger .caret,
#nav.wvcsd .btn-info .caret,
#header.wvcsd .btn-info .caret,
#nav.wvcsd .btn-success .caret,
#header.wvcsd .btn-success .caret,
#nav.wvcsd .btn-inverse .caret,
#header.wvcsd .btn-inverse .caret {
  border-top-color: #ffffff;
  border-bottom-color: #ffffff;
}
#nav.wvcsd .btn-group-vertical,
#header.wvcsd .btn-group-vertical {
  display: inline-block;
  *display: inline;
  /* IE7 inline-block hack */
  *zoom: 1;
}
#nav.wvcsd .btn-group-vertical > .btn,
#header.wvcsd .btn-group-vertical > .btn {
  display: block;
  float: none;
  max-width: 100%;
  -webkit-border-radius: 0;
  -moz-border-radius: 0;
  border-radius: 0;
}
#nav.wvcsd .btn-group-vertical > .btn + .btn,
#header.wvcsd .btn-group-vertical > .btn + .btn {
  margin-left: 0;
  margin-top: -1px;
}
#nav.wvcsd .btn-group-vertical > .btn:first-child,
#header.wvcsd .btn-group-vertical > .btn:first-child {
  -webkit-border-radius: 4px 4px 0 0;
  -moz-border-radius: 4px 4px 0 0;
  border-radius: 4px 4px 0 0;
}
#nav.wvcsd .btn-group-vertical > .btn:last-child,
#header.wvcsd .btn-group-vertical > .btn:last-child {
  -webkit-border-radius: 0 0 4px 4px;
  -moz-border-radius: 0 0 4px 4px;
  border-radius: 0 0 4px 4px;
}
#nav.wvcsd .btn-group-vertical > .btn-large:first-child,
#header.wvcsd .btn-group-vertical > .btn-large:first-child {
  -webkit-border-radius: 6px 6px 0 0;
  -moz-border-radius: 6px 6px 0 0;
  border-radius: 6px 6px 0 0;
}
#nav.wvcsd .btn-group-vertical > .btn-large:last-child,
#header.wvcsd .btn-group-vertical > .btn-large:last-child {
  -webkit-border-radius: 0 0 6px 6px;
  -moz-border-radius: 0 0 6px 6px;
  border-radius: 0 0 6px 6px;
}
#nav.wvcsd .btn,
#header.wvcsd .btn {
  display: inline-block;
  *display: inline;
  /* IE7 inline-block hack */
  *zoom: 1;
  padding: 4px 12px;
  margin-bottom: 0;
  font-size: 14px;
  line-height: 20px;
  text-align: center;
  vertical-align: middle;
  cursor: pointer;
  color: #333333;
  text-shadow: 0 1px 1px rgba(255, 255, 255, 0.75);
  background-color: #f5f5f5;
  background-image: -moz-linear-gradient(top, #ffffff, #e6e6e6);
  background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#ffffff), to(#e6e6e6));
  background-image: -webkit-linear-gradient(top, #ffffff, #e6e6e6);
  background-image: -o-linear-gradient(top, #ffffff, #e6e6e6);
  background-image: linear-gradient(to bottom, #ffffff, #e6e6e6);
  background-repeat: repeat-x;
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffffffff', endColorstr='#ffe6e6e6', GradientType=0);
  border-color: #e6e6e6 #e6e6e6 #bfbfbf;
  border-color: rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.25);
  *background-color: #e6e6e6;
  /* Darken IE7 buttons by default so they stand out more given they won't have borders */
  filter: progid:DXImageTransform.Microsoft.gradient(enabled = false);
  border: 1px solid #cccccc;
  *border: 0;
  border-bottom-color: #b3b3b3;
  -webkit-border-radius: 4px;
  -moz-border-radius: 4px;
  border-radius: 4px;
  *margin-left: .3em;
  -webkit-box-shadow: inset 0 1px 0 rgba(255,255,255,.2), 0 1px 2px rgba(0,0,0,.05);
  -moz-box-shadow: inset 0 1px 0 rgba(255,255,255,.2), 0 1px 2px rgba(0,0,0,.05);
  box-shadow: inset 0 1px 0 rgba(255,255,255,.2), 0 1px 2px rgba(0,0,0,.05);
}
#nav.wvcsd .btn:hover,
#header.wvcsd .btn:hover,
#nav.wvcsd .btn:focus,
#header.wvcsd .btn:focus,
#nav.wvcsd .btn:active,
#header.wvcsd .btn:active,
#nav.wvcsd .btn.active,
#header.wvcsd .btn.active,
#nav.wvcsd .btn.disabled,
#header.wvcsd .btn.disabled,
#nav.wvcsd .btn[disabled],
#header.wvcsd .btn[disabled] {
  color: #333333;
  background-color: #e6e6e6;
  *background-color: #d9d9d9;
}
#nav.wvcsd .btn:active,
#header.wvcsd .btn:active,
#nav.wvcsd .btn.active,
#header.wvcsd .btn.active {
  background-color: #cccccc \9;
}
#nav.wvcsd .btn:first-child,
#header.wvcsd .btn:first-child {
  *margin-left: 0;
}
#nav.wvcsd .btn:hover,
#header.wvcsd .btn:hover,
#nav.wvcsd .btn:focus,
#header.wvcsd .btn:focus {
  color: #333333;
  text-decoration: none;
  background-position: 0 -15px;
  -webkit-transition: background-position 0.1s linear;
  -moz-transition: background-position 0.1s linear;
  -o-transition: background-position 0.1s linear;
  transition: background-position 0.1s linear;
}
#nav.wvcsd .btn:focus,
#header.wvcsd .btn:focus {
  outline: thin dotted #333;
  outline: 5px auto -webkit-focus-ring-color;
  outline-offset: -2px;
}
#nav.wvcsd .btn.active,
#header.wvcsd .btn.active,
#nav.wvcsd .btn:active,
#header.wvcsd .btn:active {
  background-image: none;
  outline: 0;
  -webkit-box-shadow: inset 0 2px 4px rgba(0,0,0,.15), 0 1px 2px rgba(0,0,0,.05);
  -moz-box-shadow: inset 0 2px 4px rgba(0,0,0,.15), 0 1px 2px rgba(0,0,0,.05);
  box-shadow: inset 0 2px 4px rgba(0,0,0,.15), 0 1px 2px rgba(0,0,0,.05);
}
#nav.wvcsd .btn.disabled,
#header.wvcsd .btn.disabled,
#nav.wvcsd .btn[disabled],
#header.wvcsd .btn[disabled] {
  cursor: default;
  background-image: none;
  opacity: 0.65;
  filter: alpha(opacity=65);
  -webkit-box-shadow: none;
  -moz-box-shadow: none;
  box-shadow: none;
}
#nav.wvcsd .btn-large,
#header.wvcsd .btn-large {
  padding: 11px 19px;
  font-size: 17.5px;
  -webkit-border-radius: 6px;
  -moz-border-radius: 6px;
  border-radius: 6px;
}
#nav.wvcsd .btn-large [class^="icon-"],
#header.wvcsd .btn-large [class^="icon-"],
#nav.wvcsd .btn-large [class*=" icon-"],
#header.wvcsd .btn-large [class*=" icon-"] {
  margin-top: 4px;
}
#nav.wvcsd .btn-small,
#header.wvcsd .btn-small {
  padding: 2px 10px;
  font-size: 11.9px;
  -webkit-border-radius: 3px;
  -moz-border-radius: 3px;
  border-radius: 3px;
}
#nav.wvcsd .btn-small [class^="icon-"],
#header.wvcsd .btn-small [class^="icon-"],
#nav.wvcsd .btn-small [class*=" icon-"],
#header.wvcsd .btn-small [class*=" icon-"] {
  margin-top: 0;
}
#nav.wvcsd .btn-mini [class^="icon-"],
#header.wvcsd .btn-mini [class^="icon-"],
#nav.wvcsd .btn-mini [class*=" icon-"],
#header.wvcsd .btn-mini [class*=" icon-"] {
  margin-top: -1px;
}
#nav.wvcsd .btn-mini,
#header.wvcsd .btn-mini {
  padding: 0 6px;
  font-size: 10.5px;
  -webkit-border-radius: 3px;
  -moz-border-radius: 3px;
  border-radius: 3px;
}
#nav.wvcsd .btn-block,
#header.wvcsd .btn-block {
  display: block;
  width: 100%;
  padding-left: 0;
  padding-right: 0;
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
}
#nav.wvcsd .btn-block + .btn-block,
#header.wvcsd .btn-block + .btn-block {
  margin-top: 5px;
}
#nav.wvcsd input[type="submit"].btn-block,
#header.wvcsd input[type="submit"].btn-block,
#nav.wvcsd input[type="reset"].btn-block,
#header.wvcsd input[type="reset"].btn-block,
#nav.wvcsd input[type="button"].btn-block,
#header.wvcsd input[type="button"].btn-block {
  width: 100%;
}
#nav.wvcsd .btn-primary.active,
#header.wvcsd .btn-primary.active,
#nav.wvcsd .btn-warning.active,
#header.wvcsd .btn-warning.active,
#nav.wvcsd .btn-danger.active,
#header.wvcsd .btn-danger.active,
#nav.wvcsd .btn-success.active,
#header.wvcsd .btn-success.active,
#nav.wvcsd .btn-info.active,
#header.wvcsd .btn-info.active,
#nav.wvcsd .btn-inverse.active,
#header.wvcsd .btn-inverse.active {
  color: rgba(255, 255, 255, 0.75);
}
#nav.wvcsd .btn-primary,
#header.wvcsd .btn-primary {
  color: #ffffff;
  text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25);
  background-color: #006dcc;
  background-image: -moz-linear-gradient(top, #0088cc, #0044cc);
  background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#0088cc), to(#0044cc));
  background-image: -webkit-linear-gradient(top, #0088cc, #0044cc);
  background-image: -o-linear-gradient(top, #0088cc, #0044cc);
  background-image: linear-gradient(to bottom, #0088cc, #0044cc);
  background-repeat: repeat-x;
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ff0088cc', endColorstr='#ff0044cc', GradientType=0);
  border-color: #0044cc #0044cc #002a80;
  border-color: rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.25);
  *background-color: #0044cc;
  /* Darken IE7 buttons by default so they stand out more given they won't have borders */
  filter: progid:DXImageTransform.Microsoft.gradient(enabled = false);
}
#nav.wvcsd .btn-primary:hover,
#header.wvcsd .btn-primary:hover,
#nav.wvcsd .btn-primary:focus,
#header.wvcsd .btn-primary:focus,
#nav.wvcsd .btn-primary:active,
#header.wvcsd .btn-primary:active,
#nav.wvcsd .btn-primary.active,
#header.wvcsd .btn-primary.active,
#nav.wvcsd .btn-primary.disabled,
#header.wvcsd .btn-primary.disabled,
#nav.wvcsd .btn-primary[disabled],
#header.wvcsd .btn-primary[disabled] {
  color: #ffffff;
  background-color: #0044cc;
  *background-color: #003bb3;
}
#nav.wvcsd .btn-primary:active,
#header.wvcsd .btn-primary:active,
#nav.wvcsd .btn-primary.active,
#header.wvcsd .btn-primary.active {
  background-color: #003399 \9;
}
#nav.wvcsd .btn-warning,
#header.wvcsd .btn-warning {
  color: #ffffff;
  text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25);
  background-color: #faa732;
  background-image: -moz-linear-gradient(top, #fbb450, #f89406);
  background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#fbb450), to(#f89406));
  background-image: -webkit-linear-gradient(top, #fbb450, #f89406);
  background-image: -o-linear-gradient(top, #fbb450, #f89406);
  background-image: linear-gradient(to bottom, #fbb450, #f89406);
  background-repeat: repeat-x;
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#fffbb450', endColorstr='#fff89406', GradientType=0);
  border-color: #f89406 #f89406 #ad6704;
  border-color: rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.25);
  *background-color: #f89406;
  /* Darken IE7 buttons by default so they stand out more given they won't have borders */
  filter: progid:DXImageTransform.Microsoft.gradient(enabled = false);
}
#nav.wvcsd .btn-warning:hover,
#header.wvcsd .btn-warning:hover,
#nav.wvcsd .btn-warning:focus,
#header.wvcsd .btn-warning:focus,
#nav.wvcsd .btn-warning:active,
#header.wvcsd .btn-warning:active,
#nav.wvcsd .btn-warning.active,
#header.wvcsd .btn-warning.active,
#nav.wvcsd .btn-warning.disabled,
#header.wvcsd .btn-warning.disabled,
#nav.wvcsd .btn-warning[disabled],
#header.wvcsd .btn-warning[disabled] {
  color: #ffffff;
  background-color: #f89406;
  *background-color: #df8505;
}
#nav.wvcsd .btn-warning:active,
#header.wvcsd .btn-warning:active,
#nav.wvcsd .btn-warning.active,
#header.wvcsd .btn-warning.active {
  background-color: #c67605 \9;
}
#nav.wvcsd .btn-danger,
#header.wvcsd .btn-danger {
  color: #ffffff;
  text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25);
  background-color: #da4f49;
  background-image: -moz-linear-gradient(top, #ee5f5b, #bd362f);
  background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#ee5f5b), to(#bd362f));
  background-image: -webkit-linear-gradient(top, #ee5f5b, #bd362f);
  background-image: -o-linear-gradient(top, #ee5f5b, #bd362f);
  background-image: linear-gradient(to bottom, #ee5f5b, #bd362f);
  background-repeat: repeat-x;
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffee5f5b', endColorstr='#ffbd362f', GradientType=0);
  border-color: #bd362f #bd362f #802420;
  border-color: rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.25);
  *background-color: #bd362f;
  /* Darken IE7 buttons by default so they stand out more given they won't have borders */
  filter: progid:DXImageTransform.Microsoft.gradient(enabled = false);
}
#nav.wvcsd .btn-danger:hover,
#header.wvcsd .btn-danger:hover,
#nav.wvcsd .btn-danger:focus,
#header.wvcsd .btn-danger:focus,
#nav.wvcsd .btn-danger:active,
#header.wvcsd .btn-danger:active,
#nav.wvcsd .btn-danger.active,
#header.wvcsd .btn-danger.active,
#nav.wvcsd .btn-danger.disabled,
#header.wvcsd .btn-danger.disabled,
#nav.wvcsd .btn-danger[disabled],
#header.wvcsd .btn-danger[disabled] {
  color: #ffffff;
  background-color: #bd362f;
  *background-color: #a9302a;
}
#nav.wvcsd .btn-danger:active,
#header.wvcsd .btn-danger:active,
#nav.wvcsd .btn-danger.active,
#header.wvcsd .btn-danger.active {
  background-color: #942a25 \9;
}
#nav.wvcsd .btn-success,
#header.wvcsd .btn-success {
  color: #ffffff;
  text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25);
  background-color: #5bb75b;
  background-image: -moz-linear-gradient(top, #62c462, #51a351);
  background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#62c462), to(#51a351));
  background-image: -webkit-linear-gradient(top, #62c462, #51a351);
  background-image: -o-linear-gradient(top, #62c462, #51a351);
  background-image: linear-gradient(to bottom, #62c462, #51a351);
  background-repeat: repeat-x;
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ff62c462', endColorstr='#ff51a351', GradientType=0);
  border-color: #51a351 #51a351 #387038;
  border-color: rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.25);
  *background-color: #51a351;
  /* Darken IE7 buttons by default so they stand out more given they won't have borders */
  filter: progid:DXImageTransform.Microsoft.gradient(enabled = false);
}
#nav.wvcsd .btn-success:hover,
#header.wvcsd .btn-success:hover,
#nav.wvcsd .btn-success:focus,
#header.wvcsd .btn-success:focus,
#nav.wvcsd .btn-success:active,
#header.wvcsd .btn-success:active,
#nav.wvcsd .btn-success.active,
#header.wvcsd .btn-success.active,
#nav.wvcsd .btn-success.disabled,
#header.wvcsd .btn-success.disabled,
#nav.wvcsd .btn-success[disabled],
#header.wvcsd .btn-success[disabled] {
  color: #ffffff;
  background-color: #51a351;
  *background-color: #499249;
}
#nav.wvcsd .btn-success:active,
#header.wvcsd .btn-success:active,
#nav.wvcsd .btn-success.active,
#header.wvcsd .btn-success.active {
  background-color: #408140 \9;
}
#nav.wvcsd .btn-info,
#header.wvcsd .btn-info {
  color: #ffffff;
  text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25);
  background-color: #49afcd;
  background-image: -moz-linear-gradient(top, #5bc0de, #2f96b4);
  background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#5bc0de), to(#2f96b4));
  background-image: -webkit-linear-gradient(top, #5bc0de, #2f96b4);
  background-image: -o-linear-gradient(top, #5bc0de, #2f96b4);
  background-image: linear-gradient(to bottom, #5bc0de, #2f96b4);
  background-repeat: repeat-x;
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ff5bc0de', endColorstr='#ff2f96b4', GradientType=0);
  border-color: #2f96b4 #2f96b4 #1f6377;
  border-color: rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.25);
  *background-color: #2f96b4;
  /* Darken IE7 buttons by default so they stand out more given they won't have borders */
  filter: progid:DXImageTransform.Microsoft.gradient(enabled = false);
}
#nav.wvcsd .btn-info:hover,
#header.wvcsd .btn-info:hover,
#nav.wvcsd .btn-info:focus,
#header.wvcsd .btn-info:focus,
#nav.wvcsd .btn-info:active,
#header.wvcsd .btn-info:active,
#nav.wvcsd .btn-info.active,
#header.wvcsd .btn-info.active,
#nav.wvcsd .btn-info.disabled,
#header.wvcsd .btn-info.disabled,
#nav.wvcsd .btn-info[disabled],
#header.wvcsd .btn-info[disabled] {
  color: #ffffff;
  background-color: #2f96b4;
  *background-color: #2a85a0;
}
#nav.wvcsd .btn-info:active,
#header.wvcsd .btn-info:active,
#nav.wvcsd .btn-info.active,
#header.wvcsd .btn-info.active {
  background-color: #24748c \9;
}
#nav.wvcsd .btn-inverse,
#header.wvcsd .btn-inverse {
  color: #ffffff;
  text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25);
  background-color: #363636;
  background-image: -moz-linear-gradient(top, #444444, #222222);
  background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#444444), to(#222222));
  background-image: -webkit-linear-gradient(top, #444444, #222222);
  background-image: -o-linear-gradient(top, #444444, #222222);
  background-image: linear-gradient(to bottom, #444444, #222222);
  background-repeat: repeat-x;
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ff444444', endColorstr='#ff222222', GradientType=0);
  border-color: #222222 #222222 #000000;
  border-color: rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.25);
  *background-color: #222222;
  /* Darken IE7 buttons by default so they stand out more given they won't have borders */
  filter: progid:DXImageTransform.Microsoft.gradient(enabled = false);
}
#nav.wvcsd .btn-inverse:hover,
#header.wvcsd .btn-inverse:hover,
#nav.wvcsd .btn-inverse:focus,
#header.wvcsd .btn-inverse:focus,
#nav.wvcsd .btn-inverse:active,
#header.wvcsd .btn-inverse:active,
#nav.wvcsd .btn-inverse.active,
#header.wvcsd .btn-inverse.active,
#nav.wvcsd .btn-inverse.disabled,
#header.wvcsd .btn-inverse.disabled,
#nav.wvcsd .btn-inverse[disabled],
#header.wvcsd .btn-inverse[disabled] {
  color: #ffffff;
  background-color: #222222;
  *background-color: #151515;
}
#nav.wvcsd .btn-inverse:active,
#header.wvcsd .btn-inverse:active,
#nav.wvcsd .btn-inverse.active,
#header.wvcsd .btn-inverse.active {
  background-color: #080808 \9;
}
#nav.wvcsd button.btn,
#header.wvcsd button.btn,
#nav.wvcsd input[type="submit"].btn,
#header.wvcsd input[type="submit"].btn {
  *padding-top: 3px;
  *padding-bottom: 3px;
}
#nav.wvcsd button.btn::-moz-focus-inner,
#header.wvcsd button.btn::-moz-focus-inner,
#nav.wvcsd input[type="submit"].btn::-moz-focus-inner,
#header.wvcsd input[type="submit"].btn::-moz-focus-inner {
  padding: 0;
  border: 0;
}
#nav.wvcsd button.btn.btn-large,
#header.wvcsd button.btn.btn-large,
#nav.wvcsd input[type="submit"].btn.btn-large,
#header.wvcsd input[type="submit"].btn.btn-large {
  *padding-top: 7px;
  *padding-bottom: 7px;
}
#nav.wvcsd button.btn.btn-small,
#header.wvcsd button.btn.btn-small,
#nav.wvcsd input[type="submit"].btn.btn-small,
#header.wvcsd input[type="submit"].btn.btn-small {
  *padding-top: 3px;
  *padding-bottom: 3px;
}
#nav.wvcsd button.btn.btn-mini,
#header.wvcsd button.btn.btn-mini,
#nav.wvcsd input[type="submit"].btn.btn-mini,
#header.wvcsd input[type="submit"].btn.btn-mini {
  *padding-top: 1px;
  *padding-bottom: 1px;
}
#nav.wvcsd .btn-link,
#header.wvcsd .btn-link,
#nav.wvcsd .btn-link:active,
#header.wvcsd .btn-link:active,
#nav.wvcsd .btn-link[disabled],
#header.wvcsd .btn-link[disabled] {
  background-color: transparent;
  background-image: none;
  -webkit-box-shadow: none;
  -moz-box-shadow: none;
  box-shadow: none;
}
#nav.wvcsd .btn-link,
#header.wvcsd .btn-link {
  border-color: transparent;
  cursor: pointer;
  color: #0088cc;
  -webkit-border-radius: 0;
  -moz-border-radius: 0;
  border-radius: 0;
}
#nav.wvcsd .btn-link:hover,
#header.wvcsd .btn-link:hover,
#nav.wvcsd .btn-link:focus,
#header.wvcsd .btn-link:focus {
  color: #005580;
  text-decoration: underline;
  background-color: transparent;
}
#nav.wvcsd .btn-link[disabled]:hover,
#header.wvcsd .btn-link[disabled]:hover,
#nav.wvcsd .btn-link[disabled]:focus,
#header.wvcsd .btn-link[disabled]:focus {
  color: #333333;
  text-decoration: none;
}
#nav.wvcsd .carousel,
#header.wvcsd .carousel {
  position: relative;
  margin-bottom: 20px;
  line-height: 1;
}
#nav.wvcsd .carousel-inner,
#header.wvcsd .carousel-inner {
  overflow: hidden;
  width: 100%;
  position: relative;
}
#nav.wvcsd .carousel-inner > .item,
#header.wvcsd .carousel-inner > .item {
  display: none;
  position: relative;
  -webkit-transition: 0.6s ease-in-out left;
  -moz-transition: 0.6s ease-in-out left;
  -o-transition: 0.6s ease-in-out left;
  transition: 0.6s ease-in-out left;
}
#nav.wvcsd .carousel-inner > .item > img,
#header.wvcsd .carousel-inner > .item > img,
#nav.wvcsd .carousel-inner > .item > a > img,
#header.wvcsd .carousel-inner > .item > a > img {
  display: block;
  line-height: 1;
}
#nav.wvcsd .carousel-inner > .active,
#header.wvcsd .carousel-inner > .active,
#nav.wvcsd .carousel-inner > .next,
#header.wvcsd .carousel-inner > .next,
#nav.wvcsd .carousel-inner > .prev,
#header.wvcsd .carousel-inner > .prev {
  display: block;
}
#nav.wvcsd .carousel-inner > .active,
#header.wvcsd .carousel-inner > .active {
  left: 0;
}
#nav.wvcsd .carousel-inner > .next,
#header.wvcsd .carousel-inner > .next,
#nav.wvcsd .carousel-inner > .prev,
#header.wvcsd .carousel-inner > .prev {
  position: absolute;
  top: 0;
  width: 100%;
}
#nav.wvcsd .carousel-inner > .next,
#header.wvcsd .carousel-inner > .next {
  left: 100%;
}
#nav.wvcsd .carousel-inner > .prev,
#header.wvcsd .carousel-inner > .prev {
  left: -100%;
}
#nav.wvcsd .carousel-inner > .next.left,
#header.wvcsd .carousel-inner > .next.left,
#nav.wvcsd .carousel-inner > .prev.right,
#header.wvcsd .carousel-inner > .prev.right {
  left: 0;
}
#nav.wvcsd .carousel-inner > .active.left,
#header.wvcsd .carousel-inner > .active.left {
  left: -100%;
}
#nav.wvcsd .carousel-inner > .active.right,
#header.wvcsd .carousel-inner > .active.right {
  left: 100%;
}
#nav.wvcsd .carousel-control,
#header.wvcsd .carousel-control {
  position: absolute;
  top: 40%;
  left: 15px;
  width: 40px;
  height: 40px;
  margin-top: -20px;
  font-size: 60px;
  font-weight: 100;
  line-height: 30px;
  color: #ffffff;
  text-align: center;
  background: #222222;
  border: 3px solid #ffffff;
  -webkit-border-radius: 23px;
  -moz-border-radius: 23px;
  border-radius: 23px;
  opacity: 0.5;
  filter: alpha(opacity=50);
}
#nav.wvcsd .carousel-control.right,
#header.wvcsd .carousel-control.right {
  left: auto;
  right: 15px;
}
#nav.wvcsd .carousel-control:hover,
#header.wvcsd .carousel-control:hover,
#nav.wvcsd .carousel-control:focus,
#header.wvcsd .carousel-control:focus {
  color: #ffffff;
  text-decoration: none;
  opacity: 0.9;
  filter: alpha(opacity=90);
}
#nav.wvcsd .carousel-indicators,
#header.wvcsd .carousel-indicators {
  position: absolute;
  top: 15px;
  right: 15px;
  z-index: 5;
  margin: 0;
  list-style: none;
}
#nav.wvcsd .carousel-indicators li,
#header.wvcsd .carousel-indicators li {
  display: block;
  float: left;
  width: 10px;
  height: 10px;
  margin-left: 5px;
  text-indent: -999px;
  background-color: #ccc;
  background-color: rgba(255, 255, 255, 0.25);
  border-radius: 5px;
}
#nav.wvcsd .carousel-indicators .active,
#header.wvcsd .carousel-indicators .active {
  background-color: #fff;
}
#nav.wvcsd .carousel-caption,
#header.wvcsd .carousel-caption {
  position: absolute;
  left: 0;
  right: 0;
  bottom: 0;
  padding: 15px;
  background: #333333;
  background: rgba(0, 0, 0, 0.75);
}
#nav.wvcsd .carousel-caption h4,
#header.wvcsd .carousel-caption h4,
#nav.wvcsd .carousel-caption p,
#header.wvcsd .carousel-caption p {
  color: #ffffff;
  line-height: 20px;
}
#nav.wvcsd .carousel-caption h4,
#header.wvcsd .carousel-caption h4 {
  margin: 0 0 5px;
}
#nav.wvcsd .carousel-caption p,
#header.wvcsd .carousel-caption p {
  margin-bottom: 0;
}
#nav.wvcsd .close,
#header.wvcsd .close {
  float: right;
  font-size: 20px;
  font-weight: bold;
  line-height: 20px;
  color: #000000;
  text-shadow: 0 1px 0 #ffffff;
  opacity: 0.2;
  filter: alpha(opacity=20);
}
#nav.wvcsd .close:hover,
#header.wvcsd .close:hover,
#nav.wvcsd .close:focus,
#header.wvcsd .close:focus {
  color: #000000;
  text-decoration: none;
  cursor: pointer;
  opacity: 0.4;
  filter: alpha(opacity=40);
}
#nav.wvcsd button.close,
#header.wvcsd button.close {
  padding: 0;
  cursor: pointer;
  background: transparent;
  border: 0;
  -webkit-appearance: none;
}
#nav.wvcsd code,
#header.wvcsd code,
#nav.wvcsd pre,
#header.wvcsd pre {
  padding: 0 3px 2px;
  font-family: Monaco, Menlo, Consolas, "Courier New", monospace;
  font-size: 12px;
  color: #333333;
  -webkit-border-radius: 3px;
  -moz-border-radius: 3px;
  border-radius: 3px;
}
#nav.wvcsd code,
#header.wvcsd code {
  padding: 2px 4px;
  color: #d14;
  background-color: #f7f7f9;
  border: 1px solid #e1e1e8;
  white-space: nowrap;
}
#nav.wvcsd pre,
#header.wvcsd pre {
  display: block;
  padding: 9.5px;
  margin: 0 0 10px;
  font-size: 13px;
  line-height: 20px;
  word-break: break-all;
  word-wrap: break-word;
  white-space: pre;
  white-space: pre-wrap;
  background-color: #f5f5f5;
  border: 1px solid #ccc;
  border: 1px solid rgba(0, 0, 0, 0.15);
  -webkit-border-radius: 4px;
  -moz-border-radius: 4px;
  border-radius: 4px;
}
#nav.wvcsd pre.prettyprint,
#header.wvcsd pre.prettyprint {
  margin-bottom: 20px;
}
#nav.wvcsd pre code,
#header.wvcsd pre code {
  padding: 0;
  color: inherit;
  white-space: pre;
  white-space: pre-wrap;
  background-color: transparent;
  border: 0;
}
#nav.wvcsd .pre-scrollable,
#header.wvcsd .pre-scrollable {
  max-height: 340px;
  overflow-y: scroll;
}
#nav.wvcsd .fade,
#header.wvcsd .fade {
  opacity: 0;
  -webkit-transition: opacity 0.15s linear;
  -moz-transition: opacity 0.15s linear;
  -o-transition: opacity 0.15s linear;
  transition: opacity 0.15s linear;
}
#nav.wvcsd .fade.in,
#header.wvcsd .fade.in {
  opacity: 1;
}
#nav.wvcsd .collapse,
#header.wvcsd .collapse {
  position: relative;
  height: 0;
  overflow: hidden;
  -webkit-transition: height 0.35s ease;
  -moz-transition: height 0.35s ease;
  -o-transition: height 0.35s ease;
  transition: height 0.35s ease;
}
#nav.wvcsd .collapse.in,
#header.wvcsd .collapse.in {
  height: auto;
}
#nav.wvcsd .dropup,
#header.wvcsd .dropup,
#nav.wvcsd .dropdown,
#header.wvcsd .dropdown {
  position: relative;
}
#nav.wvcsd .dropdown-toggle,
#header.wvcsd .dropdown-toggle {
  *margin-bottom: -3px;
}
#nav.wvcsd .dropdown-toggle:active,
#header.wvcsd .dropdown-toggle:active,
#nav.wvcsd .open .dropdown-toggle,
#header.wvcsd .open .dropdown-toggle {
  outline: 0;
}
#nav.wvcsd .caret,
#header.wvcsd .caret {
  display: inline-block;
  width: 0;
  height: 0;
  vertical-align: top;
  border-top: 4px solid #000000;
  border-right: 4px solid transparent;
  border-left: 4px solid transparent;
  content: "";
}
#nav.wvcsd .dropdown .caret,
#header.wvcsd .dropdown .caret {
  margin-top: 8px;
  margin-left: 2px;
}
#nav.wvcsd .dropdown-menu,
#header.wvcsd .dropdown-menu {
  position: absolute;
  top: 100%;
  left: 0;
  z-index: 1000;
  display: none;
  float: left;
  min-width: 160px;
  padding: 5px 0;
  margin: 2px 0 0;
  list-style: none;
  background-color: #ffffff;
  border: 1px solid #ccc;
  border: 1px solid rgba(0, 0, 0, 0.2);
  *border-right-width: 2px;
  *border-bottom-width: 2px;
  -webkit-border-radius: 6px;
  -moz-border-radius: 6px;
  border-radius: 6px;
  -webkit-box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
  -moz-box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
  box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
  -webkit-background-clip: padding-box;
  -moz-background-clip: padding;
  background-clip: padding-box;
}
#nav.wvcsd .dropdown-menu.pull-right,
#header.wvcsd .dropdown-menu.pull-right {
  right: 0;
  left: auto;
}
#nav.wvcsd .dropdown-menu .divider,
#header.wvcsd .dropdown-menu .divider {
  *width: 100%;
  height: 1px;
  margin: 9px 1px;
  *margin: -5px 0 5px;
  overflow: hidden;
  background-color: #e5e5e5;
  border-bottom: 1px solid #ffffff;
}
#nav.wvcsd .dropdown-menu > li > a,
#header.wvcsd .dropdown-menu > li > a {
  display: block;
  padding: 3px 20px;
  clear: both;
  font-weight: normal;
  line-height: 20px;
  color: #333333;
  white-space: nowrap;
}
#nav.wvcsd .dropdown-menu > li > a:hover,
#header.wvcsd .dropdown-menu > li > a:hover,
#nav.wvcsd .dropdown-menu > li > a:focus,
#header.wvcsd .dropdown-menu > li > a:focus,
#nav.wvcsd .dropdown-submenu:hover > a,
#header.wvcsd .dropdown-submenu:hover > a,
#nav.wvcsd .dropdown-submenu:focus > a,
#header.wvcsd .dropdown-submenu:focus > a {
  text-decoration: none;
  color: #ffffff;
  background-color: #0081c2;
  background-image: -moz-linear-gradient(top, #0088cc, #0077b3);
  background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#0088cc), to(#0077b3));
  background-image: -webkit-linear-gradient(top, #0088cc, #0077b3);
  background-image: -o-linear-gradient(top, #0088cc, #0077b3);
  background-image: linear-gradient(to bottom, #0088cc, #0077b3);
  background-repeat: repeat-x;
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ff0088cc', endColorstr='#ff0077b3', GradientType=0);
}
#nav.wvcsd .dropdown-menu > .active > a,
#header.wvcsd .dropdown-menu > .active > a,
#nav.wvcsd .dropdown-menu > .active > a:hover,
#header.wvcsd .dropdown-menu > .active > a:hover,
#nav.wvcsd .dropdown-menu > .active > a:focus,
#header.wvcsd .dropdown-menu > .active > a:focus {
  color: #ffffff;
  text-decoration: none;
  outline: 0;
  background-color: #0081c2;
  background-image: -moz-linear-gradient(top, #0088cc, #0077b3);
  background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#0088cc), to(#0077b3));
  background-image: -webkit-linear-gradient(top, #0088cc, #0077b3);
  background-image: -o-linear-gradient(top, #0088cc, #0077b3);
  background-image: linear-gradient(to bottom, #0088cc, #0077b3);
  background-repeat: repeat-x;
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ff0088cc', endColorstr='#ff0077b3', GradientType=0);
}
#nav.wvcsd .dropdown-menu > .disabled > a,
#header.wvcsd .dropdown-menu > .disabled > a,
#nav.wvcsd .dropdown-menu > .disabled > a:hover,
#header.wvcsd .dropdown-menu > .disabled > a:hover,
#nav.wvcsd .dropdown-menu > .disabled > a:focus,
#header.wvcsd .dropdown-menu > .disabled > a:focus {
  color: #999999;
}
#nav.wvcsd .dropdown-menu > .disabled > a:hover,
#header.wvcsd .dropdown-menu > .disabled > a:hover,
#nav.wvcsd .dropdown-menu > .disabled > a:focus,
#header.wvcsd .dropdown-menu > .disabled > a:focus {
  text-decoration: none;
  background-color: transparent;
  background-image: none;
  filter: progid:DXImageTransform.Microsoft.gradient(enabled = false);
  cursor: default;
}
#nav.wvcsd .open,
#header.wvcsd .open {
  *z-index: 1000;
}
#nav.wvcsd .open > .dropdown-menu,
#header.wvcsd .open > .dropdown-menu {
  display: block;
}
#nav.wvcsd .dropdown-backdrop,
#header.wvcsd .dropdown-backdrop {
  position: fixed;
  left: 0;
  right: 0;
  bottom: 0;
  top: 0;
  z-index: 990;
}
#nav.wvcsd .pull-right > .dropdown-menu,
#header.wvcsd .pull-right > .dropdown-menu {
  right: 0;
  left: auto;
}
#nav.wvcsd .dropup .caret,
#header.wvcsd .dropup .caret,
#nav.wvcsd .navbar-fixed-bottom .dropdown .caret,
#header.wvcsd .navbar-fixed-bottom .dropdown .caret {
  border-top: 0;
  border-bottom: 4px solid #000000;
  content: "";
}
#nav.wvcsd .dropup .dropdown-menu,
#header.wvcsd .dropup .dropdown-menu,
#nav.wvcsd .navbar-fixed-bottom .dropdown .dropdown-menu,
#header.wvcsd .navbar-fixed-bottom .dropdown .dropdown-menu {
  top: auto;
  bottom: 100%;
  margin-bottom: 1px;
}
#nav.wvcsd .dropdown-submenu,
#header.wvcsd .dropdown-submenu {
  position: relative;
}
#nav.wvcsd .dropdown-submenu > .dropdown-menu,
#header.wvcsd .dropdown-submenu > .dropdown-menu {
  top: 0;
  left: 100%;
  margin-top: -6px;
  margin-left: -1px;
  -webkit-border-radius: 0 6px 6px 6px;
  -moz-border-radius: 0 6px 6px 6px;
  border-radius: 0 6px 6px 6px;
}
#nav.wvcsd .dropdown-submenu:hover > .dropdown-menu,
#header.wvcsd .dropdown-submenu:hover > .dropdown-menu {
  display: block;
}
#nav.wvcsd .dropup .dropdown-submenu > .dropdown-menu,
#header.wvcsd .dropup .dropdown-submenu > .dropdown-menu {
  top: auto;
  bottom: 0;
  margin-top: 0;
  margin-bottom: -2px;
  -webkit-border-radius: 5px 5px 5px 0;
  -moz-border-radius: 5px 5px 5px 0;
  border-radius: 5px 5px 5px 0;
}
#nav.wvcsd .dropdown-submenu > a:after,
#header.wvcsd .dropdown-submenu > a:after {
  display: block;
  content: " ";
  float: right;
  width: 0;
  height: 0;
  border-color: transparent;
  border-style: solid;
  border-width: 5px 0 5px 5px;
  border-left-color: #cccccc;
  margin-top: 5px;
  margin-right: -10px;
}
#nav.wvcsd .dropdown-submenu:hover > a:after,
#header.wvcsd .dropdown-submenu:hover > a:after {
  border-left-color: #ffffff;
}
#nav.wvcsd .dropdown-submenu.pull-left,
#header.wvcsd .dropdown-submenu.pull-left {
  float: none;
}
#nav.wvcsd .dropdown-submenu.pull-left > .dropdown-menu,
#header.wvcsd .dropdown-submenu.pull-left > .dropdown-menu {
  left: -100%;
  margin-left: 10px;
  -webkit-border-radius: 6px 0 6px 6px;
  -moz-border-radius: 6px 0 6px 6px;
  border-radius: 6px 0 6px 6px;
}
#nav.wvcsd .dropdown .dropdown-menu .nav-header,
#header.wvcsd .dropdown .dropdown-menu .nav-header {
  padding-left: 20px;
  padding-right: 20px;
}
#nav.wvcsd .typeahead,
#header.wvcsd .typeahead {
  z-index: 1051;
  margin-top: 2px;
  -webkit-border-radius: 4px;
  -moz-border-radius: 4px;
  border-radius: 4px;
}
#nav.wvcsd form,
#header.wvcsd form {
  margin: 0 0 20px;
}
#nav.wvcsd fieldset,
#header.wvcsd fieldset {
  padding: 0;
  margin: 0;
  border: 0;
}
#nav.wvcsd legend,
#header.wvcsd legend {
  display: block;
  width: 100%;
  padding: 0;
  margin-bottom: 20px;
  font-size: 21px;
  line-height: 40px;
  color: #333333;
  border: 0;
  border-bottom: 1px solid #e5e5e5;
}
#nav.wvcsd legend small,
#header.wvcsd legend small {
  font-size: 15px;
  color: #999999;
}
#nav.wvcsd label,
#header.wvcsd label,
#nav.wvcsd input,
#header.wvcsd input,
#nav.wvcsd button,
#header.wvcsd button,
#nav.wvcsd select,
#header.wvcsd select,
#nav.wvcsd textarea,
#header.wvcsd textarea {
  font-size: 14px;
  font-weight: normal;
  line-height: 20px;
}
#nav.wvcsd input,
#header.wvcsd input,
#nav.wvcsd button,
#header.wvcsd button,
#nav.wvcsd select,
#header.wvcsd select,
#nav.wvcsd textarea,
#header.wvcsd textarea {
  font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
}
#nav.wvcsd label,
#header.wvcsd label {
  display: block;
  margin-bottom: 5px;
}
#nav.wvcsd select,
#header.wvcsd select,
#nav.wvcsd textarea,
#header.wvcsd textarea,
#nav.wvcsd input[type="text"],
#header.wvcsd input[type="text"],
#nav.wvcsd input[type="password"],
#header.wvcsd input[type="password"],
#nav.wvcsd input[type="datetime"],
#header.wvcsd input[type="datetime"],
#nav.wvcsd input[type="datetime-local"],
#header.wvcsd input[type="datetime-local"],
#nav.wvcsd input[type="date"],
#header.wvcsd input[type="date"],
#nav.wvcsd input[type="month"],
#header.wvcsd input[type="month"],
#nav.wvcsd input[type="time"],
#header.wvcsd input[type="time"],
#nav.wvcsd input[type="week"],
#header.wvcsd input[type="week"],
#nav.wvcsd input[type="number"],
#header.wvcsd input[type="number"],
#nav.wvcsd input[type="email"],
#header.wvcsd input[type="email"],
#nav.wvcsd input[type="url"],
#header.wvcsd input[type="url"],
#nav.wvcsd input[type="search"],
#header.wvcsd input[type="search"],
#nav.wvcsd input[type="tel"],
#header.wvcsd input[type="tel"],
#nav.wvcsd input[type="color"],
#header.wvcsd input[type="color"],
#nav.wvcsd .uneditable-input,
#header.wvcsd .uneditable-input {
  display: inline-block;
  height: 20px;
  padding: 4px 6px;
  margin-bottom: 10px;
  font-size: 14px;
  line-height: 20px;
  color: #555555;
  -webkit-border-radius: 4px;
  -moz-border-radius: 4px;
  border-radius: 4px;
  vertical-align: middle;
}
#nav.wvcsd input,
#header.wvcsd input,
#nav.wvcsd textarea,
#header.wvcsd textarea,
#nav.wvcsd .uneditable-input,
#header.wvcsd .uneditable-input {
  width: 206px;
}
#nav.wvcsd textarea,
#header.wvcsd textarea {
  height: auto;
}
#nav.wvcsd textarea,
#header.wvcsd textarea,
#nav.wvcsd input[type="text"],
#header.wvcsd input[type="text"],
#nav.wvcsd input[type="password"],
#header.wvcsd input[type="password"],
#nav.wvcsd input[type="datetime"],
#header.wvcsd input[type="datetime"],
#nav.wvcsd input[type="datetime-local"],
#header.wvcsd input[type="datetime-local"],
#nav.wvcsd input[type="date"],
#header.wvcsd input[type="date"],
#nav.wvcsd input[type="month"],
#header.wvcsd input[type="month"],
#nav.wvcsd input[type="time"],
#header.wvcsd input[type="time"],
#nav.wvcsd input[type="week"],
#header.wvcsd input[type="week"],
#nav.wvcsd input[type="number"],
#header.wvcsd input[type="number"],
#nav.wvcsd input[type="email"],
#header.wvcsd input[type="email"],
#nav.wvcsd input[type="url"],
#header.wvcsd input[type="url"],
#nav.wvcsd input[type="search"],
#header.wvcsd input[type="search"],
#nav.wvcsd input[type="tel"],
#header.wvcsd input[type="tel"],
#nav.wvcsd input[type="color"],
#header.wvcsd input[type="color"],
#nav.wvcsd .uneditable-input,
#header.wvcsd .uneditable-input {
  background-color: #ffffff;
  border: 1px solid #cccccc;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
  -moz-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
  box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
  -webkit-transition: border linear .2s, box-shadow linear .2s;
  -moz-transition: border linear .2s, box-shadow linear .2s;
  -o-transition: border linear .2s, box-shadow linear .2s;
  transition: border linear .2s, box-shadow linear .2s;
}
#nav.wvcsd textarea:focus,
#header.wvcsd textarea:focus,
#nav.wvcsd input[type="text"]:focus,
#header.wvcsd input[type="text"]:focus,
#nav.wvcsd input[type="password"]:focus,
#header.wvcsd input[type="password"]:focus,
#nav.wvcsd input[type="datetime"]:focus,
#header.wvcsd input[type="datetime"]:focus,
#nav.wvcsd input[type="datetime-local"]:focus,
#header.wvcsd input[type="datetime-local"]:focus,
#nav.wvcsd input[type="date"]:focus,
#header.wvcsd input[type="date"]:focus,
#nav.wvcsd input[type="month"]:focus,
#header.wvcsd input[type="month"]:focus,
#nav.wvcsd input[type="time"]:focus,
#header.wvcsd input[type="time"]:focus,
#nav.wvcsd input[type="week"]:focus,
#header.wvcsd input[type="week"]:focus,
#nav.wvcsd input[type="number"]:focus,
#header.wvcsd input[type="number"]:focus,
#nav.wvcsd input[type="email"]:focus,
#header.wvcsd input[type="email"]:focus,
#nav.wvcsd input[type="url"]:focus,
#header.wvcsd input[type="url"]:focus,
#nav.wvcsd input[type="search"]:focus,
#header.wvcsd input[type="search"]:focus,
#nav.wvcsd input[type="tel"]:focus,
#header.wvcsd input[type="tel"]:focus,
#nav.wvcsd input[type="color"]:focus,
#header.wvcsd input[type="color"]:focus,
#nav.wvcsd .uneditable-input:focus,
#header.wvcsd .uneditable-input:focus {
  border-color: rgba(82, 168, 236, 0.8);
  outline: 0;
  outline: thin dotted \9;
  /* IE6-9 */
  -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075), 0 0 8px rgba(82,168,236,.6);
  -moz-box-shadow: inset 0 1px 1px rgba(0,0,0,.075), 0 0 8px rgba(82,168,236,.6);
  box-shadow: inset 0 1px 1px rgba(0,0,0,.075), 0 0 8px rgba(82,168,236,.6);
}
#nav.wvcsd input[type="radio"],
#header.wvcsd input[type="radio"],
#nav.wvcsd input[type="checkbox"],
#header.wvcsd input[type="checkbox"] {
  margin: 4px 0 0;
  *margin-top: 0;
  /* IE7 */
  margin-top: 1px \9;
  /* IE8-9 */
  line-height: normal;
}
#nav.wvcsd input[type="file"],
#header.wvcsd input[type="file"],
#nav.wvcsd input[type="image"],
#header.wvcsd input[type="image"],
#nav.wvcsd input[type="submit"],
#header.wvcsd input[type="submit"],
#nav.wvcsd input[type="reset"],
#header.wvcsd input[type="reset"],
#nav.wvcsd input[type="button"],
#header.wvcsd input[type="button"],
#nav.wvcsd input[type="radio"],
#header.wvcsd input[type="radio"],
#nav.wvcsd input[type="checkbox"],
#header.wvcsd input[type="checkbox"] {
  width: auto;
}
#nav.wvcsd select,
#header.wvcsd select,
#nav.wvcsd input[type="file"],
#header.wvcsd input[type="file"] {
  height: 30px;
  /* In IE7, the height of the select element cannot be changed by height, only font-size */
  *margin-top: 4px;
  /* For IE7, add top margin to align select with labels */
  line-height: 30px;
}
#nav.wvcsd select,
#header.wvcsd select {
  width: 220px;
  border: 1px solid #cccccc;
  background-color: #ffffff;
}
#nav.wvcsd select[multiple],
#header.wvcsd select[multiple],
#nav.wvcsd select[size],
#header.wvcsd select[size] {
  height: auto;
}
#nav.wvcsd select:focus,
#header.wvcsd select:focus,
#nav.wvcsd input[type="file"]:focus,
#header.wvcsd input[type="file"]:focus,
#nav.wvcsd input[type="radio"]:focus,
#header.wvcsd input[type="radio"]:focus,
#nav.wvcsd input[type="checkbox"]:focus,
#header.wvcsd input[type="checkbox"]:focus {
  outline: thin dotted #333;
  outline: 5px auto -webkit-focus-ring-color;
  outline-offset: -2px;
}
#nav.wvcsd .uneditable-input,
#header.wvcsd .uneditable-input,
#nav.wvcsd .uneditable-textarea,
#header.wvcsd .uneditable-textarea {
  color: #999999;
  background-color: #fcfcfc;
  border-color: #cccccc;
  -webkit-box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.025);
  -moz-box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.025);
  box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.025);
  cursor: not-allowed;
}
#nav.wvcsd .uneditable-input,
#header.wvcsd .uneditable-input {
  overflow: hidden;
  white-space: nowrap;
}
#nav.wvcsd .uneditable-textarea,
#header.wvcsd .uneditable-textarea {
  width: auto;
  height: auto;
}
#nav.wvcsd input:-moz-placeholder,
#header.wvcsd input:-moz-placeholder,
#nav.wvcsd textarea:-moz-placeholder,
#header.wvcsd textarea:-moz-placeholder {
  color: #999999;
}
#nav.wvcsd input:-ms-input-placeholder,
#header.wvcsd input:-ms-input-placeholder,
#nav.wvcsd textarea:-ms-input-placeholder,
#header.wvcsd textarea:-ms-input-placeholder {
  color: #999999;
}
#nav.wvcsd input::-webkit-input-placeholder,
#header.wvcsd input::-webkit-input-placeholder,
#nav.wvcsd textarea::-webkit-input-placeholder,
#header.wvcsd textarea::-webkit-input-placeholder {
  color: #999999;
}
#nav.wvcsd .radio,
#header.wvcsd .radio,
#nav.wvcsd .checkbox,
#header.wvcsd .checkbox {
  min-height: 20px;
  padding-left: 20px;
}
#nav.wvcsd .radio input[type="radio"],
#header.wvcsd .radio input[type="radio"],
#nav.wvcsd .checkbox input[type="checkbox"],
#header.wvcsd .checkbox input[type="checkbox"] {
  float: left;
  margin-left: -20px;
}
#nav.wvcsd .controls > .radio:first-child,
#header.wvcsd .controls > .radio:first-child,
#nav.wvcsd .controls > .checkbox:first-child,
#header.wvcsd .controls > .checkbox:first-child {
  padding-top: 5px;
}
#nav.wvcsd .radio.inline,
#header.wvcsd .radio.inline,
#nav.wvcsd .checkbox.inline,
#header.wvcsd .checkbox.inline {
  display: inline-block;
  padding-top: 5px;
  margin-bottom: 0;
  vertical-align: middle;
}
#nav.wvcsd .radio.inline + .radio.inline,
#header.wvcsd .radio.inline + .radio.inline,
#nav.wvcsd .checkbox.inline + .checkbox.inline,
#header.wvcsd .checkbox.inline + .checkbox.inline {
  margin-left: 10px;
}
#nav.wvcsd .input-mini,
#header.wvcsd .input-mini {
  width: 60px;
}
#nav.wvcsd .input-small,
#header.wvcsd .input-small {
  width: 90px;
}
#nav.wvcsd .input-medium,
#header.wvcsd .input-medium {
  width: 150px;
}
#nav.wvcsd .input-large,
#header.wvcsd .input-large {
  width: 210px;
}
#nav.wvcsd .input-xlarge,
#header.wvcsd .input-xlarge {
  width: 270px;
}
#nav.wvcsd .input-xxlarge,
#header.wvcsd .input-xxlarge {
  width: 530px;
}
#nav.wvcsd input[class*="span"],
#header.wvcsd input[class*="span"],
#nav.wvcsd select[class*="span"],
#header.wvcsd select[class*="span"],
#nav.wvcsd textarea[class*="span"],
#header.wvcsd textarea[class*="span"],
#nav.wvcsd .uneditable-input[class*="span"],
#header.wvcsd .uneditable-input[class*="span"],
#nav.wvcsd .row-fluid input[class*="span"],
#header.wvcsd .row-fluid input[class*="span"],
#nav.wvcsd .row-fluid select[class*="span"],
#header.wvcsd .row-fluid select[class*="span"],
#nav.wvcsd .row-fluid textarea[class*="span"],
#header.wvcsd .row-fluid textarea[class*="span"],
#nav.wvcsd .row-fluid .uneditable-input[class*="span"],
#header.wvcsd .row-fluid .uneditable-input[class*="span"] {
  float: none;
  margin-left: 0;
}
#nav.wvcsd .input-append input[class*="span"],
#header.wvcsd .input-append input[class*="span"],
#nav.wvcsd .input-append .uneditable-input[class*="span"],
#header.wvcsd .input-append .uneditable-input[class*="span"],
#nav.wvcsd .input-prepend input[class*="span"],
#header.wvcsd .input-prepend input[class*="span"],
#nav.wvcsd .input-prepend .uneditable-input[class*="span"],
#header.wvcsd .input-prepend .uneditable-input[class*="span"],
#nav.wvcsd .row-fluid input[class*="span"],
#header.wvcsd .row-fluid input[class*="span"],
#nav.wvcsd .row-fluid select[class*="span"],
#header.wvcsd .row-fluid select[class*="span"],
#nav.wvcsd .row-fluid textarea[class*="span"],
#header.wvcsd .row-fluid textarea[class*="span"],
#nav.wvcsd .row-fluid .uneditable-input[class*="span"],
#header.wvcsd .row-fluid .uneditable-input[class*="span"],
#nav.wvcsd .row-fluid .input-prepend [class*="span"],
#header.wvcsd .row-fluid .input-prepend [class*="span"],
#nav.wvcsd .row-fluid .input-append [class*="span"],
#header.wvcsd .row-fluid .input-append [class*="span"] {
  display: inline-block;
}
#nav.wvcsd input,
#header.wvcsd input,
#nav.wvcsd textarea,
#header.wvcsd textarea,
#nav.wvcsd .uneditable-input,
#header.wvcsd .uneditable-input {
  margin-left: 0;
}
#nav.wvcsd .controls-row [class*="span"] + [class*="span"],
#header.wvcsd .controls-row [class*="span"] + [class*="span"] {
  margin-left: 20px;
}
#nav.wvcsd input.span12,
#header.wvcsd input.span12,
#nav.wvcsd textarea.span12,
#header.wvcsd textarea.span12,
#nav.wvcsd .uneditable-input.span12,
#header.wvcsd .uneditable-input.span12 {
  width: 926px;
}
#nav.wvcsd input.span11,
#header.wvcsd input.span11,
#nav.wvcsd textarea.span11,
#header.wvcsd textarea.span11,
#nav.wvcsd .uneditable-input.span11,
#header.wvcsd .uneditable-input.span11 {
  width: 846px;
}
#nav.wvcsd input.span10,
#header.wvcsd input.span10,
#nav.wvcsd textarea.span10,
#header.wvcsd textarea.span10,
#nav.wvcsd .uneditable-input.span10,
#header.wvcsd .uneditable-input.span10 {
  width: 766px;
}
#nav.wvcsd input.span9,
#header.wvcsd input.span9,
#nav.wvcsd textarea.span9,
#header.wvcsd textarea.span9,
#nav.wvcsd .uneditable-input.span9,
#header.wvcsd .uneditable-input.span9 {
  width: 686px;
}
#nav.wvcsd input.span8,
#header.wvcsd input.span8,
#nav.wvcsd textarea.span8,
#header.wvcsd textarea.span8,
#nav.wvcsd .uneditable-input.span8,
#header.wvcsd .uneditable-input.span8 {
  width: 606px;
}
#nav.wvcsd input.span7,
#header.wvcsd input.span7,
#nav.wvcsd textarea.span7,
#header.wvcsd textarea.span7,
#nav.wvcsd .uneditable-input.span7,
#header.wvcsd .uneditable-input.span7 {
  width: 526px;
}
#nav.wvcsd input.span6,
#header.wvcsd input.span6,
#nav.wvcsd textarea.span6,
#header.wvcsd textarea.span6,
#nav.wvcsd .uneditable-input.span6,
#header.wvcsd .uneditable-input.span6 {
  width: 446px;
}
#nav.wvcsd input.span5,
#header.wvcsd input.span5,
#nav.wvcsd textarea.span5,
#header.wvcsd textarea.span5,
#nav.wvcsd .uneditable-input.span5,
#header.wvcsd .uneditable-input.span5 {
  width: 366px;
}
#nav.wvcsd input.span4,
#header.wvcsd input.span4,
#nav.wvcsd textarea.span4,
#header.wvcsd textarea.span4,
#nav.wvcsd .uneditable-input.span4,
#header.wvcsd .uneditable-input.span4 {
  width: 286px;
}
#nav.wvcsd input.span3,
#header.wvcsd input.span3,
#nav.wvcsd textarea.span3,
#header.wvcsd textarea.span3,
#nav.wvcsd .uneditable-input.span3,
#header.wvcsd .uneditable-input.span3 {
  width: 206px;
}
#nav.wvcsd input.span2,
#header.wvcsd input.span2,
#nav.wvcsd textarea.span2,
#header.wvcsd textarea.span2,
#nav.wvcsd .uneditable-input.span2,
#header.wvcsd .uneditable-input.span2 {
  width: 126px;
}
#nav.wvcsd input.span1,
#header.wvcsd input.span1,
#nav.wvcsd textarea.span1,
#header.wvcsd textarea.span1,
#nav.wvcsd .uneditable-input.span1,
#header.wvcsd .uneditable-input.span1 {
  width: 46px;
}
#nav.wvcsd .controls-row,
#header.wvcsd .controls-row {
  *zoom: 1;
}
#nav.wvcsd .controls-row:before,
#header.wvcsd .controls-row:before,
#nav.wvcsd .controls-row:after,
#header.wvcsd .controls-row:after {
  display: table;
  content: "";
  line-height: 0;
}
#nav.wvcsd .controls-row:after,
#header.wvcsd .controls-row:after {
  clear: both;
}
#nav.wvcsd .controls-row [class*="span"],
#header.wvcsd .controls-row [class*="span"],
#nav.wvcsd .row-fluid .controls-row [class*="span"],
#header.wvcsd .row-fluid .controls-row [class*="span"] {
  float: left;
}
#nav.wvcsd .controls-row .checkbox[class*="span"],
#header.wvcsd .controls-row .checkbox[class*="span"],
#nav.wvcsd .controls-row .radio[class*="span"],
#header.wvcsd .controls-row .radio[class*="span"] {
  padding-top: 5px;
}
#nav.wvcsd input[disabled],
#header.wvcsd input[disabled],
#nav.wvcsd select[disabled],
#header.wvcsd select[disabled],
#nav.wvcsd textarea[disabled],
#header.wvcsd textarea[disabled],
#nav.wvcsd input[readonly],
#header.wvcsd input[readonly],
#nav.wvcsd select[readonly],
#header.wvcsd select[readonly],
#nav.wvcsd textarea[readonly],
#header.wvcsd textarea[readonly] {
  cursor: not-allowed;
  background-color: #eeeeee;
}
#nav.wvcsd input[type="radio"][disabled],
#header.wvcsd input[type="radio"][disabled],
#nav.wvcsd input[type="checkbox"][disabled],
#header.wvcsd input[type="checkbox"][disabled],
#nav.wvcsd input[type="radio"][readonly],
#header.wvcsd input[type="radio"][readonly],
#nav.wvcsd input[type="checkbox"][readonly],
#header.wvcsd input[type="checkbox"][readonly] {
  background-color: transparent;
}
#nav.wvcsd .control-group.warning .control-label,
#header.wvcsd .control-group.warning .control-label,
#nav.wvcsd .control-group.warning .help-block,
#header.wvcsd .control-group.warning .help-block,
#nav.wvcsd .control-group.warning .help-inline,
#header.wvcsd .control-group.warning .help-inline {
  color: #c09853;
}
#nav.wvcsd .control-group.warning .checkbox,
#header.wvcsd .control-group.warning .checkbox,
#nav.wvcsd .control-group.warning .radio,
#header.wvcsd .control-group.warning .radio,
#nav.wvcsd .control-group.warning input,
#header.wvcsd .control-group.warning input,
#nav.wvcsd .control-group.warning select,
#header.wvcsd .control-group.warning select,
#nav.wvcsd .control-group.warning textarea,
#header.wvcsd .control-group.warning textarea {
  color: #c09853;
}
#nav.wvcsd .control-group.warning input,
#header.wvcsd .control-group.warning input,
#nav.wvcsd .control-group.warning select,
#header.wvcsd .control-group.warning select,
#nav.wvcsd .control-group.warning textarea,
#header.wvcsd .control-group.warning textarea {
  border-color: #c09853;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
  -moz-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
  box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
}
#nav.wvcsd .control-group.warning input:focus,
#header.wvcsd .control-group.warning input:focus,
#nav.wvcsd .control-group.warning select:focus,
#header.wvcsd .control-group.warning select:focus,
#nav.wvcsd .control-group.warning textarea:focus,
#header.wvcsd .control-group.warning textarea:focus {
  border-color: #a47e3c;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 6px #dbc59e;
  -moz-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 6px #dbc59e;
  box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 6px #dbc59e;
}
#nav.wvcsd .control-group.warning .input-prepend .add-on,
#header.wvcsd .control-group.warning .input-prepend .add-on,
#nav.wvcsd .control-group.warning .input-append .add-on,
#header.wvcsd .control-group.warning .input-append .add-on {
  color: #c09853;
  background-color: #fcf8e3;
  border-color: #c09853;
}
#nav.wvcsd .control-group.error .control-label,
#header.wvcsd .control-group.error .control-label,
#nav.wvcsd .control-group.error .help-block,
#header.wvcsd .control-group.error .help-block,
#nav.wvcsd .control-group.error .help-inline,
#header.wvcsd .control-group.error .help-inline {
  color: #b94a48;
}
#nav.wvcsd .control-group.error .checkbox,
#header.wvcsd .control-group.error .checkbox,
#nav.wvcsd .control-group.error .radio,
#header.wvcsd .control-group.error .radio,
#nav.wvcsd .control-group.error input,
#header.wvcsd .control-group.error input,
#nav.wvcsd .control-group.error select,
#header.wvcsd .control-group.error select,
#nav.wvcsd .control-group.error textarea,
#header.wvcsd .control-group.error textarea {
  color: #b94a48;
}
#nav.wvcsd .control-group.error input,
#header.wvcsd .control-group.error input,
#nav.wvcsd .control-group.error select,
#header.wvcsd .control-group.error select,
#nav.wvcsd .control-group.error textarea,
#header.wvcsd .control-group.error textarea {
  border-color: #b94a48;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
  -moz-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
  box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
}
#nav.wvcsd .control-group.error input:focus,
#header.wvcsd .control-group.error input:focus,
#nav.wvcsd .control-group.error select:focus,
#header.wvcsd .control-group.error select:focus,
#nav.wvcsd .control-group.error textarea:focus,
#header.wvcsd .control-group.error textarea:focus {
  border-color: #953b39;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 6px #d59392;
  -moz-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 6px #d59392;
  box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 6px #d59392;
}
#nav.wvcsd .control-group.error .input-prepend .add-on,
#header.wvcsd .control-group.error .input-prepend .add-on,
#nav.wvcsd .control-group.error .input-append .add-on,
#header.wvcsd .control-group.error .input-append .add-on {
  color: #b94a48;
  background-color: #f2dede;
  border-color: #b94a48;
}
#nav.wvcsd .control-group.success .control-label,
#header.wvcsd .control-group.success .control-label,
#nav.wvcsd .control-group.success .help-block,
#header.wvcsd .control-group.success .help-block,
#nav.wvcsd .control-group.success .help-inline,
#header.wvcsd .control-group.success .help-inline {
  color: #468847;
}
#nav.wvcsd .control-group.success .checkbox,
#header.wvcsd .control-group.success .checkbox,
#nav.wvcsd .control-group.success .radio,
#header.wvcsd .control-group.success .radio,
#nav.wvcsd .control-group.success input,
#header.wvcsd .control-group.success input,
#nav.wvcsd .control-group.success select,
#header.wvcsd .control-group.success select,
#nav.wvcsd .control-group.success textarea,
#header.wvcsd .control-group.success textarea {
  color: #468847;
}
#nav.wvcsd .control-group.success input,
#header.wvcsd .control-group.success input,
#nav.wvcsd .control-group.success select,
#header.wvcsd .control-group.success select,
#nav.wvcsd .control-group.success textarea,
#header.wvcsd .control-group.success textarea {
  border-color: #468847;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
  -moz-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
  box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
}
#nav.wvcsd .control-group.success input:focus,
#header.wvcsd .control-group.success input:focus,
#nav.wvcsd .control-group.success select:focus,
#header.wvcsd .control-group.success select:focus,
#nav.wvcsd .control-group.success textarea:focus,
#header.wvcsd .control-group.success textarea:focus {
  border-color: #356635;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 6px #7aba7b;
  -moz-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 6px #7aba7b;
  box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 6px #7aba7b;
}
#nav.wvcsd .control-group.success .input-prepend .add-on,
#header.wvcsd .control-group.success .input-prepend .add-on,
#nav.wvcsd .control-group.success .input-append .add-on,
#header.wvcsd .control-group.success .input-append .add-on {
  color: #468847;
  background-color: #dff0d8;
  border-color: #468847;
}
#nav.wvcsd .control-group.info .control-label,
#header.wvcsd .control-group.info .control-label,
#nav.wvcsd .control-group.info .help-block,
#header.wvcsd .control-group.info .help-block,
#nav.wvcsd .control-group.info .help-inline,
#header.wvcsd .control-group.info .help-inline {
  color: #3a87ad;
}
#nav.wvcsd .control-group.info .checkbox,
#header.wvcsd .control-group.info .checkbox,
#nav.wvcsd .control-group.info .radio,
#header.wvcsd .control-group.info .radio,
#nav.wvcsd .control-group.info input,
#header.wvcsd .control-group.info input,
#nav.wvcsd .control-group.info select,
#header.wvcsd .control-group.info select,
#nav.wvcsd .control-group.info textarea,
#header.wvcsd .control-group.info textarea {
  color: #3a87ad;
}
#nav.wvcsd .control-group.info input,
#header.wvcsd .control-group.info input,
#nav.wvcsd .control-group.info select,
#header.wvcsd .control-group.info select,
#nav.wvcsd .control-group.info textarea,
#header.wvcsd .control-group.info textarea {
  border-color: #3a87ad;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
  -moz-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
  box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
}
#nav.wvcsd .control-group.info input:focus,
#header.wvcsd .control-group.info input:focus,
#nav.wvcsd .control-group.info select:focus,
#header.wvcsd .control-group.info select:focus,
#nav.wvcsd .control-group.info textarea:focus,
#header.wvcsd .control-group.info textarea:focus {
  border-color: #2d6987;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 6px #7ab5d3;
  -moz-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 6px #7ab5d3;
  box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 6px #7ab5d3;
}
#nav.wvcsd .control-group.info .input-prepend .add-on,
#header.wvcsd .control-group.info .input-prepend .add-on,
#nav.wvcsd .control-group.info .input-append .add-on,
#header.wvcsd .control-group.info .input-append .add-on {
  color: #3a87ad;
  background-color: #d9edf7;
  border-color: #3a87ad;
}
#nav.wvcsd input:focus:invalid,
#header.wvcsd input:focus:invalid,
#nav.wvcsd textarea:focus:invalid,
#header.wvcsd textarea:focus:invalid,
#nav.wvcsd select:focus:invalid,
#header.wvcsd select:focus:invalid {
  color: #b94a48;
  border-color: #ee5f5b;
}
#nav.wvcsd input:focus:invalid:focus,
#header.wvcsd input:focus:invalid:focus,
#nav.wvcsd textarea:focus:invalid:focus,
#header.wvcsd textarea:focus:invalid:focus,
#nav.wvcsd select:focus:invalid:focus,
#header.wvcsd select:focus:invalid:focus {
  border-color: #e9322d;
  -webkit-box-shadow: 0 0 6px #f8b9b7;
  -moz-box-shadow: 0 0 6px #f8b9b7;
  box-shadow: 0 0 6px #f8b9b7;
}
#nav.wvcsd .form-actions,
#header.wvcsd .form-actions {
  padding: 19px 20px 20px;
  margin-top: 20px;
  margin-bottom: 20px;
  background-color: #f5f5f5;
  border-top: 1px solid #e5e5e5;
  *zoom: 1;
}
#nav.wvcsd .form-actions:before,
#header.wvcsd .form-actions:before,
#nav.wvcsd .form-actions:after,
#header.wvcsd .form-actions:after {
  display: table;
  content: "";
  line-height: 0;
}
#nav.wvcsd .form-actions:after,
#header.wvcsd .form-actions:after {
  clear: both;
}
#nav.wvcsd .help-block,
#header.wvcsd .help-block,
#nav.wvcsd .help-inline,
#header.wvcsd .help-inline {
  color: #595959;
}
#nav.wvcsd .help-block,
#header.wvcsd .help-block {
  display: block;
  margin-bottom: 10px;
}
#nav.wvcsd .help-inline,
#header.wvcsd .help-inline {
  display: inline-block;
  *display: inline;
  /* IE7 inline-block hack */
  *zoom: 1;
  vertical-align: middle;
  padding-left: 5px;
}
#nav.wvcsd .input-append,
#header.wvcsd .input-append,
#nav.wvcsd .input-prepend,
#header.wvcsd .input-prepend {
  display: inline-block;
  margin-bottom: 10px;
  vertical-align: middle;
  font-size: 0;
  white-space: nowrap;
}
#nav.wvcsd .input-append input,
#header.wvcsd .input-append input,
#nav.wvcsd .input-prepend input,
#header.wvcsd .input-prepend input,
#nav.wvcsd .input-append select,
#header.wvcsd .input-append select,
#nav.wvcsd .input-prepend select,
#header.wvcsd .input-prepend select,
#nav.wvcsd .input-append .uneditable-input,
#header.wvcsd .input-append .uneditable-input,
#nav.wvcsd .input-prepend .uneditable-input,
#header.wvcsd .input-prepend .uneditable-input,
#nav.wvcsd .input-append .dropdown-menu,
#header.wvcsd .input-append .dropdown-menu,
#nav.wvcsd .input-prepend .dropdown-menu,
#header.wvcsd .input-prepend .dropdown-menu,
#nav.wvcsd .input-append .popover,
#header.wvcsd .input-append .popover,
#nav.wvcsd .input-prepend .popover,
#header.wvcsd .input-prepend .popover {
  font-size: 14px;
}
#nav.wvcsd .input-append input,
#header.wvcsd .input-append input,
#nav.wvcsd .input-prepend input,
#header.wvcsd .input-prepend input,
#nav.wvcsd .input-append select,
#header.wvcsd .input-append select,
#nav.wvcsd .input-prepend select,
#header.wvcsd .input-prepend select,
#nav.wvcsd .input-append .uneditable-input,
#header.wvcsd .input-append .uneditable-input,
#nav.wvcsd .input-prepend .uneditable-input,
#header.wvcsd .input-prepend .uneditable-input {
  position: relative;
  margin-bottom: 0;
  *margin-left: 0;
  vertical-align: top;
  -webkit-border-radius: 0 4px 4px 0;
  -moz-border-radius: 0 4px 4px 0;
  border-radius: 0 4px 4px 0;
}
#nav.wvcsd .input-append input:focus,
#header.wvcsd .input-append input:focus,
#nav.wvcsd .input-prepend input:focus,
#header.wvcsd .input-prepend input:focus,
#nav.wvcsd .input-append select:focus,
#header.wvcsd .input-append select:focus,
#nav.wvcsd .input-prepend select:focus,
#header.wvcsd .input-prepend select:focus,
#nav.wvcsd .input-append .uneditable-input:focus,
#header.wvcsd .input-append .uneditable-input:focus,
#nav.wvcsd .input-prepend .uneditable-input:focus,
#header.wvcsd .input-prepend .uneditable-input:focus {
  z-index: 2;
}
#nav.wvcsd .input-append .add-on,
#header.wvcsd .input-append .add-on,
#nav.wvcsd .input-prepend .add-on,
#header.wvcsd .input-prepend .add-on {
  display: inline-block;
  width: auto;
  height: 20px;
  min-width: 16px;
  padding: 4px 5px;
  font-size: 14px;
  font-weight: normal;
  line-height: 20px;
  text-align: center;
  text-shadow: 0 1px 0 #ffffff;
  background-color: #eeeeee;
  border: 1px solid #ccc;
}
#nav.wvcsd .input-append .add-on,
#header.wvcsd .input-append .add-on,
#nav.wvcsd .input-prepend .add-on,
#header.wvcsd .input-prepend .add-on,
#nav.wvcsd .input-append .btn,
#header.wvcsd .input-append .btn,
#nav.wvcsd .input-prepend .btn,
#header.wvcsd .input-prepend .btn,
#nav.wvcsd .input-append .btn-group > .dropdown-toggle,
#header.wvcsd .input-append .btn-group > .dropdown-toggle,
#nav.wvcsd .input-prepend .btn-group > .dropdown-toggle,
#header.wvcsd .input-prepend .btn-group > .dropdown-toggle {
  vertical-align: top;
  -webkit-border-radius: 0;
  -moz-border-radius: 0;
  border-radius: 0;
}
#nav.wvcsd .input-append .active,
#header.wvcsd .input-append .active,
#nav.wvcsd .input-prepend .active,
#header.wvcsd .input-prepend .active {
  background-color: #a9dba9;
  border-color: #46a546;
}
#nav.wvcsd .input-prepend .add-on,
#header.wvcsd .input-prepend .add-on,
#nav.wvcsd .input-prepend .btn,
#header.wvcsd .input-prepend .btn {
  margin-right: -1px;
}
#nav.wvcsd .input-prepend .add-on:first-child,
#header.wvcsd .input-prepend .add-on:first-child,
#nav.wvcsd .input-prepend .btn:first-child,
#header.wvcsd .input-prepend .btn:first-child {
  -webkit-border-radius: 4px 0 0 4px;
  -moz-border-radius: 4px 0 0 4px;
  border-radius: 4px 0 0 4px;
}
#nav.wvcsd .input-append input,
#header.wvcsd .input-append input,
#nav.wvcsd .input-append select,
#header.wvcsd .input-append select,
#nav.wvcsd .input-append .uneditable-input,
#header.wvcsd .input-append .uneditable-input {
  -webkit-border-radius: 4px 0 0 4px;
  -moz-border-radius: 4px 0 0 4px;
  border-radius: 4px 0 0 4px;
}
#nav.wvcsd .input-append input + .btn-group .btn:last-child,
#header.wvcsd .input-append input + .btn-group .btn:last-child,
#nav.wvcsd .input-append select + .btn-group .btn:last-child,
#header.wvcsd .input-append select + .btn-group .btn:last-child,
#nav.wvcsd .input-append .uneditable-input + .btn-group .btn:last-child,
#header.wvcsd .input-append .uneditable-input + .btn-group .btn:last-child {
  -webkit-border-radius: 0 4px 4px 0;
  -moz-border-radius: 0 4px 4px 0;
  border-radius: 0 4px 4px 0;
}
#nav.wvcsd .input-append .add-on,
#header.wvcsd .input-append .add-on,
#nav.wvcsd .input-append .btn,
#header.wvcsd .input-append .btn,
#nav.wvcsd .input-append .btn-group,
#header.wvcsd .input-append .btn-group {
  margin-left: -1px;
}
#nav.wvcsd .input-append .add-on:last-child,
#header.wvcsd .input-append .add-on:last-child,
#nav.wvcsd .input-append .btn:last-child,
#header.wvcsd .input-append .btn:last-child,
#nav.wvcsd .input-append .btn-group:last-child > .dropdown-toggle,
#header.wvcsd .input-append .btn-group:last-child > .dropdown-toggle {
  -webkit-border-radius: 0 4px 4px 0;
  -moz-border-radius: 0 4px 4px 0;
  border-radius: 0 4px 4px 0;
}
#nav.wvcsd .input-prepend.input-append input,
#header.wvcsd .input-prepend.input-append input,
#nav.wvcsd .input-prepend.input-append select,
#header.wvcsd .input-prepend.input-append select,
#nav.wvcsd .input-prepend.input-append .uneditable-input,
#header.wvcsd .input-prepend.input-append .uneditable-input {
  -webkit-border-radius: 0;
  -moz-border-radius: 0;
  border-radius: 0;
}
#nav.wvcsd .input-prepend.input-append input + .btn-group .btn,
#header.wvcsd .input-prepend.input-append input + .btn-group .btn,
#nav.wvcsd .input-prepend.input-append select + .btn-group .btn,
#header.wvcsd .input-prepend.input-append select + .btn-group .btn,
#nav.wvcsd .input-prepend.input-append .uneditable-input + .btn-group .btn,
#header.wvcsd .input-prepend.input-append .uneditable-input + .btn-group .btn {
  -webkit-border-radius: 0 4px 4px 0;
  -moz-border-radius: 0 4px 4px 0;
  border-radius: 0 4px 4px 0;
}
#nav.wvcsd .input-prepend.input-append .add-on:first-child,
#header.wvcsd .input-prepend.input-append .add-on:first-child,
#nav.wvcsd .input-prepend.input-append .btn:first-child,
#header.wvcsd .input-prepend.input-append .btn:first-child {
  margin-right: -1px;
  -webkit-border-radius: 4px 0 0 4px;
  -moz-border-radius: 4px 0 0 4px;
  border-radius: 4px 0 0 4px;
}
#nav.wvcsd .input-prepend.input-append .add-on:last-child,
#header.wvcsd .input-prepend.input-append .add-on:last-child,
#nav.wvcsd .input-prepend.input-append .btn:last-child,
#header.wvcsd .input-prepend.input-append .btn:last-child {
  margin-left: -1px;
  -webkit-border-radius: 0 4px 4px 0;
  -moz-border-radius: 0 4px 4px 0;
  border-radius: 0 4px 4px 0;
}
#nav.wvcsd .input-prepend.input-append .btn-group:first-child,
#header.wvcsd .input-prepend.input-append .btn-group:first-child {
  margin-left: 0;
}
#nav.wvcsd input.search-query,
#header.wvcsd input.search-query {
  padding-right: 14px;
  padding-right: 4px \9;
  padding-left: 14px;
  padding-left: 4px \9;
  /* IE7-8 doesn't have border-radius, so don't indent the padding */
  margin-bottom: 0;
  -webkit-border-radius: 15px;
  -moz-border-radius: 15px;
  border-radius: 15px;
}
#nav.wvcsd .form-search .input-append .search-query,
#header.wvcsd .form-search .input-append .search-query,
#nav.wvcsd .form-search .input-prepend .search-query,
#header.wvcsd .form-search .input-prepend .search-query {
  -webkit-border-radius: 0;
  -moz-border-radius: 0;
  border-radius: 0;
}
#nav.wvcsd .form-search .input-append .search-query,
#header.wvcsd .form-search .input-append .search-query {
  -webkit-border-radius: 14px 0 0 14px;
  -moz-border-radius: 14px 0 0 14px;
  border-radius: 14px 0 0 14px;
}
#nav.wvcsd .form-search .input-append .btn,
#header.wvcsd .form-search .input-append .btn {
  -webkit-border-radius: 0 14px 14px 0;
  -moz-border-radius: 0 14px 14px 0;
  border-radius: 0 14px 14px 0;
}
#nav.wvcsd .form-search .input-prepend .search-query,
#header.wvcsd .form-search .input-prepend .search-query {
  -webkit-border-radius: 0 14px 14px 0;
  -moz-border-radius: 0 14px 14px 0;
  border-radius: 0 14px 14px 0;
}
#nav.wvcsd .form-search .input-prepend .btn,
#header.wvcsd .form-search .input-prepend .btn {
  -webkit-border-radius: 14px 0 0 14px;
  -moz-border-radius: 14px 0 0 14px;
  border-radius: 14px 0 0 14px;
}
#nav.wvcsd .form-search input,
#header.wvcsd .form-search input,
#nav.wvcsd .form-inline input,
#header.wvcsd .form-inline input,
#nav.wvcsd .form-horizontal input,
#header.wvcsd .form-horizontal input,
#nav.wvcsd .form-search textarea,
#header.wvcsd .form-search textarea,
#nav.wvcsd .form-inline textarea,
#header.wvcsd .form-inline textarea,
#nav.wvcsd .form-horizontal textarea,
#header.wvcsd .form-horizontal textarea,
#nav.wvcsd .form-search select,
#header.wvcsd .form-search select,
#nav.wvcsd .form-inline select,
#header.wvcsd .form-inline select,
#nav.wvcsd .form-horizontal select,
#header.wvcsd .form-horizontal select,
#nav.wvcsd .form-search .help-inline,
#header.wvcsd .form-search .help-inline,
#nav.wvcsd .form-inline .help-inline,
#header.wvcsd .form-inline .help-inline,
#nav.wvcsd .form-horizontal .help-inline,
#header.wvcsd .form-horizontal .help-inline,
#nav.wvcsd .form-search .uneditable-input,
#header.wvcsd .form-search .uneditable-input,
#nav.wvcsd .form-inline .uneditable-input,
#header.wvcsd .form-inline .uneditable-input,
#nav.wvcsd .form-horizontal .uneditable-input,
#header.wvcsd .form-horizontal .uneditable-input,
#nav.wvcsd .form-search .input-prepend,
#header.wvcsd .form-search .input-prepend,
#nav.wvcsd .form-inline .input-prepend,
#header.wvcsd .form-inline .input-prepend,
#nav.wvcsd .form-horizontal .input-prepend,
#header.wvcsd .form-horizontal .input-prepend,
#nav.wvcsd .form-search .input-append,
#header.wvcsd .form-search .input-append,
#nav.wvcsd .form-inline .input-append,
#header.wvcsd .form-inline .input-append,
#nav.wvcsd .form-horizontal .input-append,
#header.wvcsd .form-horizontal .input-append {
  display: inline-block;
  *display: inline;
  /* IE7 inline-block hack */
  *zoom: 1;
  margin-bottom: 0;
  vertical-align: middle;
}
#nav.wvcsd .form-search .hide,
#header.wvcsd .form-search .hide,
#nav.wvcsd .form-inline .hide,
#header.wvcsd .form-inline .hide,
#nav.wvcsd .form-horizontal .hide,
#header.wvcsd .form-horizontal .hide {
  display: none;
}
#nav.wvcsd .form-search label,
#header.wvcsd .form-search label,
#nav.wvcsd .form-inline label,
#header.wvcsd .form-inline label,
#nav.wvcsd .form-search .btn-group,
#header.wvcsd .form-search .btn-group,
#nav.wvcsd .form-inline .btn-group,
#header.wvcsd .form-inline .btn-group {
  display: inline-block;
}
#nav.wvcsd .form-search .input-append,
#header.wvcsd .form-search .input-append,
#nav.wvcsd .form-inline .input-append,
#header.wvcsd .form-inline .input-append,
#nav.wvcsd .form-search .input-prepend,
#header.wvcsd .form-search .input-prepend,
#nav.wvcsd .form-inline .input-prepend,
#header.wvcsd .form-inline .input-prepend {
  margin-bottom: 0;
}
#nav.wvcsd .form-search .radio,
#header.wvcsd .form-search .radio,
#nav.wvcsd .form-search .checkbox,
#header.wvcsd .form-search .checkbox,
#nav.wvcsd .form-inline .radio,
#header.wvcsd .form-inline .radio,
#nav.wvcsd .form-inline .checkbox,
#header.wvcsd .form-inline .checkbox {
  padding-left: 0;
  margin-bottom: 0;
  vertical-align: middle;
}
#nav.wvcsd .form-search .radio input[type="radio"],
#header.wvcsd .form-search .radio input[type="radio"],
#nav.wvcsd .form-search .checkbox input[type="checkbox"],
#header.wvcsd .form-search .checkbox input[type="checkbox"],
#nav.wvcsd .form-inline .radio input[type="radio"],
#header.wvcsd .form-inline .radio input[type="radio"],
#nav.wvcsd .form-inline .checkbox input[type="checkbox"],
#header.wvcsd .form-inline .checkbox input[type="checkbox"] {
  float: left;
  margin-right: 3px;
  margin-left: 0;
}
#nav.wvcsd .control-group,
#header.wvcsd .control-group {
  margin-bottom: 10px;
}
#nav.wvcsd legend + .control-group,
#header.wvcsd legend + .control-group {
  margin-top: 20px;
  -webkit-margin-top-collapse: separate;
}
#nav.wvcsd .form-horizontal .control-group,
#header.wvcsd .form-horizontal .control-group {
  margin-bottom: 20px;
  *zoom: 1;
}
#nav.wvcsd .form-horizontal .control-group:before,
#header.wvcsd .form-horizontal .control-group:before,
#nav.wvcsd .form-horizontal .control-group:after,
#header.wvcsd .form-horizontal .control-group:after {
  display: table;
  content: "";
  line-height: 0;
}
#nav.wvcsd .form-horizontal .control-group:after,
#header.wvcsd .form-horizontal .control-group:after {
  clear: both;
}
#nav.wvcsd .form-horizontal .control-label,
#header.wvcsd .form-horizontal .control-label {
  float: left;
  width: 160px;
  padding-top: 5px;
  text-align: right;
}
#nav.wvcsd .form-horizontal .controls,
#header.wvcsd .form-horizontal .controls {
  *display: inline-block;
  *padding-left: 20px;
  margin-left: 180px;
  *margin-left: 0;
}
#nav.wvcsd .form-horizontal .controls:first-child,
#header.wvcsd .form-horizontal .controls:first-child {
  *padding-left: 180px;
}
#nav.wvcsd .form-horizontal .help-block,
#header.wvcsd .form-horizontal .help-block {
  margin-bottom: 0;
}
#nav.wvcsd .form-horizontal input + .help-block,
#header.wvcsd .form-horizontal input + .help-block,
#nav.wvcsd .form-horizontal select + .help-block,
#header.wvcsd .form-horizontal select + .help-block,
#nav.wvcsd .form-horizontal textarea + .help-block,
#header.wvcsd .form-horizontal textarea + .help-block,
#nav.wvcsd .form-horizontal .uneditable-input + .help-block,
#header.wvcsd .form-horizontal .uneditable-input + .help-block,
#nav.wvcsd .form-horizontal .input-prepend + .help-block,
#header.wvcsd .form-horizontal .input-prepend + .help-block,
#nav.wvcsd .form-horizontal .input-append + .help-block,
#header.wvcsd .form-horizontal .input-append + .help-block {
  margin-top: 10px;
}
#nav.wvcsd .form-horizontal .form-actions,
#header.wvcsd .form-horizontal .form-actions {
  padding-left: 180px;
}
#nav.wvcsd .row,
#header.wvcsd .row {
  margin-left: -20px;
  *zoom: 1;
}
#nav.wvcsd .row:before,
#header.wvcsd .row:before,
#nav.wvcsd .row:after,
#header.wvcsd .row:after {
  display: table;
  content: "";
  line-height: 0;
}
#nav.wvcsd .row:after,
#header.wvcsd .row:after {
  clear: both;
}
#nav.wvcsd [class*="span"],
#header.wvcsd [class*="span"] {
  float: left;
  min-height: 1px;
  margin-left: 20px;
}
#nav.wvcsd .container,
#header.wvcsd .container,
#nav.wvcsd .navbar-static-top .container,
#header.wvcsd .navbar-static-top .container,
#nav.wvcsd .navbar-fixed-top .container,
#header.wvcsd .navbar-fixed-top .container,
#nav.wvcsd .navbar-fixed-bottom .container,
#header.wvcsd .navbar-fixed-bottom .container {
  width: 940px;
}
#nav.wvcsd .span12,
#header.wvcsd .span12 {
  width: 940px;
}
#nav.wvcsd .span11,
#header.wvcsd .span11 {
  width: 860px;
}
#nav.wvcsd .span10,
#header.wvcsd .span10 {
  width: 780px;
}
#nav.wvcsd .span9,
#header.wvcsd .span9 {
  width: 700px;
}
#nav.wvcsd .span8,
#header.wvcsd .span8 {
  width: 620px;
}
#nav.wvcsd .span7,
#header.wvcsd .span7 {
  width: 540px;
}
#nav.wvcsd .span6,
#header.wvcsd .span6 {
  width: 460px;
}
#nav.wvcsd .span5,
#header.wvcsd .span5 {
  width: 380px;
}
#nav.wvcsd .span4,
#header.wvcsd .span4 {
  width: 300px;
}
#nav.wvcsd .span3,
#header.wvcsd .span3 {
  width: 220px;
}
#nav.wvcsd .span2,
#header.wvcsd .span2 {
  width: 140px;
}
#nav.wvcsd .span1,
#header.wvcsd .span1 {
  width: 60px;
}
#nav.wvcsd .offset12,
#header.wvcsd .offset12 {
  margin-left: 980px;
}
#nav.wvcsd .offset11,
#header.wvcsd .offset11 {
  margin-left: 900px;
}
#nav.wvcsd .offset10,
#header.wvcsd .offset10 {
  margin-left: 820px;
}
#nav.wvcsd .offset9,
#header.wvcsd .offset9 {
  margin-left: 740px;
}
#nav.wvcsd .offset8,
#header.wvcsd .offset8 {
  margin-left: 660px;
}
#nav.wvcsd .offset7,
#header.wvcsd .offset7 {
  margin-left: 580px;
}
#nav.wvcsd .offset6,
#header.wvcsd .offset6 {
  margin-left: 500px;
}
#nav.wvcsd .offset5,
#header.wvcsd .offset5 {
  margin-left: 420px;
}
#nav.wvcsd .offset4,
#header.wvcsd .offset4 {
  margin-left: 340px;
}
#nav.wvcsd .offset3,
#header.wvcsd .offset3 {
  margin-left: 260px;
}
#nav.wvcsd .offset2,
#header.wvcsd .offset2 {
  margin-left: 180px;
}
#nav.wvcsd .offset1,
#header.wvcsd .offset1 {
  margin-left: 100px;
}
#nav.wvcsd .row-fluid,
#header.wvcsd .row-fluid {
  width: 100%;
  *zoom: 1;
}
#nav.wvcsd .row-fluid:before,
#header.wvcsd .row-fluid:before,
#nav.wvcsd .row-fluid:after,
#header.wvcsd .row-fluid:after {
  display: table;
  content: "";
  line-height: 0;
}
#nav.wvcsd .row-fluid:after,
#header.wvcsd .row-fluid:after {
  clear: both;
}
#nav.wvcsd .row-fluid [class*="span"],
#header.wvcsd .row-fluid [class*="span"] {
  display: block;
  width: 100%;
  min-height: 30px;
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
  float: left;
  margin-left: 2.127659574468085%;
  *margin-left: 2.074468085106383%;
}
#nav.wvcsd .row-fluid [class*="span"]:first-child,
#header.wvcsd .row-fluid [class*="span"]:first-child {
  margin-left: 0;
}
#nav.wvcsd .row-fluid .controls-row [class*="span"] + [class*="span"],
#header.wvcsd .row-fluid .controls-row [class*="span"] + [class*="span"] {
  margin-left: 2.127659574468085%;
}
#nav.wvcsd .row-fluid .span12,
#header.wvcsd .row-fluid .span12 {
  width: 100%;
  *width: 99.94680851063829%;
}
#nav.wvcsd .row-fluid .span11,
#header.wvcsd .row-fluid .span11 {
  width: 91.48936170212765%;
  *width: 91.43617021276594%;
}
#nav.wvcsd .row-fluid .span10,
#header.wvcsd .row-fluid .span10 {
  width: 82.97872340425532%;
  *width: 82.92553191489361%;
}
#nav.wvcsd .row-fluid .span9,
#header.wvcsd .row-fluid .span9 {
  width: 74.46808510638297%;
  *width: 74.41489361702126%;
}
#nav.wvcsd .row-fluid .span8,
#header.wvcsd .row-fluid .span8 {
  width: 65.95744680851064%;
  *width: 65.90425531914893%;
}
#nav.wvcsd .row-fluid .span7,
#header.wvcsd .row-fluid .span7 {
  width: 57.44680851063829%;
  *width: 57.39361702127659%;
}
#nav.wvcsd .row-fluid .span6,
#header.wvcsd .row-fluid .span6 {
  width: 48.93617021276595%;
  *width: 48.88297872340425%;
}
#nav.wvcsd .row-fluid .span5,
#header.wvcsd .row-fluid .span5 {
  width: 40.42553191489362%;
  *width: 40.37234042553192%;
}
#nav.wvcsd .row-fluid .span4,
#header.wvcsd .row-fluid .span4 {
  width: 31.914893617021278%;
  *width: 31.861702127659576%;
}
#nav.wvcsd .row-fluid .span3,
#header.wvcsd .row-fluid .span3 {
  width: 23.404255319148934%;
  *width: 23.351063829787233%;
}
#nav.wvcsd .row-fluid .span2,
#header.wvcsd .row-fluid .span2 {
  width: 14.893617021276595%;
  *width: 14.840425531914894%;
}
#nav.wvcsd .row-fluid .span1,
#header.wvcsd .row-fluid .span1 {
  width: 6.382978723404255%;
  *width: 6.329787234042553%;
}
#nav.wvcsd .row-fluid .offset12,
#header.wvcsd .row-fluid .offset12 {
  margin-left: 104.25531914893617%;
  *margin-left: 104.14893617021275%;
}
#nav.wvcsd .row-fluid .offset12:first-child,
#header.wvcsd .row-fluid .offset12:first-child {
  margin-left: 102.12765957446808%;
  *margin-left: 102.02127659574467%;
}
#nav.wvcsd .row-fluid .offset11,
#header.wvcsd .row-fluid .offset11 {
  margin-left: 95.74468085106382%;
  *margin-left: 95.6382978723404%;
}
#nav.wvcsd .row-fluid .offset11:first-child,
#header.wvcsd .row-fluid .offset11:first-child {
  margin-left: 93.61702127659574%;
  *margin-left: 93.51063829787232%;
}
#nav.wvcsd .row-fluid .offset10,
#header.wvcsd .row-fluid .offset10 {
  margin-left: 87.23404255319149%;
  *margin-left: 87.12765957446807%;
}
#nav.wvcsd .row-fluid .offset10:first-child,
#header.wvcsd .row-fluid .offset10:first-child {
  margin-left: 85.1063829787234%;
  *margin-left: 84.99999999999999%;
}
#nav.wvcsd .row-fluid .offset9,
#header.wvcsd .row-fluid .offset9 {
  margin-left: 78.72340425531914%;
  *margin-left: 78.61702127659572%;
}
#nav.wvcsd .row-fluid .offset9:first-child,
#header.wvcsd .row-fluid .offset9:first-child {
  margin-left: 76.59574468085106%;
  *margin-left: 76.48936170212764%;
}
#nav.wvcsd .row-fluid .offset8,
#header.wvcsd .row-fluid .offset8 {
  margin-left: 70.2127659574468%;
  *margin-left: 70.10638297872339%;
}
#nav.wvcsd .row-fluid .offset8:first-child,
#header.wvcsd .row-fluid .offset8:first-child {
  margin-left: 68.08510638297872%;
  *margin-left: 67.9787234042553%;
}
#nav.wvcsd .row-fluid .offset7,
#header.wvcsd .row-fluid .offset7 {
  margin-left: 61.70212765957446%;
  *margin-left: 61.59574468085106%;
}
#nav.wvcsd .row-fluid .offset7:first-child,
#header.wvcsd .row-fluid .offset7:first-child {
  margin-left: 59.574468085106375%;
  *margin-left: 59.46808510638297%;
}
#nav.wvcsd .row-fluid .offset6,
#header.wvcsd .row-fluid .offset6 {
  margin-left: 53.191489361702125%;
  *margin-left: 53.085106382978715%;
}
#nav.wvcsd .row-fluid .offset6:first-child,
#header.wvcsd .row-fluid .offset6:first-child {
  margin-left: 51.063829787234035%;
  *margin-left: 50.95744680851063%;
}
#nav.wvcsd .row-fluid .offset5,
#header.wvcsd .row-fluid .offset5 {
  margin-left: 44.68085106382979%;
  *margin-left: 44.57446808510638%;
}
#nav.wvcsd .row-fluid .offset5:first-child,
#header.wvcsd .row-fluid .offset5:first-child {
  margin-left: 42.5531914893617%;
  *margin-left: 42.4468085106383%;
}
#nav.wvcsd .row-fluid .offset4,
#header.wvcsd .row-fluid .offset4 {
  margin-left: 36.170212765957444%;
  *margin-left: 36.06382978723405%;
}
#nav.wvcsd .row-fluid .offset4:first-child,
#header.wvcsd .row-fluid .offset4:first-child {
  margin-left: 34.04255319148936%;
  *margin-left: 33.93617021276596%;
}
#nav.wvcsd .row-fluid .offset3,
#header.wvcsd .row-fluid .offset3 {
  margin-left: 27.659574468085104%;
  *margin-left: 27.5531914893617%;
}
#nav.wvcsd .row-fluid .offset3:first-child,
#header.wvcsd .row-fluid .offset3:first-child {
  margin-left: 25.53191489361702%;
  *margin-left: 25.425531914893618%;
}
#nav.wvcsd .row-fluid .offset2,
#header.wvcsd .row-fluid .offset2 {
  margin-left: 19.148936170212764%;
  *margin-left: 19.04255319148936%;
}
#nav.wvcsd .row-fluid .offset2:first-child,
#header.wvcsd .row-fluid .offset2:first-child {
  margin-left: 17.02127659574468%;
  *margin-left: 16.914893617021278%;
}
#nav.wvcsd .row-fluid .offset1,
#header.wvcsd .row-fluid .offset1 {
  margin-left: 10.638297872340425%;
  *margin-left: 10.53191489361702%;
}
#nav.wvcsd .row-fluid .offset1:first-child,
#header.wvcsd .row-fluid .offset1:first-child {
  margin-left: 8.51063829787234%;
  *margin-left: 8.404255319148938%;
}
#nav.wvcsd [class*="span"].hide,
#header.wvcsd [class*="span"].hide,
#nav.wvcsd .row-fluid [class*="span"].hide,
#header.wvcsd .row-fluid [class*="span"].hide {
  display: none;
}
#nav.wvcsd [class*="span"].pull-right,
#header.wvcsd [class*="span"].pull-right,
#nav.wvcsd .row-fluid [class*="span"].pull-right,
#header.wvcsd .row-fluid [class*="span"].pull-right {
  float: right;
}
#nav.wvcsd .hero-unit,
#header.wvcsd .hero-unit {
  padding: 60px;
  margin-bottom: 30px;
  font-size: 18px;
  font-weight: 200;
  line-height: 30px;
  color: inherit;
  background-color: #eeeeee;
  -webkit-border-radius: 6px;
  -moz-border-radius: 6px;
  border-radius: 6px;
}
#nav.wvcsd .hero-unit h1,
#header.wvcsd .hero-unit h1 {
  margin-bottom: 0;
  font-size: 60px;
  line-height: 1;
  color: inherit;
  letter-spacing: -1px;
}
#nav.wvcsd .hero-unit li,
#header.wvcsd .hero-unit li {
  line-height: 30px;
}
#nav.wvcsd .label,
#header.wvcsd .label,
#nav.wvcsd .badge,
#header.wvcsd .badge {
  display: inline-block;
  padding: 2px 4px;
  font-size: 11.844px;
  font-weight: bold;
  line-height: 14px;
  color: #ffffff;
  vertical-align: baseline;
  white-space: nowrap;
  text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25);
  background-color: #999999;
}
#nav.wvcsd .label,
#header.wvcsd .label {
  -webkit-border-radius: 3px;
  -moz-border-radius: 3px;
  border-radius: 3px;
}
#nav.wvcsd .badge,
#header.wvcsd .badge {
  padding-left: 9px;
  padding-right: 9px;
  -webkit-border-radius: 9px;
  -moz-border-radius: 9px;
  border-radius: 9px;
}
#nav.wvcsd .label:empty,
#header.wvcsd .label:empty,
#nav.wvcsd .badge:empty,
#header.wvcsd .badge:empty {
  display: none;
}
#nav.wvcsd a.label:hover,
#header.wvcsd a.label:hover,
#nav.wvcsd a.label:focus,
#header.wvcsd a.label:focus,
#nav.wvcsd a.badge:hover,
#header.wvcsd a.badge:hover,
#nav.wvcsd a.badge:focus,
#header.wvcsd a.badge:focus {
  color: #ffffff;
  text-decoration: none;
  cursor: pointer;
}
#nav.wvcsd .label-important,
#header.wvcsd .label-important,
#nav.wvcsd .badge-important,
#header.wvcsd .badge-important {
  background-color: #b94a48;
}
#nav.wvcsd .label-important[href],
#header.wvcsd .label-important[href],
#nav.wvcsd .badge-important[href],
#header.wvcsd .badge-important[href] {
  background-color: #953b39;
}
#nav.wvcsd .label-warning,
#header.wvcsd .label-warning,
#nav.wvcsd .badge-warning,
#header.wvcsd .badge-warning {
  background-color: #f89406;
}
#nav.wvcsd .label-warning[href],
#header.wvcsd .label-warning[href],
#nav.wvcsd .badge-warning[href],
#header.wvcsd .badge-warning[href] {
  background-color: #c67605;
}
#nav.wvcsd .label-success,
#header.wvcsd .label-success,
#nav.wvcsd .badge-success,
#header.wvcsd .badge-success {
  background-color: #468847;
}
#nav.wvcsd .label-success[href],
#header.wvcsd .label-success[href],
#nav.wvcsd .badge-success[href],
#header.wvcsd .badge-success[href] {
  background-color: #356635;
}
#nav.wvcsd .label-info,
#header.wvcsd .label-info,
#nav.wvcsd .badge-info,
#header.wvcsd .badge-info {
  background-color: #3a87ad;
}
#nav.wvcsd .label-info[href],
#header.wvcsd .label-info[href],
#nav.wvcsd .badge-info[href],
#header.wvcsd .badge-info[href] {
  background-color: #2d6987;
}
#nav.wvcsd .label-inverse,
#header.wvcsd .label-inverse,
#nav.wvcsd .badge-inverse,
#header.wvcsd .badge-inverse {
  background-color: #333333;
}
#nav.wvcsd .label-inverse[href],
#header.wvcsd .label-inverse[href],
#nav.wvcsd .badge-inverse[href],
#header.wvcsd .badge-inverse[href] {
  background-color: #1a1a1a;
}
#nav.wvcsd .btn .label,
#header.wvcsd .btn .label,
#nav.wvcsd .btn .badge,
#header.wvcsd .btn .badge {
  position: relative;
  top: -1px;
}
#nav.wvcsd .btn-mini .label,
#header.wvcsd .btn-mini .label,
#nav.wvcsd .btn-mini .badge,
#header.wvcsd .btn-mini .badge {
  top: 0;
}
#nav.wvcsd .container,
#header.wvcsd .container {
  margin-right: auto;
  margin-left: auto;
  *zoom: 1;
}
#nav.wvcsd .container:before,
#header.wvcsd .container:before,
#nav.wvcsd .container:after,
#header.wvcsd .container:after {
  display: table;
  content: "";
  line-height: 0;
}
#nav.wvcsd .container:after,
#header.wvcsd .container:after {
  clear: both;
}
#nav.wvcsd .container-fluid,
#header.wvcsd .container-fluid {
  padding-right: 20px;
  padding-left: 20px;
  *zoom: 1;
}
#nav.wvcsd .container-fluid:before,
#header.wvcsd .container-fluid:before,
#nav.wvcsd .container-fluid:after,
#header.wvcsd .container-fluid:after {
  display: table;
  content: "";
  line-height: 0;
}
#nav.wvcsd .container-fluid:after,
#header.wvcsd .container-fluid:after {
  clear: both;
}
#nav.wvcsd .media,
#header.wvcsd .media,
#nav.wvcsd .media-body,
#header.wvcsd .media-body {
  overflow: hidden;
  *overflow: visible;
  zoom: 1;
}
#nav.wvcsd .media,
#header.wvcsd .media,
#nav.wvcsd .media .media,
#header.wvcsd .media .media {
  margin-top: 15px;
}
#nav.wvcsd .media:first-child,
#header.wvcsd .media:first-child {
  margin-top: 0;
}
#nav.wvcsd .media-object,
#header.wvcsd .media-object {
  display: block;
}
#nav.wvcsd .media-heading,
#header.wvcsd .media-heading {
  margin: 0 0 5px;
}
#nav.wvcsd .media > .pull-left,
#header.wvcsd .media > .pull-left {
  margin-right: 10px;
}
#nav.wvcsd .media > .pull-right,
#header.wvcsd .media > .pull-right {
  margin-left: 10px;
}
#nav.wvcsd .media-list,
#header.wvcsd .media-list {
  margin-left: 0;
  list-style: none;
}
#nav.wvcsd .modal-backdrop,
#header.wvcsd .modal-backdrop {
  position: fixed;
  top: 0;
  right: 0;
  bottom: 0;
  left: 0;
  z-index: 1040;
  background-color: #000000;
}
#nav.wvcsd .modal-backdrop.fade,
#header.wvcsd .modal-backdrop.fade {
  opacity: 0;
}
#nav.wvcsd .modal-backdrop,
#header.wvcsd .modal-backdrop,
#nav.wvcsd .modal-backdrop.fade.in,
#header.wvcsd .modal-backdrop.fade.in {
  opacity: 0;
  filter: alpha(opacity=0);
}
#nav.wvcsd .modal,
#header.wvcsd .modal {
  position: fixed;
  top: 10%;
  left: 50%;
  z-index: 1050;
  width: 560px;
  margin-left: -280px;
  background-color: #ffffff;
  border: 1px solid #999;
  border: 1px solid rgba(0, 0, 0, 0.3);
  *border: 1px solid #999;
  /* IE6-7 */
  -webkit-border-radius: 6px;
  -moz-border-radius: 6px;
  border-radius: 6px;
  -webkit-box-shadow: 0 3px 7px rgba(0, 0, 0, 0.3);
  -moz-box-shadow: 0 3px 7px rgba(0, 0, 0, 0.3);
  box-shadow: 0 3px 7px rgba(0, 0, 0, 0.3);
  -webkit-background-clip: padding-box;
  -moz-background-clip: padding-box;
  background-clip: padding-box;
  outline: none;
}
#nav.wvcsd .modal.fade,
#header.wvcsd .modal.fade {
  -webkit-transition: opacity .3s linear, top .3s ease-out;
  -moz-transition: opacity .3s linear, top .3s ease-out;
  -o-transition: opacity .3s linear, top .3s ease-out;
  transition: opacity .3s linear, top .3s ease-out;
  top: -25%;
}
#nav.wvcsd .modal.fade.in,
#header.wvcsd .modal.fade.in {
  top: 10%;
}
#nav.wvcsd .modal-header,
#header.wvcsd .modal-header {
  padding: 9px 15px;
  border-bottom: 1px solid #eee;
}
#nav.wvcsd .modal-header .close,
#header.wvcsd .modal-header .close {
  margin-top: 2px;
}
#nav.wvcsd .modal-header h3,
#header.wvcsd .modal-header h3 {
  margin: 0;
  line-height: 30px;
}
#nav.wvcsd .modal-body,
#header.wvcsd .modal-body {
  position: relative;
  overflow-y: auto;
  max-height: 400px;
  padding: 15px;
}
#nav.wvcsd .modal-form,
#header.wvcsd .modal-form {
  margin-bottom: 0;
}
#nav.wvcsd .modal-footer,
#header.wvcsd .modal-footer {
  padding: 14px 15px 15px;
  margin-bottom: 0;
  text-align: right;
  background-color: #f5f5f5;
  border-top: 1px solid #ddd;
  -webkit-border-radius: 0 0 6px 6px;
  -moz-border-radius: 0 0 6px 6px;
  border-radius: 0 0 6px 6px;
  -webkit-box-shadow: inset 0 1px 0 #ffffff;
  -moz-box-shadow: inset 0 1px 0 #ffffff;
  box-shadow: inset 0 1px 0 #ffffff;
  *zoom: 1;
}
#nav.wvcsd .modal-footer:before,
#header.wvcsd .modal-footer:before,
#nav.wvcsd .modal-footer:after,
#header.wvcsd .modal-footer:after {
  display: table;
  content: "";
  line-height: 0;
}
#nav.wvcsd .modal-footer:after,
#header.wvcsd .modal-footer:after {
  clear: both;
}
#nav.wvcsd .modal-footer .btn + .btn,
#header.wvcsd .modal-footer .btn + .btn {
  margin-left: 5px;
  margin-bottom: 0;
}
#nav.wvcsd .modal-footer .btn-group .btn + .btn,
#header.wvcsd .modal-footer .btn-group .btn + .btn {
  margin-left: -1px;
}
#nav.wvcsd .modal-footer .btn-block + .btn-block,
#header.wvcsd .modal-footer .btn-block + .btn-block {
  margin-left: 0;
}
#nav.wvcsd .navbar,
#header.wvcsd .navbar {
  overflow: visible;
  margin-bottom: 20px;
  *position: relative;
  *z-index: 2;
}
#nav.wvcsd .navbar-inner,
#header.wvcsd .navbar-inner {
  min-height: 40px;
  padding-left: 20px;
  padding-right: 20px;
  background-color: #fafafa;
  background-image: -moz-linear-gradient(top, #ffffff, #f2f2f2);
  background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#ffffff), to(#f2f2f2));
  background-image: -webkit-linear-gradient(top, #ffffff, #f2f2f2);
  background-image: -o-linear-gradient(top, #ffffff, #f2f2f2);
  background-image: linear-gradient(to bottom, #ffffff, #f2f2f2);
  background-repeat: repeat-x;
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffffffff', endColorstr='#fff2f2f2', GradientType=0);
  border: 1px solid #d4d4d4;
  -webkit-border-radius: 4px;
  -moz-border-radius: 4px;
  border-radius: 4px;
  -webkit-box-shadow: 0 1px 4px rgba(0, 0, 0, 0.065);
  -moz-box-shadow: 0 1px 4px rgba(0, 0, 0, 0.065);
  box-shadow: 0 1px 4px rgba(0, 0, 0, 0.065);
  *zoom: 1;
}
#nav.wvcsd .navbar-inner:before,
#header.wvcsd .navbar-inner:before,
#nav.wvcsd .navbar-inner:after,
#header.wvcsd .navbar-inner:after {
  display: table;
  content: "";
  line-height: 0;
}
#nav.wvcsd .navbar-inner:after,
#header.wvcsd .navbar-inner:after {
  clear: both;
}
#nav.wvcsd .navbar .container,
#header.wvcsd .navbar .container {
  width: auto;
}
#nav.wvcsd .nav-collapse.collapse,
#header.wvcsd .nav-collapse.collapse {
  height: auto;
  overflow: visible;
}
#nav.wvcsd .navbar .brand,
#header.wvcsd .navbar .brand {
  float: left;
  display: block;
  padding: 10px 20px 10px;
  margin-left: -20px;
  font-size: 20px;
  font-weight: 200;
  color: #777777;
  text-shadow: 0 1px 0 #ffffff;
}
#nav.wvcsd .navbar .brand:hover,
#header.wvcsd .navbar .brand:hover,
#nav.wvcsd .navbar .brand:focus,
#header.wvcsd .navbar .brand:focus {
  text-decoration: none;
}
#nav.wvcsd .navbar-text,
#header.wvcsd .navbar-text {
  margin-bottom: 0;
  line-height: 40px;
  color: #777777;
}
#nav.wvcsd .navbar-link,
#header.wvcsd .navbar-link {
  color: #777777;
}
#nav.wvcsd .navbar-link:hover,
#header.wvcsd .navbar-link:hover,
#nav.wvcsd .navbar-link:focus,
#header.wvcsd .navbar-link:focus {
  color: #333333;
}
#nav.wvcsd .navbar .divider-vertical,
#header.wvcsd .navbar .divider-vertical {
  height: 40px;
  margin: 0 9px;
  border-left: 1px solid #f2f2f2;
  border-right: 1px solid #ffffff;
}
#nav.wvcsd .navbar .btn,
#header.wvcsd .navbar .btn,
#nav.wvcsd .navbar .btn-group,
#header.wvcsd .navbar .btn-group {
  margin-top: 5px;
}
#nav.wvcsd .navbar .btn-group .btn,
#header.wvcsd .navbar .btn-group .btn,
#nav.wvcsd .navbar .input-prepend .btn,
#header.wvcsd .navbar .input-prepend .btn,
#nav.wvcsd .navbar .input-append .btn,
#header.wvcsd .navbar .input-append .btn,
#nav.wvcsd .navbar .input-prepend .btn-group,
#header.wvcsd .navbar .input-prepend .btn-group,
#nav.wvcsd .navbar .input-append .btn-group,
#header.wvcsd .navbar .input-append .btn-group {
  margin-top: 0;
}
#nav.wvcsd .navbar-form,
#header.wvcsd .navbar-form {
  margin-bottom: 0;
  *zoom: 1;
}
#nav.wvcsd .navbar-form:before,
#header.wvcsd .navbar-form:before,
#nav.wvcsd .navbar-form:after,
#header.wvcsd .navbar-form:after {
  display: table;
  content: "";
  line-height: 0;
}
#nav.wvcsd .navbar-form:after,
#header.wvcsd .navbar-form:after {
  clear: both;
}
#nav.wvcsd .navbar-form input,
#header.wvcsd .navbar-form input,
#nav.wvcsd .navbar-form select,
#header.wvcsd .navbar-form select,
#nav.wvcsd .navbar-form .radio,
#header.wvcsd .navbar-form .radio,
#nav.wvcsd .navbar-form .checkbox,
#header.wvcsd .navbar-form .checkbox {
  margin-top: 5px;
}
#nav.wvcsd .navbar-form input,
#header.wvcsd .navbar-form input,
#nav.wvcsd .navbar-form select,
#header.wvcsd .navbar-form select,
#nav.wvcsd .navbar-form .btn,
#header.wvcsd .navbar-form .btn {
  display: inline-block;
  margin-bottom: 0;
}
#nav.wvcsd .navbar-form input[type="image"],
#header.wvcsd .navbar-form input[type="image"],
#nav.wvcsd .navbar-form input[type="checkbox"],
#header.wvcsd .navbar-form input[type="checkbox"],
#nav.wvcsd .navbar-form input[type="radio"],
#header.wvcsd .navbar-form input[type="radio"] {
  margin-top: 3px;
}
#nav.wvcsd .navbar-form .input-append,
#header.wvcsd .navbar-form .input-append,
#nav.wvcsd .navbar-form .input-prepend,
#header.wvcsd .navbar-form .input-prepend {
  margin-top: 5px;
  white-space: nowrap;
}
#nav.wvcsd .navbar-form .input-append input,
#header.wvcsd .navbar-form .input-append input,
#nav.wvcsd .navbar-form .input-prepend input,
#header.wvcsd .navbar-form .input-prepend input {
  margin-top: 0;
}
#nav.wvcsd .navbar-search,
#header.wvcsd .navbar-search {
  position: relative;
  float: left;
  margin-top: 5px;
  margin-bottom: 0;
}
#nav.wvcsd .navbar-search .search-query,
#header.wvcsd .navbar-search .search-query {
  margin-bottom: 0;
  padding: 4px 14px;
  font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
  font-size: 13px;
  font-weight: normal;
  line-height: 1;
  -webkit-border-radius: 15px;
  -moz-border-radius: 15px;
  border-radius: 15px;
}
#nav.wvcsd .navbar-static-top,
#header.wvcsd .navbar-static-top {
  position: static;
  margin-bottom: 0;
}
#nav.wvcsd .navbar-static-top .navbar-inner,
#header.wvcsd .navbar-static-top .navbar-inner {
  -webkit-border-radius: 0;
  -moz-border-radius: 0;
  border-radius: 0;
}
#nav.wvcsd .navbar-fixed-top,
#header.wvcsd .navbar-fixed-top,
#nav.wvcsd .navbar-fixed-bottom,
#header.wvcsd .navbar-fixed-bottom {
  position: fixed;
  right: 0;
  left: 0;
  z-index: 1030;
  margin-bottom: 0;
}
#nav.wvcsd .navbar-fixed-top .navbar-inner,
#header.wvcsd .navbar-fixed-top .navbar-inner,
#nav.wvcsd .navbar-static-top .navbar-inner,
#header.wvcsd .navbar-static-top .navbar-inner {
  border-width: 0 0 1px;
}
#nav.wvcsd .navbar-fixed-bottom .navbar-inner,
#header.wvcsd .navbar-fixed-bottom .navbar-inner {
  border-width: 1px 0 0;
}
#nav.wvcsd .navbar-fixed-top .navbar-inner,
#header.wvcsd .navbar-fixed-top .navbar-inner,
#nav.wvcsd .navbar-fixed-bottom .navbar-inner,
#header.wvcsd .navbar-fixed-bottom .navbar-inner {
  padding-left: 0;
  padding-right: 0;
  -webkit-border-radius: 0;
  -moz-border-radius: 0;
  border-radius: 0;
}
#nav.wvcsd .navbar-static-top .container,
#header.wvcsd .navbar-static-top .container,
#nav.wvcsd .navbar-fixed-top .container,
#header.wvcsd .navbar-fixed-top .container,
#nav.wvcsd .navbar-fixed-bottom .container,
#header.wvcsd .navbar-fixed-bottom .container {
  width: 940px;
}
#nav.wvcsd .navbar-fixed-top,
#header.wvcsd .navbar-fixed-top {
  top: 0;
}
#nav.wvcsd .navbar-fixed-top .navbar-inner,
#header.wvcsd .navbar-fixed-top .navbar-inner,
#nav.wvcsd .navbar-static-top .navbar-inner,
#header.wvcsd .navbar-static-top .navbar-inner {
  -webkit-box-shadow: 0 1px 10px rgba(0,0,0,.1);
  -moz-box-shadow: 0 1px 10px rgba(0,0,0,.1);
  box-shadow: 0 1px 10px rgba(0,0,0,.1);
}
#nav.wvcsd .navbar-fixed-bottom,
#header.wvcsd .navbar-fixed-bottom {
  bottom: 0;
}
#nav.wvcsd .navbar-fixed-bottom .navbar-inner,
#header.wvcsd .navbar-fixed-bottom .navbar-inner {
  -webkit-box-shadow: 0 -1px 10px rgba(0,0,0,.1);
  -moz-box-shadow: 0 -1px 10px rgba(0,0,0,.1);
  box-shadow: 0 -1px 10px rgba(0,0,0,.1);
}
#nav.wvcsd .navbar .nav,
#header.wvcsd .navbar .nav {
  position: relative;
  left: 0;
  display: block;
  float: left;
  margin: 0 10px 0 0;
}
#nav.wvcsd .navbar .nav.pull-right,
#header.wvcsd .navbar .nav.pull-right {
  float: right;
  margin-right: 0;
}
#nav.wvcsd .navbar .nav > li,
#header.wvcsd .navbar .nav > li {
  float: left;
}
#nav.wvcsd .navbar .nav > li > a,
#header.wvcsd .navbar .nav > li > a {
  float: none;
  padding: 10px 15px 10px;
  color: #777777;
  text-decoration: none;
  text-shadow: 0 1px 0 #ffffff;
}
#nav.wvcsd .navbar .nav .dropdown-toggle .caret,
#header.wvcsd .navbar .nav .dropdown-toggle .caret {
  margin-top: 8px;
}
#nav.wvcsd .navbar .nav > li > a:focus,
#header.wvcsd .navbar .nav > li > a:focus,
#nav.wvcsd .navbar .nav > li > a:hover,
#header.wvcsd .navbar .nav > li > a:hover {
  background-color: transparent;
  color: #333333;
  text-decoration: none;
}
#nav.wvcsd .navbar .nav > .active > a,
#header.wvcsd .navbar .nav > .active > a,
#nav.wvcsd .navbar .nav > .active > a:hover,
#header.wvcsd .navbar .nav > .active > a:hover,
#nav.wvcsd .navbar .nav > .active > a:focus,
#header.wvcsd .navbar .nav > .active > a:focus {
  color: #555555;
  text-decoration: none;
  background-color: #e5e5e5;
  -webkit-box-shadow: inset 0 3px 8px rgba(0, 0, 0, 0.125);
  -moz-box-shadow: inset 0 3px 8px rgba(0, 0, 0, 0.125);
  box-shadow: inset 0 3px 8px rgba(0, 0, 0, 0.125);
}
#nav.wvcsd .navbar .btn-navbar,
#header.wvcsd .navbar .btn-navbar {
  display: none;
  float: right;
  padding: 7px 10px;
  margin-left: 5px;
  margin-right: 5px;
  color: #ffffff;
  text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25);
  background-color: #ededed;
  background-image: -moz-linear-gradient(top, #f2f2f2, #e5e5e5);
  background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#f2f2f2), to(#e5e5e5));
  background-image: -webkit-linear-gradient(top, #f2f2f2, #e5e5e5);
  background-image: -o-linear-gradient(top, #f2f2f2, #e5e5e5);
  background-image: linear-gradient(to bottom, #f2f2f2, #e5e5e5);
  background-repeat: repeat-x;
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#fff2f2f2', endColorstr='#ffe5e5e5', GradientType=0);
  border-color: #e5e5e5 #e5e5e5 #bfbfbf;
  border-color: rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.25);
  *background-color: #e5e5e5;
  /* Darken IE7 buttons by default so they stand out more given they won't have borders */
  filter: progid:DXImageTransform.Microsoft.gradient(enabled = false);
  -webkit-box-shadow: inset 0 1px 0 rgba(255,255,255,.1), 0 1px 0 rgba(255,255,255,.075);
  -moz-box-shadow: inset 0 1px 0 rgba(255,255,255,.1), 0 1px 0 rgba(255,255,255,.075);
  box-shadow: inset 0 1px 0 rgba(255,255,255,.1), 0 1px 0 rgba(255,255,255,.075);
}
#nav.wvcsd .navbar .btn-navbar:hover,
#header.wvcsd .navbar .btn-navbar:hover,
#nav.wvcsd .navbar .btn-navbar:focus,
#header.wvcsd .navbar .btn-navbar:focus,
#nav.wvcsd .navbar .btn-navbar:active,
#header.wvcsd .navbar .btn-navbar:active,
#nav.wvcsd .navbar .btn-navbar.active,
#header.wvcsd .navbar .btn-navbar.active,
#nav.wvcsd .navbar .btn-navbar.disabled,
#header.wvcsd .navbar .btn-navbar.disabled,
#nav.wvcsd .navbar .btn-navbar[disabled],
#header.wvcsd .navbar .btn-navbar[disabled] {
  color: #ffffff;
  background-color: #e5e5e5;
  *background-color: #d9d9d9;
}
#nav.wvcsd .navbar .btn-navbar:active,
#header.wvcsd .navbar .btn-navbar:active,
#nav.wvcsd .navbar .btn-navbar.active,
#header.wvcsd .navbar .btn-navbar.active {
  background-color: #cccccc \9;
}
#nav.wvcsd .navbar .btn-navbar .icon-bar,
#header.wvcsd .navbar .btn-navbar .icon-bar {
  display: block;
  width: 18px;
  height: 2px;
  background-color: #f5f5f5;
  -webkit-border-radius: 1px;
  -moz-border-radius: 1px;
  border-radius: 1px;
  -webkit-box-shadow: 0 1px 0 rgba(0, 0, 0, 0.25);
  -moz-box-shadow: 0 1px 0 rgba(0, 0, 0, 0.25);
  box-shadow: 0 1px 0 rgba(0, 0, 0, 0.25);
}
#nav.wvcsd .btn-navbar .icon-bar + .icon-bar,
#header.wvcsd .btn-navbar .icon-bar + .icon-bar {
  margin-top: 3px;
}
#nav.wvcsd .navbar .nav > li > .dropdown-menu:before,
#header.wvcsd .navbar .nav > li > .dropdown-menu:before {
  content: '';
  display: inline-block;
  border-left: 7px solid transparent;
  border-right: 7px solid transparent;
  border-bottom: 7px solid #ccc;
  border-bottom-color: rgba(0, 0, 0, 0.2);
  position: absolute;
  top: -7px;
  left: 9px;
}
#nav.wvcsd .navbar .nav > li > .dropdown-menu:after,
#header.wvcsd .navbar .nav > li > .dropdown-menu:after {
  content: '';
  display: inline-block;
  border-left: 6px solid transparent;
  border-right: 6px solid transparent;
  border-bottom: 6px solid #ffffff;
  position: absolute;
  top: -6px;
  left: 10px;
}
#nav.wvcsd .navbar-fixed-bottom .nav > li > .dropdown-menu:before,
#header.wvcsd .navbar-fixed-bottom .nav > li > .dropdown-menu:before {
  border-top: 7px solid #ccc;
  border-top-color: rgba(0, 0, 0, 0.2);
  border-bottom: 0;
  bottom: -7px;
  top: auto;
}
#nav.wvcsd .navbar-fixed-bottom .nav > li > .dropdown-menu:after,
#header.wvcsd .navbar-fixed-bottom .nav > li > .dropdown-menu:after {
  border-top: 6px solid #ffffff;
  border-bottom: 0;
  bottom: -6px;
  top: auto;
}
#nav.wvcsd .navbar .nav li.dropdown > a:hover .caret,
#header.wvcsd .navbar .nav li.dropdown > a:hover .caret,
#nav.wvcsd .navbar .nav li.dropdown > a:focus .caret,
#header.wvcsd .navbar .nav li.dropdown > a:focus .caret {
  border-top-color: #333333;
  border-bottom-color: #333333;
}
#nav.wvcsd .navbar .nav li.dropdown.open > .dropdown-toggle,
#header.wvcsd .navbar .nav li.dropdown.open > .dropdown-toggle,
#nav.wvcsd .navbar .nav li.dropdown.active > .dropdown-toggle,
#header.wvcsd .navbar .nav li.dropdown.active > .dropdown-toggle,
#nav.wvcsd .navbar .nav li.dropdown.open.active > .dropdown-toggle,
#header.wvcsd .navbar .nav li.dropdown.open.active > .dropdown-toggle {
  background-color: #e5e5e5;
  color: #555555;
}
#nav.wvcsd .navbar .nav li.dropdown > .dropdown-toggle .caret,
#header.wvcsd .navbar .nav li.dropdown > .dropdown-toggle .caret {
  border-top-color: #777777;
  border-bottom-color: #777777;
}
#nav.wvcsd .navbar .nav li.dropdown.open > .dropdown-toggle .caret,
#header.wvcsd .navbar .nav li.dropdown.open > .dropdown-toggle .caret,
#nav.wvcsd .navbar .nav li.dropdown.active > .dropdown-toggle .caret,
#header.wvcsd .navbar .nav li.dropdown.active > .dropdown-toggle .caret,
#nav.wvcsd .navbar .nav li.dropdown.open.active > .dropdown-toggle .caret,
#header.wvcsd .navbar .nav li.dropdown.open.active > .dropdown-toggle .caret {
  border-top-color: #555555;
  border-bottom-color: #555555;
}
#nav.wvcsd .navbar .pull-right > li > .dropdown-menu,
#header.wvcsd .navbar .pull-right > li > .dropdown-menu,
#nav.wvcsd .navbar .nav > li > .dropdown-menu.pull-right,
#header.wvcsd .navbar .nav > li > .dropdown-menu.pull-right {
  left: auto;
  right: 0;
}
#nav.wvcsd .navbar .pull-right > li > .dropdown-menu:before,
#header.wvcsd .navbar .pull-right > li > .dropdown-menu:before,
#nav.wvcsd .navbar .nav > li > .dropdown-menu.pull-right:before,
#header.wvcsd .navbar .nav > li > .dropdown-menu.pull-right:before {
  left: auto;
  right: 12px;
}
#nav.wvcsd .navbar .pull-right > li > .dropdown-menu:after,
#header.wvcsd .navbar .pull-right > li > .dropdown-menu:after,
#nav.wvcsd .navbar .nav > li > .dropdown-menu.pull-right:after,
#header.wvcsd .navbar .nav > li > .dropdown-menu.pull-right:after {
  left: auto;
  right: 13px;
}
#nav.wvcsd .navbar .pull-right > li > .dropdown-menu .dropdown-menu,
#header.wvcsd .navbar .pull-right > li > .dropdown-menu .dropdown-menu,
#nav.wvcsd .navbar .nav > li > .dropdown-menu.pull-right .dropdown-menu,
#header.wvcsd .navbar .nav > li > .dropdown-menu.pull-right .dropdown-menu {
  left: auto;
  right: 100%;
  margin-left: 0;
  margin-right: -1px;
  -webkit-border-radius: 6px 0 6px 6px;
  -moz-border-radius: 6px 0 6px 6px;
  border-radius: 6px 0 6px 6px;
}
#nav.wvcsd .navbar-inverse .navbar-inner,
#header.wvcsd .navbar-inverse .navbar-inner {
  background-color: #1b1b1b;
  background-image: -moz-linear-gradient(top, #222222, #111111);
  background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#222222), to(#111111));
  background-image: -webkit-linear-gradient(top, #222222, #111111);
  background-image: -o-linear-gradient(top, #222222, #111111);
  background-image: linear-gradient(to bottom, #222222, #111111);
  background-repeat: repeat-x;
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ff222222', endColorstr='#ff111111', GradientType=0);
  border-color: #252525;
}
#nav.wvcsd .navbar-inverse .brand,
#header.wvcsd .navbar-inverse .brand,
#nav.wvcsd .navbar-inverse .nav > li > a,
#header.wvcsd .navbar-inverse .nav > li > a {
  color: #999999;
  text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25);
}
#nav.wvcsd .navbar-inverse .brand:hover,
#header.wvcsd .navbar-inverse .brand:hover,
#nav.wvcsd .navbar-inverse .nav > li > a:hover,
#header.wvcsd .navbar-inverse .nav > li > a:hover,
#nav.wvcsd .navbar-inverse .brand:focus,
#header.wvcsd .navbar-inverse .brand:focus,
#nav.wvcsd .navbar-inverse .nav > li > a:focus,
#header.wvcsd .navbar-inverse .nav > li > a:focus {
  color: #ffffff;
}
#nav.wvcsd .navbar-inverse .brand,
#header.wvcsd .navbar-inverse .brand {
  color: #999999;
}
#nav.wvcsd .navbar-inverse .navbar-text,
#header.wvcsd .navbar-inverse .navbar-text {
  color: #999999;
}
#nav.wvcsd .navbar-inverse .nav > li > a:focus,
#header.wvcsd .navbar-inverse .nav > li > a:focus,
#nav.wvcsd .navbar-inverse .nav > li > a:hover,
#header.wvcsd .navbar-inverse .nav > li > a:hover {
  background-color: transparent;
  color: #ffffff;
}
#nav.wvcsd .navbar-inverse .nav .active > a,
#header.wvcsd .navbar-inverse .nav .active > a,
#nav.wvcsd .navbar-inverse .nav .active > a:hover,
#header.wvcsd .navbar-inverse .nav .active > a:hover,
#nav.wvcsd .navbar-inverse .nav .active > a:focus,
#header.wvcsd .navbar-inverse .nav .active > a:focus {
  color: #ffffff;
  background-color: #111111;
}
#nav.wvcsd .navbar-inverse .navbar-link,
#header.wvcsd .navbar-inverse .navbar-link {
  color: #999999;
}
#nav.wvcsd .navbar-inverse .navbar-link:hover,
#header.wvcsd .navbar-inverse .navbar-link:hover,
#nav.wvcsd .navbar-inverse .navbar-link:focus,
#header.wvcsd .navbar-inverse .navbar-link:focus {
  color: #ffffff;
}
#nav.wvcsd .navbar-inverse .divider-vertical,
#header.wvcsd .navbar-inverse .divider-vertical {
  border-left-color: #111111;
  border-right-color: #222222;
}
#nav.wvcsd .navbar-inverse .nav li.dropdown.open > .dropdown-toggle,
#header.wvcsd .navbar-inverse .nav li.dropdown.open > .dropdown-toggle,
#nav.wvcsd .navbar-inverse .nav li.dropdown.active > .dropdown-toggle,
#header.wvcsd .navbar-inverse .nav li.dropdown.active > .dropdown-toggle,
#nav.wvcsd .navbar-inverse .nav li.dropdown.open.active > .dropdown-toggle,
#header.wvcsd .navbar-inverse .nav li.dropdown.open.active > .dropdown-toggle {
  background-color: #111111;
  color: #ffffff;
}
#nav.wvcsd .navbar-inverse .nav li.dropdown > a:hover .caret,
#header.wvcsd .navbar-inverse .nav li.dropdown > a:hover .caret,
#nav.wvcsd .navbar-inverse .nav li.dropdown > a:focus .caret,
#header.wvcsd .navbar-inverse .nav li.dropdown > a:focus .caret {
  border-top-color: #ffffff;
  border-bottom-color: #ffffff;
}
#nav.wvcsd .navbar-inverse .nav li.dropdown > .dropdown-toggle .caret,
#header.wvcsd .navbar-inverse .nav li.dropdown > .dropdown-toggle .caret {
  border-top-color: #999999;
  border-bottom-color: #999999;
}
#nav.wvcsd .navbar-inverse .nav li.dropdown.open > .dropdown-toggle .caret,
#header.wvcsd .navbar-inverse .nav li.dropdown.open > .dropdown-toggle .caret,
#nav.wvcsd .navbar-inverse .nav li.dropdown.active > .dropdown-toggle .caret,
#header.wvcsd .navbar-inverse .nav li.dropdown.active > .dropdown-toggle .caret,
#nav.wvcsd .navbar-inverse .nav li.dropdown.open.active > .dropdown-toggle .caret,
#header.wvcsd .navbar-inverse .nav li.dropdown.open.active > .dropdown-toggle .caret {
  border-top-color: #ffffff;
  border-bottom-color: #ffffff;
}
#nav.wvcsd .navbar-inverse .navbar-search .search-query,
#header.wvcsd .navbar-inverse .navbar-search .search-query {
  color: #ffffff;
  background-color: #515151;
  border-color: #111111;
  -webkit-box-shadow: inset 0 1px 2px rgba(0,0,0,.1), 0 1px 0 rgba(255,255,255,.15);
  -moz-box-shadow: inset 0 1px 2px rgba(0,0,0,.1), 0 1px 0 rgba(255,255,255,.15);
  box-shadow: inset 0 1px 2px rgba(0,0,0,.1), 0 1px 0 rgba(255,255,255,.15);
  -webkit-transition: none;
  -moz-transition: none;
  -o-transition: none;
  transition: none;
}
#nav.wvcsd .navbar-inverse .navbar-search .search-query:-moz-placeholder,
#header.wvcsd .navbar-inverse .navbar-search .search-query:-moz-placeholder {
  color: #cccccc;
}
#nav.wvcsd .navbar-inverse .navbar-search .search-query:-ms-input-placeholder,
#header.wvcsd .navbar-inverse .navbar-search .search-query:-ms-input-placeholder {
  color: #cccccc;
}
#nav.wvcsd .navbar-inverse .navbar-search .search-query::-webkit-input-placeholder,
#header.wvcsd .navbar-inverse .navbar-search .search-query::-webkit-input-placeholder {
  color: #cccccc;
}
#nav.wvcsd .navbar-inverse .navbar-search .search-query:focus,
#header.wvcsd .navbar-inverse .navbar-search .search-query:focus,
#nav.wvcsd .navbar-inverse .navbar-search .search-query.focused,
#header.wvcsd .navbar-inverse .navbar-search .search-query.focused {
  padding: 5px 15px;
  color: #333333;
  text-shadow: 0 1px 0 #ffffff;
  background-color: #ffffff;
  border: 0;
  -webkit-box-shadow: 0 0 3px rgba(0, 0, 0, 0.15);
  -moz-box-shadow: 0 0 3px rgba(0, 0, 0, 0.15);
  box-shadow: 0 0 3px rgba(0, 0, 0, 0.15);
  outline: 0;
}
#nav.wvcsd .navbar-inverse .btn-navbar,
#header.wvcsd .navbar-inverse .btn-navbar {
  color: #ffffff;
  text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25);
  background-color: #0e0e0e;
  background-image: -moz-linear-gradient(top, #151515, #040404);
  background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#151515), to(#040404));
  background-image: -webkit-linear-gradient(top, #151515, #040404);
  background-image: -o-linear-gradient(top, #151515, #040404);
  background-image: linear-gradient(to bottom, #151515, #040404);
  background-repeat: repeat-x;
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ff151515', endColorstr='#ff040404', GradientType=0);
  border-color: #040404 #040404 #000000;
  border-color: rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.25);
  *background-color: #040404;
  /* Darken IE7 buttons by default so they stand out more given they won't have borders */
  filter: progid:DXImageTransform.Microsoft.gradient(enabled = false);
}
#nav.wvcsd .navbar-inverse .btn-navbar:hover,
#header.wvcsd .navbar-inverse .btn-navbar:hover,
#nav.wvcsd .navbar-inverse .btn-navbar:focus,
#header.wvcsd .navbar-inverse .btn-navbar:focus,
#nav.wvcsd .navbar-inverse .btn-navbar:active,
#header.wvcsd .navbar-inverse .btn-navbar:active,
#nav.wvcsd .navbar-inverse .btn-navbar.active,
#header.wvcsd .navbar-inverse .btn-navbar.active,
#nav.wvcsd .navbar-inverse .btn-navbar.disabled,
#header.wvcsd .navbar-inverse .btn-navbar.disabled,
#nav.wvcsd .navbar-inverse .btn-navbar[disabled],
#header.wvcsd .navbar-inverse .btn-navbar[disabled] {
  color: #ffffff;
  background-color: #040404;
  *background-color: #000000;
}
#nav.wvcsd .navbar-inverse .btn-navbar:active,
#header.wvcsd .navbar-inverse .btn-navbar:active,
#nav.wvcsd .navbar-inverse .btn-navbar.active,
#header.wvcsd .navbar-inverse .btn-navbar.active {
  background-color: #000000 \9;
}
#nav.wvcsd .nav,
#header.wvcsd .nav {
  margin-left: 0;
  margin-bottom: 20px;
  list-style: none;
}
#nav.wvcsd .nav > li > a,
#header.wvcsd .nav > li > a {
  display: block;
}
#nav.wvcsd .nav > li > a:hover,
#header.wvcsd .nav > li > a:hover,
#nav.wvcsd .nav > li > a:focus,
#header.wvcsd .nav > li > a:focus {
  text-decoration: none;
  background-color: #eeeeee;
}
#nav.wvcsd .nav > li > a > img,
#header.wvcsd .nav > li > a > img {
  max-width: none;
}
#nav.wvcsd .nav > .pull-right,
#header.wvcsd .nav > .pull-right {
  float: right;
}
#nav.wvcsd .nav-header,
#header.wvcsd .nav-header {
  display: block;
  padding: 3px 15px;
  font-size: 11px;
  font-weight: bold;
  line-height: 20px;
  color: #999999;
  text-shadow: 0 1px 0 rgba(255, 255, 255, 0.5);
  text-transform: uppercase;
}
#nav.wvcsd .nav li + .nav-header,
#header.wvcsd .nav li + .nav-header {
  margin-top: 9px;
}
#nav.wvcsd .nav-list,
#header.wvcsd .nav-list {
  padding-left: 15px;
  padding-right: 15px;
  margin-bottom: 0;
}
#nav.wvcsd .nav-list > li > a,
#header.wvcsd .nav-list > li > a,
#nav.wvcsd .nav-list .nav-header,
#header.wvcsd .nav-list .nav-header {
  margin-left: -15px;
  margin-right: -15px;
  text-shadow: 0 1px 0 rgba(255, 255, 255, 0.5);
}
#nav.wvcsd .nav-list > li > a,
#header.wvcsd .nav-list > li > a {
  padding: 3px 15px;
}
#nav.wvcsd .nav-list > .active > a,
#header.wvcsd .nav-list > .active > a,
#nav.wvcsd .nav-list > .active > a:hover,
#header.wvcsd .nav-list > .active > a:hover,
#nav.wvcsd .nav-list > .active > a:focus,
#header.wvcsd .nav-list > .active > a:focus {
  color: #ffffff;
  text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.2);
  background-color: #0088cc;
}
#nav.wvcsd .nav-list [class^="icon-"],
#header.wvcsd .nav-list [class^="icon-"],
#nav.wvcsd .nav-list [class*=" icon-"],
#header.wvcsd .nav-list [class*=" icon-"] {
  margin-right: 2px;
}
#nav.wvcsd .nav-list .divider,
#header.wvcsd .nav-list .divider {
  *width: 100%;
  height: 1px;
  margin: 9px 1px;
  *margin: -5px 0 5px;
  overflow: hidden;
  background-color: #e5e5e5;
  border-bottom: 1px solid #ffffff;
}
#nav.wvcsd .nav-tabs,
#header.wvcsd .nav-tabs,
#nav.wvcsd .nav-pills,
#header.wvcsd .nav-pills {
  *zoom: 1;
}
#nav.wvcsd .nav-tabs:before,
#header.wvcsd .nav-tabs:before,
#nav.wvcsd .nav-pills:before,
#header.wvcsd .nav-pills:before,
#nav.wvcsd .nav-tabs:after,
#header.wvcsd .nav-tabs:after,
#nav.wvcsd .nav-pills:after,
#header.wvcsd .nav-pills:after {
  display: table;
  content: "";
  line-height: 0;
}
#nav.wvcsd .nav-tabs:after,
#header.wvcsd .nav-tabs:after,
#nav.wvcsd .nav-pills:after,
#header.wvcsd .nav-pills:after {
  clear: both;
}
#nav.wvcsd .nav-tabs > li,
#header.wvcsd .nav-tabs > li,
#nav.wvcsd .nav-pills > li,
#header.wvcsd .nav-pills > li {
  float: left;
}
#nav.wvcsd .nav-tabs > li > a,
#header.wvcsd .nav-tabs > li > a,
#nav.wvcsd .nav-pills > li > a,
#header.wvcsd .nav-pills > li > a {
  padding-right: 12px;
  padding-left: 12px;
  margin-right: 2px;
  line-height: 14px;
}
#nav.wvcsd .nav-tabs,
#header.wvcsd .nav-tabs {
  border-bottom: 1px solid #ddd;
}
#nav.wvcsd .nav-tabs > li,
#header.wvcsd .nav-tabs > li {
  margin-bottom: -1px;
}
#nav.wvcsd .nav-tabs > li > a,
#header.wvcsd .nav-tabs > li > a {
  padding-top: 8px;
  padding-bottom: 8px;
  line-height: 20px;
  border: 1px solid transparent;
  -webkit-border-radius: 4px 4px 0 0;
  -moz-border-radius: 4px 4px 0 0;
  border-radius: 4px 4px 0 0;
}
#nav.wvcsd .nav-tabs > li > a:hover,
#header.wvcsd .nav-tabs > li > a:hover,
#nav.wvcsd .nav-tabs > li > a:focus,
#header.wvcsd .nav-tabs > li > a:focus {
  border-color: #eeeeee #eeeeee #dddddd;
}
#nav.wvcsd .nav-tabs > .active > a,
#header.wvcsd .nav-tabs > .active > a,
#nav.wvcsd .nav-tabs > .active > a:hover,
#header.wvcsd .nav-tabs > .active > a:hover,
#nav.wvcsd .nav-tabs > .active > a:focus,
#header.wvcsd .nav-tabs > .active > a:focus {
  color: #555555;
  background-color: #ffffff;
  border: 1px solid #ddd;
  border-bottom-color: transparent;
  cursor: default;
}
#nav.wvcsd .nav-pills > li > a,
#header.wvcsd .nav-pills > li > a {
  padding-top: 8px;
  padding-bottom: 8px;
  margin-top: 2px;
  margin-bottom: 2px;
  -webkit-border-radius: 5px;
  -moz-border-radius: 5px;
  border-radius: 5px;
}
#nav.wvcsd .nav-pills > .active > a,
#header.wvcsd .nav-pills > .active > a,
#nav.wvcsd .nav-pills > .active > a:hover,
#header.wvcsd .nav-pills > .active > a:hover,
#nav.wvcsd .nav-pills > .active > a:focus,
#header.wvcsd .nav-pills > .active > a:focus {
  color: #ffffff;
  background-color: #0088cc;
}
#nav.wvcsd .nav-stacked > li,
#header.wvcsd .nav-stacked > li {
  float: none;
}
#nav.wvcsd .nav-stacked > li > a,
#header.wvcsd .nav-stacked > li > a {
  margin-right: 0;
}
#nav.wvcsd .nav-tabs.nav-stacked,
#header.wvcsd .nav-tabs.nav-stacked {
  border-bottom: 0;
}
#nav.wvcsd .nav-tabs.nav-stacked > li > a,
#header.wvcsd .nav-tabs.nav-stacked > li > a {
  border: 1px solid #ddd;
  -webkit-border-radius: 0;
  -moz-border-radius: 0;
  border-radius: 0;
}
#nav.wvcsd .nav-tabs.nav-stacked > li:first-child > a,
#header.wvcsd .nav-tabs.nav-stacked > li:first-child > a {
  -webkit-border-top-right-radius: 4px;
  -moz-border-radius-topright: 4px;
  border-top-right-radius: 4px;
  -webkit-border-top-left-radius: 4px;
  -moz-border-radius-topleft: 4px;
  border-top-left-radius: 4px;
}
#nav.wvcsd .nav-tabs.nav-stacked > li:last-child > a,
#header.wvcsd .nav-tabs.nav-stacked > li:last-child > a {
  -webkit-border-bottom-right-radius: 4px;
  -moz-border-radius-bottomright: 4px;
  border-bottom-right-radius: 4px;
  -webkit-border-bottom-left-radius: 4px;
  -moz-border-radius-bottomleft: 4px;
  border-bottom-left-radius: 4px;
}
#nav.wvcsd .nav-tabs.nav-stacked > li > a:hover,
#header.wvcsd .nav-tabs.nav-stacked > li > a:hover,
#nav.wvcsd .nav-tabs.nav-stacked > li > a:focus,
#header.wvcsd .nav-tabs.nav-stacked > li > a:focus {
  border-color: #ddd;
  z-index: 2;
}
#nav.wvcsd .nav-pills.nav-stacked > li > a,
#header.wvcsd .nav-pills.nav-stacked > li > a {
  margin-bottom: 3px;
}
#nav.wvcsd .nav-pills.nav-stacked > li:last-child > a,
#header.wvcsd .nav-pills.nav-stacked > li:last-child > a {
  margin-bottom: 1px;
}
#nav.wvcsd .nav-tabs .dropdown-menu,
#header.wvcsd .nav-tabs .dropdown-menu {
  -webkit-border-radius: 0 0 6px 6px;
  -moz-border-radius: 0 0 6px 6px;
  border-radius: 0 0 6px 6px;
}
#nav.wvcsd .nav-pills .dropdown-menu,
#header.wvcsd .nav-pills .dropdown-menu {
  -webkit-border-radius: 6px;
  -moz-border-radius: 6px;
  border-radius: 6px;
}
#nav.wvcsd .nav .dropdown-toggle .caret,
#header.wvcsd .nav .dropdown-toggle .caret {
  border-top-color: #0088cc;
  border-bottom-color: #0088cc;
  margin-top: 6px;
}
#nav.wvcsd .nav .dropdown-toggle:hover .caret,
#header.wvcsd .nav .dropdown-toggle:hover .caret,
#nav.wvcsd .nav .dropdown-toggle:focus .caret,
#header.wvcsd .nav .dropdown-toggle:focus .caret {
  border-top-color: #005580;
  border-bottom-color: #005580;
}
#nav.wvcsd .nav-tabs .dropdown-toggle .caret,
#header.wvcsd .nav-tabs .dropdown-toggle .caret {
  margin-top: 8px;
}
#nav.wvcsd .nav .active .dropdown-toggle .caret,
#header.wvcsd .nav .active .dropdown-toggle .caret {
  border-top-color: #fff;
  border-bottom-color: #fff;
}
#nav.wvcsd .nav-tabs .active .dropdown-toggle .caret,
#header.wvcsd .nav-tabs .active .dropdown-toggle .caret {
  border-top-color: #555555;
  border-bottom-color: #555555;
}
#nav.wvcsd .nav > .dropdown.active > a:hover,
#header.wvcsd .nav > .dropdown.active > a:hover,
#nav.wvcsd .nav > .dropdown.active > a:focus,
#header.wvcsd .nav > .dropdown.active > a:focus {
  cursor: pointer;
}
#nav.wvcsd .nav-tabs .open .dropdown-toggle,
#header.wvcsd .nav-tabs .open .dropdown-toggle,
#nav.wvcsd .nav-pills .open .dropdown-toggle,
#header.wvcsd .nav-pills .open .dropdown-toggle,
#nav.wvcsd .nav > li.dropdown.open.active > a:hover,
#header.wvcsd .nav > li.dropdown.open.active > a:hover,
#nav.wvcsd .nav > li.dropdown.open.active > a:focus,
#header.wvcsd .nav > li.dropdown.open.active > a:focus {
  color: #ffffff;
  background-color: #999999;
  border-color: #999999;
}
#nav.wvcsd .nav li.dropdown.open .caret,
#header.wvcsd .nav li.dropdown.open .caret,
#nav.wvcsd .nav li.dropdown.open.active .caret,
#header.wvcsd .nav li.dropdown.open.active .caret,
#nav.wvcsd .nav li.dropdown.open a:hover .caret,
#header.wvcsd .nav li.dropdown.open a:hover .caret,
#nav.wvcsd .nav li.dropdown.open a:focus .caret,
#header.wvcsd .nav li.dropdown.open a:focus .caret {
  border-top-color: #ffffff;
  border-bottom-color: #ffffff;
  opacity: 1;
  filter: alpha(opacity=100);
}
#nav.wvcsd .tabs-stacked .open > a:hover,
#header.wvcsd .tabs-stacked .open > a:hover,
#nav.wvcsd .tabs-stacked .open > a:focus,
#header.wvcsd .tabs-stacked .open > a:focus {
  border-color: #999999;
}
#nav.wvcsd .tabbable,
#header.wvcsd .tabbable {
  *zoom: 1;
}
#nav.wvcsd .tabbable:before,
#header.wvcsd .tabbable:before,
#nav.wvcsd .tabbable:after,
#header.wvcsd .tabbable:after {
  display: table;
  content: "";
  line-height: 0;
}
#nav.wvcsd .tabbable:after,
#header.wvcsd .tabbable:after {
  clear: both;
}
#nav.wvcsd .tab-content,
#header.wvcsd .tab-content {
  overflow: auto;
}
#nav.wvcsd .tabs-below > .nav-tabs,
#header.wvcsd .tabs-below > .nav-tabs,
#nav.wvcsd .tabs-right > .nav-tabs,
#header.wvcsd .tabs-right > .nav-tabs,
#nav.wvcsd .tabs-left > .nav-tabs,
#header.wvcsd .tabs-left > .nav-tabs {
  border-bottom: 0;
}
#nav.wvcsd .tab-content > .tab-pane,
#header.wvcsd .tab-content > .tab-pane,
#nav.wvcsd .pill-content > .pill-pane,
#header.wvcsd .pill-content > .pill-pane {
  display: none;
}
#nav.wvcsd .tab-content > .active,
#header.wvcsd .tab-content > .active,
#nav.wvcsd .pill-content > .active,
#header.wvcsd .pill-content > .active {
  display: block;
}
#nav.wvcsd .tabs-below > .nav-tabs,
#header.wvcsd .tabs-below > .nav-tabs {
  border-top: 1px solid #ddd;
}
#nav.wvcsd .tabs-below > .nav-tabs > li,
#header.wvcsd .tabs-below > .nav-tabs > li {
  margin-top: -1px;
  margin-bottom: 0;
}
#nav.wvcsd .tabs-below > .nav-tabs > li > a,
#header.wvcsd .tabs-below > .nav-tabs > li > a {
  -webkit-border-radius: 0 0 4px 4px;
  -moz-border-radius: 0 0 4px 4px;
  border-radius: 0 0 4px 4px;
}
#nav.wvcsd .tabs-below > .nav-tabs > li > a:hover,
#header.wvcsd .tabs-below > .nav-tabs > li > a:hover,
#nav.wvcsd .tabs-below > .nav-tabs > li > a:focus,
#header.wvcsd .tabs-below > .nav-tabs > li > a:focus {
  border-bottom-color: transparent;
  border-top-color: #ddd;
}
#nav.wvcsd .tabs-below > .nav-tabs > .active > a,
#header.wvcsd .tabs-below > .nav-tabs > .active > a,
#nav.wvcsd .tabs-below > .nav-tabs > .active > a:hover,
#header.wvcsd .tabs-below > .nav-tabs > .active > a:hover,
#nav.wvcsd .tabs-below > .nav-tabs > .active > a:focus,
#header.wvcsd .tabs-below > .nav-tabs > .active > a:focus {
  border-color: transparent #ddd #ddd #ddd;
}
#nav.wvcsd .tabs-left > .nav-tabs > li,
#header.wvcsd .tabs-left > .nav-tabs > li,
#nav.wvcsd .tabs-right > .nav-tabs > li,
#header.wvcsd .tabs-right > .nav-tabs > li {
  float: none;
}
#nav.wvcsd .tabs-left > .nav-tabs > li > a,
#header.wvcsd .tabs-left > .nav-tabs > li > a,
#nav.wvcsd .tabs-right > .nav-tabs > li > a,
#header.wvcsd .tabs-right > .nav-tabs > li > a {
  min-width: 74px;
  margin-right: 0;
  margin-bottom: 3px;
}
#nav.wvcsd .tabs-left > .nav-tabs,
#header.wvcsd .tabs-left > .nav-tabs {
  float: left;
  margin-right: 19px;
  border-right: 1px solid #ddd;
}
#nav.wvcsd .tabs-left > .nav-tabs > li > a,
#header.wvcsd .tabs-left > .nav-tabs > li > a {
  margin-right: -1px;
  -webkit-border-radius: 4px 0 0 4px;
  -moz-border-radius: 4px 0 0 4px;
  border-radius: 4px 0 0 4px;
}
#nav.wvcsd .tabs-left > .nav-tabs > li > a:hover,
#header.wvcsd .tabs-left > .nav-tabs > li > a:hover,
#nav.wvcsd .tabs-left > .nav-tabs > li > a:focus,
#header.wvcsd .tabs-left > .nav-tabs > li > a:focus {
  border-color: #eeeeee #dddddd #eeeeee #eeeeee;
}
#nav.wvcsd .tabs-left > .nav-tabs .active > a,
#header.wvcsd .tabs-left > .nav-tabs .active > a,
#nav.wvcsd .tabs-left > .nav-tabs .active > a:hover,
#header.wvcsd .tabs-left > .nav-tabs .active > a:hover,
#nav.wvcsd .tabs-left > .nav-tabs .active > a:focus,
#header.wvcsd .tabs-left > .nav-tabs .active > a:focus {
  border-color: #ddd transparent #ddd #ddd;
  *border-right-color: #ffffff;
}
#nav.wvcsd .tabs-right > .nav-tabs,
#header.wvcsd .tabs-right > .nav-tabs {
  float: right;
  margin-left: 19px;
  border-left: 1px solid #ddd;
}
#nav.wvcsd .tabs-right > .nav-tabs > li > a,
#header.wvcsd .tabs-right > .nav-tabs > li > a {
  margin-left: -1px;
  -webkit-border-radius: 0 4px 4px 0;
  -moz-border-radius: 0 4px 4px 0;
  border-radius: 0 4px 4px 0;
}
#nav.wvcsd .tabs-right > .nav-tabs > li > a:hover,
#header.wvcsd .tabs-right > .nav-tabs > li > a:hover,
#nav.wvcsd .tabs-right > .nav-tabs > li > a:focus,
#header.wvcsd .tabs-right > .nav-tabs > li > a:focus {
  border-color: #eeeeee #eeeeee #eeeeee #dddddd;
}
#nav.wvcsd .tabs-right > .nav-tabs .active > a,
#header.wvcsd .tabs-right > .nav-tabs .active > a,
#nav.wvcsd .tabs-right > .nav-tabs .active > a:hover,
#header.wvcsd .tabs-right > .nav-tabs .active > a:hover,
#nav.wvcsd .tabs-right > .nav-tabs .active > a:focus,
#header.wvcsd .tabs-right > .nav-tabs .active > a:focus {
  border-color: #ddd #ddd #ddd transparent;
  *border-left-color: #ffffff;
}
#nav.wvcsd .nav > .disabled > a,
#header.wvcsd .nav > .disabled > a {
  color: #999999;
}
#nav.wvcsd .nav > .disabled > a:hover,
#header.wvcsd .nav > .disabled > a:hover,
#nav.wvcsd .nav > .disabled > a:focus,
#header.wvcsd .nav > .disabled > a:focus {
  text-decoration: none;
  background-color: transparent;
  cursor: default;
}
#nav.wvcsd .pager,
#header.wvcsd .pager {
  margin: 20px 0;
  list-style: none;
  text-align: center;
  *zoom: 1;
}
#nav.wvcsd .pager:before,
#header.wvcsd .pager:before,
#nav.wvcsd .pager:after,
#header.wvcsd .pager:after {
  display: table;
  content: "";
  line-height: 0;
}
#nav.wvcsd .pager:after,
#header.wvcsd .pager:after {
  clear: both;
}
#nav.wvcsd .pager li,
#header.wvcsd .pager li {
  display: inline;
}
#nav.wvcsd .pager li > a,
#header.wvcsd .pager li > a,
#nav.wvcsd .pager li > span,
#header.wvcsd .pager li > span {
  display: inline-block;
  padding: 5px 14px;
  background-color: #fff;
  border: 1px solid #ddd;
  -webkit-border-radius: 15px;
  -moz-border-radius: 15px;
  border-radius: 15px;
}
#nav.wvcsd .pager li > a:hover,
#header.wvcsd .pager li > a:hover,
#nav.wvcsd .pager li > a:focus,
#header.wvcsd .pager li > a:focus {
  text-decoration: none;
  background-color: #f5f5f5;
}
#nav.wvcsd .pager .next > a,
#header.wvcsd .pager .next > a,
#nav.wvcsd .pager .next > span,
#header.wvcsd .pager .next > span {
  float: right;
}
#nav.wvcsd .pager .previous > a,
#header.wvcsd .pager .previous > a,
#nav.wvcsd .pager .previous > span,
#header.wvcsd .pager .previous > span {
  float: left;
}
#nav.wvcsd .pager .disabled > a,
#header.wvcsd .pager .disabled > a,
#nav.wvcsd .pager .disabled > a:hover,
#header.wvcsd .pager .disabled > a:hover,
#nav.wvcsd .pager .disabled > a:focus,
#header.wvcsd .pager .disabled > a:focus,
#nav.wvcsd .pager .disabled > span,
#header.wvcsd .pager .disabled > span {
  color: #999999;
  background-color: #fff;
  cursor: default;
}
#nav.wvcsd .pagination,
#header.wvcsd .pagination {
  margin: 20px 0;
}
#nav.wvcsd .pagination ul,
#header.wvcsd .pagination ul {
  display: inline-block;
  *display: inline;
  /* IE7 inline-block hack */
  *zoom: 1;
  margin-left: 0;
  margin-bottom: 0;
  -webkit-border-radius: 4px;
  -moz-border-radius: 4px;
  border-radius: 4px;
  -webkit-box-shadow: 0 1px 2px rgba(0, 0, 0, 0.05);
  -moz-box-shadow: 0 1px 2px rgba(0, 0, 0, 0.05);
  box-shadow: 0 1px 2px rgba(0, 0, 0, 0.05);
}
#nav.wvcsd .pagination ul > li,
#header.wvcsd .pagination ul > li {
  display: inline;
}
#nav.wvcsd .pagination ul > li > a,
#header.wvcsd .pagination ul > li > a,
#nav.wvcsd .pagination ul > li > span,
#header.wvcsd .pagination ul > li > span {
  float: left;
  padding: 4px 12px;
  line-height: 20px;
  text-decoration: none;
  background-color: #ffffff;
  border: 1px solid #dddddd;
  border-left-width: 0;
}
#nav.wvcsd .pagination ul > li > a:hover,
#header.wvcsd .pagination ul > li > a:hover,
#nav.wvcsd .pagination ul > li > a:focus,
#header.wvcsd .pagination ul > li > a:focus,
#nav.wvcsd .pagination ul > .active > a,
#header.wvcsd .pagination ul > .active > a,
#nav.wvcsd .pagination ul > .active > span,
#header.wvcsd .pagination ul > .active > span {
  background-color: #f5f5f5;
}
#nav.wvcsd .pagination ul > .active > a,
#header.wvcsd .pagination ul > .active > a,
#nav.wvcsd .pagination ul > .active > span,
#header.wvcsd .pagination ul > .active > span {
  color: #999999;
  cursor: default;
}
#nav.wvcsd .pagination ul > .disabled > span,
#header.wvcsd .pagination ul > .disabled > span,
#nav.wvcsd .pagination ul > .disabled > a,
#header.wvcsd .pagination ul > .disabled > a,
#nav.wvcsd .pagination ul > .disabled > a:hover,
#header.wvcsd .pagination ul > .disabled > a:hover,
#nav.wvcsd .pagination ul > .disabled > a:focus,
#header.wvcsd .pagination ul > .disabled > a:focus {
  color: #999999;
  background-color: transparent;
  cursor: default;
}
#nav.wvcsd .pagination ul > li:first-child > a,
#header.wvcsd .pagination ul > li:first-child > a,
#nav.wvcsd .pagination ul > li:first-child > span,
#header.wvcsd .pagination ul > li:first-child > span {
  border-left-width: 1px;
  -webkit-border-top-left-radius: 4px;
  -moz-border-radius-topleft: 4px;
  border-top-left-radius: 4px;
  -webkit-border-bottom-left-radius: 4px;
  -moz-border-radius-bottomleft: 4px;
  border-bottom-left-radius: 4px;
}
#nav.wvcsd .pagination ul > li:last-child > a,
#header.wvcsd .pagination ul > li:last-child > a,
#nav.wvcsd .pagination ul > li:last-child > span,
#header.wvcsd .pagination ul > li:last-child > span {
  -webkit-border-top-right-radius: 4px;
  -moz-border-radius-topright: 4px;
  border-top-right-radius: 4px;
  -webkit-border-bottom-right-radius: 4px;
  -moz-border-radius-bottomright: 4px;
  border-bottom-right-radius: 4px;
}
#nav.wvcsd .pagination-centered,
#header.wvcsd .pagination-centered {
  text-align: center;
}
#nav.wvcsd .pagination-right,
#header.wvcsd .pagination-right {
  text-align: right;
}
#nav.wvcsd .pagination-large ul > li > a,
#header.wvcsd .pagination-large ul > li > a,
#nav.wvcsd .pagination-large ul > li > span,
#header.wvcsd .pagination-large ul > li > span {
  padding: 11px 19px;
  font-size: 17.5px;
}
#nav.wvcsd .pagination-large ul > li:first-child > a,
#header.wvcsd .pagination-large ul > li:first-child > a,
#nav.wvcsd .pagination-large ul > li:first-child > span,
#header.wvcsd .pagination-large ul > li:first-child > span {
  -webkit-border-top-left-radius: 6px;
  -moz-border-radius-topleft: 6px;
  border-top-left-radius: 6px;
  -webkit-border-bottom-left-radius: 6px;
  -moz-border-radius-bottomleft: 6px;
  border-bottom-left-radius: 6px;
}
#nav.wvcsd .pagination-large ul > li:last-child > a,
#header.wvcsd .pagination-large ul > li:last-child > a,
#nav.wvcsd .pagination-large ul > li:last-child > span,
#header.wvcsd .pagination-large ul > li:last-child > span {
  -webkit-border-top-right-radius: 6px;
  -moz-border-radius-topright: 6px;
  border-top-right-radius: 6px;
  -webkit-border-bottom-right-radius: 6px;
  -moz-border-radius-bottomright: 6px;
  border-bottom-right-radius: 6px;
}
#nav.wvcsd .pagination-mini ul > li:first-child > a,
#header.wvcsd .pagination-mini ul > li:first-child > a,
#nav.wvcsd .pagination-small ul > li:first-child > a,
#header.wvcsd .pagination-small ul > li:first-child > a,
#nav.wvcsd .pagination-mini ul > li:first-child > span,
#header.wvcsd .pagination-mini ul > li:first-child > span,
#nav.wvcsd .pagination-small ul > li:first-child > span,
#header.wvcsd .pagination-small ul > li:first-child > span {
  -webkit-border-top-left-radius: 3px;
  -moz-border-radius-topleft: 3px;
  border-top-left-radius: 3px;
  -webkit-border-bottom-left-radius: 3px;
  -moz-border-radius-bottomleft: 3px;
  border-bottom-left-radius: 3px;
}
#nav.wvcsd .pagination-mini ul > li:last-child > a,
#header.wvcsd .pagination-mini ul > li:last-child > a,
#nav.wvcsd .pagination-small ul > li:last-child > a,
#header.wvcsd .pagination-small ul > li:last-child > a,
#nav.wvcsd .pagination-mini ul > li:last-child > span,
#header.wvcsd .pagination-mini ul > li:last-child > span,
#nav.wvcsd .pagination-small ul > li:last-child > span,
#header.wvcsd .pagination-small ul > li:last-child > span {
  -webkit-border-top-right-radius: 3px;
  -moz-border-radius-topright: 3px;
  border-top-right-radius: 3px;
  -webkit-border-bottom-right-radius: 3px;
  -moz-border-radius-bottomright: 3px;
  border-bottom-right-radius: 3px;
}
#nav.wvcsd .pagination-small ul > li > a,
#header.wvcsd .pagination-small ul > li > a,
#nav.wvcsd .pagination-small ul > li > span,
#header.wvcsd .pagination-small ul > li > span {
  padding: 2px 10px;
  font-size: 11.9px;
}
#nav.wvcsd .pagination-mini ul > li > a,
#header.wvcsd .pagination-mini ul > li > a,
#nav.wvcsd .pagination-mini ul > li > span,
#header.wvcsd .pagination-mini ul > li > span {
  padding: 0 6px;
  font-size: 10.5px;
}
#nav.wvcsd .popover,
#header.wvcsd .popover {
  position: absolute;
  top: 0;
  left: 0;
  z-index: 1010;
  display: none;
  max-width: 276px;
  padding: 1px;
  text-align: left;
  background-color: #ffffff;
  -webkit-background-clip: padding-box;
  -moz-background-clip: padding;
  background-clip: padding-box;
  border: 1px solid #ccc;
  border: 1px solid rgba(0, 0, 0, 0.2);
  -webkit-border-radius: 6px;
  -moz-border-radius: 6px;
  border-radius: 6px;
  -webkit-box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
  -moz-box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
  box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
  white-space: normal;
}
#nav.wvcsd .popover.top,
#header.wvcsd .popover.top {
  margin-top: -10px;
}
#nav.wvcsd .popover.right,
#header.wvcsd .popover.right {
  margin-left: 10px;
}
#nav.wvcsd .popover.bottom,
#header.wvcsd .popover.bottom {
  margin-top: 10px;
}
#nav.wvcsd .popover.left,
#header.wvcsd .popover.left {
  margin-left: -10px;
}
#nav.wvcsd .popover-title,
#header.wvcsd .popover-title {
  margin: 0;
  padding: 8px 14px;
  font-size: 14px;
  font-weight: normal;
  line-height: 18px;
  background-color: #f7f7f7;
  border-bottom: 1px solid #ebebeb;
  -webkit-border-radius: 5px 5px 0 0;
  -moz-border-radius: 5px 5px 0 0;
  border-radius: 5px 5px 0 0;
}
#nav.wvcsd .popover-title:empty,
#header.wvcsd .popover-title:empty {
  display: none;
}
#nav.wvcsd .popover-content,
#header.wvcsd .popover-content {
  padding: 9px 14px;
}
#nav.wvcsd .popover .arrow,
#header.wvcsd .popover .arrow,
#nav.wvcsd .popover .arrow:after,
#header.wvcsd .popover .arrow:after {
  position: absolute;
  display: block;
  width: 0;
  height: 0;
  border-color: transparent;
  border-style: solid;
}
#nav.wvcsd .popover .arrow,
#header.wvcsd .popover .arrow {
  border-width: 11px;
}
#nav.wvcsd .popover .arrow:after,
#header.wvcsd .popover .arrow:after {
  border-width: 10px;
  content: "";
}
#nav.wvcsd .popover.top .arrow,
#header.wvcsd .popover.top .arrow {
  left: 50%;
  margin-left: -11px;
  border-bottom-width: 0;
  border-top-color: #999;
  border-top-color: rgba(0, 0, 0, 0.25);
  bottom: -11px;
}
#nav.wvcsd .popover.top .arrow:after,
#header.wvcsd .popover.top .arrow:after {
  bottom: 1px;
  margin-left: -10px;
  border-bottom-width: 0;
  border-top-color: #ffffff;
}
#nav.wvcsd .popover.right .arrow,
#header.wvcsd .popover.right .arrow {
  top: 50%;
  left: -11px;
  margin-top: -11px;
  border-left-width: 0;
  border-right-color: #999;
  border-right-color: rgba(0, 0, 0, 0.25);
}
#nav.wvcsd .popover.right .arrow:after,
#header.wvcsd .popover.right .arrow:after {
  left: 1px;
  bottom: -10px;
  border-left-width: 0;
  border-right-color: #ffffff;
}
#nav.wvcsd .popover.bottom .arrow,
#header.wvcsd .popover.bottom .arrow {
  left: 50%;
  margin-left: -11px;
  border-top-width: 0;
  border-bottom-color: #999;
  border-bottom-color: rgba(0, 0, 0, 0.25);
  top: -11px;
}
#nav.wvcsd .popover.bottom .arrow:after,
#header.wvcsd .popover.bottom .arrow:after {
  top: 1px;
  margin-left: -10px;
  border-top-width: 0;
  border-bottom-color: #ffffff;
}
#nav.wvcsd .popover.left .arrow,
#header.wvcsd .popover.left .arrow {
  top: 50%;
  right: -11px;
  margin-top: -11px;
  border-right-width: 0;
  border-left-color: #999;
  border-left-color: rgba(0, 0, 0, 0.25);
}
#nav.wvcsd .popover.left .arrow:after,
#header.wvcsd .popover.left .arrow:after {
  right: 1px;
  border-right-width: 0;
  border-left-color: #ffffff;
  bottom: -10px;
}
@-webkit-keyframes progress-bar-stripes {
  from {
    background-position: 40px 0;
  }
  to {
    background-position: 0 0;
  }
}
@-moz-keyframes progress-bar-stripes {
  from {
    background-position: 40px 0;
  }
  to {
    background-position: 0 0;
  }
}
@-ms-keyframes progress-bar-stripes {
  from {
    background-position: 40px 0;
  }
  to {
    background-position: 0 0;
  }
}
@-o-keyframes progress-bar-stripes {
  from {
    background-position: 0 0;
  }
  to {
    background-position: 40px 0;
  }
}
@keyframes progress-bar-stripes {
  from {
    background-position: 40px 0;
  }
  to {
    background-position: 0 0;
  }
}
#nav.wvcsd .progress,
#header.wvcsd .progress {
  overflow: hidden;
  height: 20px;
  margin-bottom: 20px;
  background-color: #f7f7f7;
  background-image: -moz-linear-gradient(top, #f5f5f5, #f9f9f9);
  background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#f5f5f5), to(#f9f9f9));
  background-image: -webkit-linear-gradient(top, #f5f5f5, #f9f9f9);
  background-image: -o-linear-gradient(top, #f5f5f5, #f9f9f9);
  background-image: linear-gradient(to bottom, #f5f5f5, #f9f9f9);
  background-repeat: repeat-x;
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#fff5f5f5', endColorstr='#fff9f9f9', GradientType=0);
  -webkit-box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.1);
  -moz-box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.1);
  box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.1);
  -webkit-border-radius: 4px;
  -moz-border-radius: 4px;
  border-radius: 4px;
}
#nav.wvcsd .progress .bar,
#header.wvcsd .progress .bar {
  width: 0%;
  height: 100%;
  color: #ffffff;
  float: left;
  font-size: 12px;
  text-align: center;
  text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25);
  background-color: #0e90d2;
  background-image: -moz-linear-gradient(top, #149bdf, #0480be);
  background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#149bdf), to(#0480be));
  background-image: -webkit-linear-gradient(top, #149bdf, #0480be);
  background-image: -o-linear-gradient(top, #149bdf, #0480be);
  background-image: linear-gradient(to bottom, #149bdf, #0480be);
  background-repeat: repeat-x;
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ff149bdf', endColorstr='#ff0480be', GradientType=0);
  -webkit-box-shadow: inset 0 -1px 0 rgba(0, 0, 0, 0.15);
  -moz-box-shadow: inset 0 -1px 0 rgba(0, 0, 0, 0.15);
  box-shadow: inset 0 -1px 0 rgba(0, 0, 0, 0.15);
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
  -webkit-transition: width 0.6s ease;
  -moz-transition: width 0.6s ease;
  -o-transition: width 0.6s ease;
  transition: width 0.6s ease;
}
#nav.wvcsd .progress .bar + .bar,
#header.wvcsd .progress .bar + .bar {
  -webkit-box-shadow: inset 1px 0 0 rgba(0,0,0,.15), inset 0 -1px 0 rgba(0,0,0,.15);
  -moz-box-shadow: inset 1px 0 0 rgba(0,0,0,.15), inset 0 -1px 0 rgba(0,0,0,.15);
  box-shadow: inset 1px 0 0 rgba(0,0,0,.15), inset 0 -1px 0 rgba(0,0,0,.15);
}
#nav.wvcsd .progress-striped .bar,
#header.wvcsd .progress-striped .bar {
  background-color: #149bdf;
  background-image: -webkit-gradient(linear, 0 100%, 100% 0, color-stop(0.25, rgba(255, 255, 255, 0.15)), color-stop(0.25, transparent), color-stop(0.5, transparent), color-stop(0.5, rgba(255, 255, 255, 0.15)), color-stop(0.75, rgba(255, 255, 255, 0.15)), color-stop(0.75, transparent), to(transparent));
  background-image: -webkit-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-image: -moz-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-image: -o-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-image: linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  -webkit-background-size: 40px 40px;
  -moz-background-size: 40px 40px;
  -o-background-size: 40px 40px;
  background-size: 40px 40px;
}
#nav.wvcsd .progress.active .bar,
#header.wvcsd .progress.active .bar {
  -webkit-animation: progress-bar-stripes 2s linear infinite;
  -moz-animation: progress-bar-stripes 2s linear infinite;
  -ms-animation: progress-bar-stripes 2s linear infinite;
  -o-animation: progress-bar-stripes 2s linear infinite;
  animation: progress-bar-stripes 2s linear infinite;
}
#nav.wvcsd .progress-danger .bar,
#header.wvcsd .progress-danger .bar,
#nav.wvcsd .progress .bar-danger,
#header.wvcsd .progress .bar-danger {
  background-color: #dd514c;
  background-image: -moz-linear-gradient(top, #ee5f5b, #c43c35);
  background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#ee5f5b), to(#c43c35));
  background-image: -webkit-linear-gradient(top, #ee5f5b, #c43c35);
  background-image: -o-linear-gradient(top, #ee5f5b, #c43c35);
  background-image: linear-gradient(to bottom, #ee5f5b, #c43c35);
  background-repeat: repeat-x;
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffee5f5b', endColorstr='#ffc43c35', GradientType=0);
}
#nav.wvcsd .progress-danger.progress-striped .bar,
#header.wvcsd .progress-danger.progress-striped .bar,
#nav.wvcsd .progress-striped .bar-danger,
#header.wvcsd .progress-striped .bar-danger {
  background-color: #ee5f5b;
  background-image: -webkit-gradient(linear, 0 100%, 100% 0, color-stop(0.25, rgba(255, 255, 255, 0.15)), color-stop(0.25, transparent), color-stop(0.5, transparent), color-stop(0.5, rgba(255, 255, 255, 0.15)), color-stop(0.75, rgba(255, 255, 255, 0.15)), color-stop(0.75, transparent), to(transparent));
  background-image: -webkit-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-image: -moz-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-image: -o-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-image: linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
}
#nav.wvcsd .progress-success .bar,
#header.wvcsd .progress-success .bar,
#nav.wvcsd .progress .bar-success,
#header.wvcsd .progress .bar-success {
  background-color: #5eb95e;
  background-image: -moz-linear-gradient(top, #62c462, #57a957);
  background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#62c462), to(#57a957));
  background-image: -webkit-linear-gradient(top, #62c462, #57a957);
  background-image: -o-linear-gradient(top, #62c462, #57a957);
  background-image: linear-gradient(to bottom, #62c462, #57a957);
  background-repeat: repeat-x;
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ff62c462', endColorstr='#ff57a957', GradientType=0);
}
#nav.wvcsd .progress-success.progress-striped .bar,
#header.wvcsd .progress-success.progress-striped .bar,
#nav.wvcsd .progress-striped .bar-success,
#header.wvcsd .progress-striped .bar-success {
  background-color: #62c462;
  background-image: -webkit-gradient(linear, 0 100%, 100% 0, color-stop(0.25, rgba(255, 255, 255, 0.15)), color-stop(0.25, transparent), color-stop(0.5, transparent), color-stop(0.5, rgba(255, 255, 255, 0.15)), color-stop(0.75, rgba(255, 255, 255, 0.15)), color-stop(0.75, transparent), to(transparent));
  background-image: -webkit-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-image: -moz-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-image: -o-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-image: linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
}
#nav.wvcsd .progress-info .bar,
#header.wvcsd .progress-info .bar,
#nav.wvcsd .progress .bar-info,
#header.wvcsd .progress .bar-info {
  background-color: #4bb1cf;
  background-image: -moz-linear-gradient(top, #5bc0de, #339bb9);
  background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#5bc0de), to(#339bb9));
  background-image: -webkit-linear-gradient(top, #5bc0de, #339bb9);
  background-image: -o-linear-gradient(top, #5bc0de, #339bb9);
  background-image: linear-gradient(to bottom, #5bc0de, #339bb9);
  background-repeat: repeat-x;
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ff5bc0de', endColorstr='#ff339bb9', GradientType=0);
}
#nav.wvcsd .progress-info.progress-striped .bar,
#header.wvcsd .progress-info.progress-striped .bar,
#nav.wvcsd .progress-striped .bar-info,
#header.wvcsd .progress-striped .bar-info {
  background-color: #5bc0de;
  background-image: -webkit-gradient(linear, 0 100%, 100% 0, color-stop(0.25, rgba(255, 255, 255, 0.15)), color-stop(0.25, transparent), color-stop(0.5, transparent), color-stop(0.5, rgba(255, 255, 255, 0.15)), color-stop(0.75, rgba(255, 255, 255, 0.15)), color-stop(0.75, transparent), to(transparent));
  background-image: -webkit-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-image: -moz-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-image: -o-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-image: linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
}
#nav.wvcsd .progress-warning .bar,
#header.wvcsd .progress-warning .bar,
#nav.wvcsd .progress .bar-warning,
#header.wvcsd .progress .bar-warning {
  background-color: #faa732;
  background-image: -moz-linear-gradient(top, #fbb450, #f89406);
  background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#fbb450), to(#f89406));
  background-image: -webkit-linear-gradient(top, #fbb450, #f89406);
  background-image: -o-linear-gradient(top, #fbb450, #f89406);
  background-image: linear-gradient(to bottom, #fbb450, #f89406);
  background-repeat: repeat-x;
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#fffbb450', endColorstr='#fff89406', GradientType=0);
}
#nav.wvcsd .progress-warning.progress-striped .bar,
#header.wvcsd .progress-warning.progress-striped .bar,
#nav.wvcsd .progress-striped .bar-warning,
#header.wvcsd .progress-striped .bar-warning {
  background-color: #fbb450;
  background-image: -webkit-gradient(linear, 0 100%, 100% 0, color-stop(0.25, rgba(255, 255, 255, 0.15)), color-stop(0.25, transparent), color-stop(0.5, transparent), color-stop(0.5, rgba(255, 255, 255, 0.15)), color-stop(0.75, rgba(255, 255, 255, 0.15)), color-stop(0.75, transparent), to(transparent));
  background-image: -webkit-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-image: -moz-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-image: -o-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-image: linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
}
#nav.wvcsd article,
#header.wvcsd article,
#nav.wvcsd aside,
#header.wvcsd aside,
#nav.wvcsd details,
#header.wvcsd details,
#nav.wvcsd figcaption,
#header.wvcsd figcaption,
#nav.wvcsd figure,
#header.wvcsd figure,
#nav.wvcsd footer,
#header.wvcsd footer,
#nav.wvcsd header,
#header.wvcsd header,
#nav.wvcsd hgroup,
#header.wvcsd hgroup,
#nav.wvcsd nav,
#header.wvcsd nav,
#nav.wvcsd section,
#header.wvcsd section {
  display: block;
}
#nav.wvcsd audio,
#header.wvcsd audio,
#nav.wvcsd canvas,
#header.wvcsd canvas,
#nav.wvcsd video,
#header.wvcsd video {
  display: inline-block;
  *display: inline;
  *zoom: 1;
}
#nav.wvcsd audio:not([controls]),
#header.wvcsd audio:not([controls]) {
  display: none;
}
#nav.wvcsd html,
#header.wvcsd html {
  font-size: 100%;
  -webkit-text-size-adjust: 100%;
  -ms-text-size-adjust: 100%;
}
#nav.wvcsd a:focus,
#header.wvcsd a:focus {
  outline: thin dotted #333;
  outline: 5px auto -webkit-focus-ring-color;
  outline-offset: -2px;
}
#nav.wvcsd a:hover,
#header.wvcsd a:hover,
#nav.wvcsd a:active,
#header.wvcsd a:active {
  outline: 0;
}
#nav.wvcsd sub,
#header.wvcsd sub,
#nav.wvcsd sup,
#header.wvcsd sup {
  position: relative;
  font-size: 75%;
  line-height: 0;
  vertical-align: baseline;
}
#nav.wvcsd sup,
#header.wvcsd sup {
  top: -0.5em;
}
#nav.wvcsd sub,
#header.wvcsd sub {
  bottom: -0.25em;
}
#nav.wvcsd img,
#header.wvcsd img {
  /* Responsive images (ensure images don't scale beyond their parents) */
  max-width: 100%;
  /* Part 1: Set a maxium relative to the parent */
  width: auto\9;
  /* IE7-8 need help adjusting responsive images */
  height: auto;
  /* Part 2: Scale the height according to the width, otherwise you get stretching */
  vertical-align: middle;
  border: 0;
  -ms-interpolation-mode: bicubic;
}
#nav.wvcsd #map_canvas img,
#header.wvcsd #map_canvas img,
#nav.wvcsd .google-maps img,
#header.wvcsd .google-maps img {
  max-width: none;
}
#nav.wvcsd button,
#header.wvcsd button,
#nav.wvcsd input,
#header.wvcsd input,
#nav.wvcsd select,
#header.wvcsd select,
#nav.wvcsd textarea,
#header.wvcsd textarea {
  margin: 0;
  font-size: 100%;
  vertical-align: middle;
}
#nav.wvcsd button,
#header.wvcsd button,
#nav.wvcsd input,
#header.wvcsd input {
  *overflow: visible;
  line-height: normal;
}
#nav.wvcsd button::-moz-focus-inner,
#header.wvcsd button::-moz-focus-inner,
#nav.wvcsd input::-moz-focus-inner,
#header.wvcsd input::-moz-focus-inner {
  padding: 0;
  border: 0;
}
#nav.wvcsd button,
#header.wvcsd button,
#nav.wvcsd html input[type="button"],
#header.wvcsd html input[type="button"],
#nav.wvcsd input[type="reset"],
#header.wvcsd input[type="reset"],
#nav.wvcsd input[type="submit"],
#header.wvcsd input[type="submit"] {
  -webkit-appearance: button;
  cursor: pointer;
}
#nav.wvcsd label,
#header.wvcsd label,
#nav.wvcsd select,
#header.wvcsd select,
#nav.wvcsd button,
#header.wvcsd button,
#nav.wvcsd input[type="button"],
#header.wvcsd input[type="button"],
#nav.wvcsd input[type="reset"],
#header.wvcsd input[type="reset"],
#nav.wvcsd input[type="submit"],
#header.wvcsd input[type="submit"],
#nav.wvcsd input[type="radio"],
#header.wvcsd input[type="radio"],
#nav.wvcsd input[type="checkbox"],
#header.wvcsd input[type="checkbox"] {
  cursor: pointer;
}
#nav.wvcsd input[type="search"],
#header.wvcsd input[type="search"] {
  -webkit-box-sizing: content-box;
  -moz-box-sizing: content-box;
  box-sizing: content-box;
  -webkit-appearance: textfield;
}
#nav.wvcsd input[type="search"]::-webkit-search-decoration,
#header.wvcsd input[type="search"]::-webkit-search-decoration,
#nav.wvcsd input[type="search"]::-webkit-search-cancel-button,
#header.wvcsd input[type="search"]::-webkit-search-cancel-button {
  -webkit-appearance: none;
}
#nav.wvcsd textarea,
#header.wvcsd textarea {
  overflow: auto;
  vertical-align: top;
}
@media print {
  #nav.wvcsd *,
  #header.wvcsd * {
    text-shadow: none !important;
    color: #000 !important;
    background: transparent !important;
    box-shadow: none !important;
  }
  #nav.wvcsd a,
  #header.wvcsd a,
  #nav.wvcsd a:visited,
  #header.wvcsd a:visited {
    text-decoration: underline;
  }
  #nav.wvcsd a[href]:after,
  #header.wvcsd a[href]:after {
    content: " (" attr(href) ")";
  }
  #nav.wvcsd abbr[title]:after,
  #header.wvcsd abbr[title]:after {
    content: " (" attr(title) ")";
  }
  #nav.wvcsd .ir a:after,
  #header.wvcsd .ir a:after,
  #nav.wvcsd a[href^="javascript:"]:after,
  #header.wvcsd a[href^="javascript:"]:after,
  #nav.wvcsd a[href^="#"]:after,
  #header.wvcsd a[href^="#"]:after {
    content: "";
  }
  #nav.wvcsd pre,
  #header.wvcsd pre,
  #nav.wvcsd blockquote,
  #header.wvcsd blockquote {
    border: 1px solid #999;
    page-break-inside: avoid;
  }
  #nav.wvcsd thead,
  #header.wvcsd thead {
    display: table-header-group;
  }
  #nav.wvcsd tr,
  #header.wvcsd tr,
  #nav.wvcsd img,
  #header.wvcsd img {
    page-break-inside: avoid;
  }
  #nav.wvcsd img,
  #header.wvcsd img {
    max-width: 100% !important;
  }
  @page {
    margin: 0.5cm;
  }
  #nav.wvcsd p,
  #header.wvcsd p,
  #nav.wvcsd h2,
  #header.wvcsd h2,
  #nav.wvcsd h3,
  #header.wvcsd h3 {
    orphans: 3;
    widows: 3;
  }
  #nav.wvcsd h2,
  #header.wvcsd h2,
  #nav.wvcsd h3,
  #header.wvcsd h3 {
    page-break-after: avoid;
  }
}
#nav.wvcsd body,
#header.wvcsd body {
  margin: 0;
  font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
  font-size: 14px;
  line-height: 20px;
  color: #333333;
  /*background-color: @bodyBackground;*/
}
#nav.wvcsd a,
#header.wvcsd a {
  color: #0088cc;
  text-decoration: none;
}
#nav.wvcsd a:hover,
#header.wvcsd a:hover,
#nav.wvcsd a:focus,
#header.wvcsd a:focus {
  color: #005580;
  text-decoration: underline;
}
#nav.wvcsd .img-rounded,
#header.wvcsd .img-rounded {
  -webkit-border-radius: 6px;
  -moz-border-radius: 6px;
  border-radius: 6px;
}
#nav.wvcsd .img-polaroid,
#header.wvcsd .img-polaroid {
  padding: 4px;
  background-color: #fff;
  border: 1px solid #ccc;
  border: 1px solid rgba(0, 0, 0, 0.2);
  -webkit-box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1);
  -moz-box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1);
  box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1);
}
#nav.wvcsd .img-circle,
#header.wvcsd .img-circle {
  -webkit-border-radius: 500px;
  -moz-border-radius: 500px;
  border-radius: 500px;
}
#nav.wvcsd [class^="icon-"],
#header.wvcsd [class^="icon-"],
#nav.wvcsd [class*=" icon-"],
#header.wvcsd [class*=" icon-"] {
  display: inline-block;
  width: 14px;
  height: 14px;
  *margin-right: .3em;
  line-height: 14px;
  vertical-align: text-top;
  background-image: url("../img/glyphicons-halflings.png");
  background-position: 14px 14px;
  background-repeat: no-repeat;
  margin-top: 1px;
}
#nav.wvcsd .icon-white,
#header.wvcsd .icon-white,
#nav.wvcsd .nav-pills > .active > a > [class^="icon-"],
#header.wvcsd .nav-pills > .active > a > [class^="icon-"],
#nav.wvcsd .nav-pills > .active > a > [class*=" icon-"],
#header.wvcsd .nav-pills > .active > a > [class*=" icon-"],
#nav.wvcsd .nav-list > .active > a > [class^="icon-"],
#header.wvcsd .nav-list > .active > a > [class^="icon-"],
#nav.wvcsd .nav-list > .active > a > [class*=" icon-"],
#header.wvcsd .nav-list > .active > a > [class*=" icon-"],
#nav.wvcsd .navbar-inverse .nav > .active > a > [class^="icon-"],
#header.wvcsd .navbar-inverse .nav > .active > a > [class^="icon-"],
#nav.wvcsd .navbar-inverse .nav > .active > a > [class*=" icon-"],
#header.wvcsd .navbar-inverse .nav > .active > a > [class*=" icon-"],
#nav.wvcsd .dropdown-menu > li > a:hover > [class^="icon-"],
#header.wvcsd .dropdown-menu > li > a:hover > [class^="icon-"],
#nav.wvcsd .dropdown-menu > li > a:focus > [class^="icon-"],
#header.wvcsd .dropdown-menu > li > a:focus > [class^="icon-"],
#nav.wvcsd .dropdown-menu > li > a:hover > [class*=" icon-"],
#header.wvcsd .dropdown-menu > li > a:hover > [class*=" icon-"],
#nav.wvcsd .dropdown-menu > li > a:focus > [class*=" icon-"],
#header.wvcsd .dropdown-menu > li > a:focus > [class*=" icon-"],
#nav.wvcsd .dropdown-menu > .active > a > [class^="icon-"],
#header.wvcsd .dropdown-menu > .active > a > [class^="icon-"],
#nav.wvcsd .dropdown-menu > .active > a > [class*=" icon-"],
#header.wvcsd .dropdown-menu > .active > a > [class*=" icon-"],
#nav.wvcsd .dropdown-submenu:hover > a > [class^="icon-"],
#header.wvcsd .dropdown-submenu:hover > a > [class^="icon-"],
#nav.wvcsd .dropdown-submenu:focus > a > [class^="icon-"],
#header.wvcsd .dropdown-submenu:focus > a > [class^="icon-"],
#nav.wvcsd .dropdown-submenu:hover > a > [class*=" icon-"],
#header.wvcsd .dropdown-submenu:hover > a > [class*=" icon-"],
#nav.wvcsd .dropdown-submenu:focus > a > [class*=" icon-"],
#header.wvcsd .dropdown-submenu:focus > a > [class*=" icon-"] {
  background-image: url("../img/glyphicons-halflings-white.png");
}
#nav.wvcsd .icon-glass,
#header.wvcsd .icon-glass {
  background-position: 0      0;
}
#nav.wvcsd .icon-music,
#header.wvcsd .icon-music {
  background-position: -24px 0;
}
#nav.wvcsd .icon-search,
#header.wvcsd .icon-search {
  background-position: -48px 0;
}
#nav.wvcsd .icon-envelope,
#header.wvcsd .icon-envelope {
  background-position: -72px 0;
}
#nav.wvcsd .icon-heart,
#header.wvcsd .icon-heart {
  background-position: -96px 0;
}
#nav.wvcsd .icon-star,
#header.wvcsd .icon-star {
  background-position: -120px 0;
}
#nav.wvcsd .icon-star-empty,
#header.wvcsd .icon-star-empty {
  background-position: -144px 0;
}
#nav.wvcsd .icon-user,
#header.wvcsd .icon-user {
  background-position: -168px 0;
}
#nav.wvcsd .icon-film,
#header.wvcsd .icon-film {
  background-position: -192px 0;
}
#nav.wvcsd .icon-th-large,
#header.wvcsd .icon-th-large {
  background-position: -216px 0;
}
#nav.wvcsd .icon-th,
#header.wvcsd .icon-th {
  background-position: -240px 0;
}
#nav.wvcsd .icon-th-list,
#header.wvcsd .icon-th-list {
  background-position: -264px 0;
}
#nav.wvcsd .icon-ok,
#header.wvcsd .icon-ok {
  background-position: -288px 0;
}
#nav.wvcsd .icon-remove,
#header.wvcsd .icon-remove {
  background-position: -312px 0;
}
#nav.wvcsd .icon-zoom-in,
#header.wvcsd .icon-zoom-in {
  background-position: -336px 0;
}
#nav.wvcsd .icon-zoom-out,
#header.wvcsd .icon-zoom-out {
  background-position: -360px 0;
}
#nav.wvcsd .icon-off,
#header.wvcsd .icon-off {
  background-position: -384px 0;
}
#nav.wvcsd .icon-signal,
#header.wvcsd .icon-signal {
  background-position: -408px 0;
}
#nav.wvcsd .icon-cog,
#header.wvcsd .icon-cog {
  background-position: -432px 0;
}
#nav.wvcsd .icon-trash,
#header.wvcsd .icon-trash {
  background-position: -456px 0;
}
#nav.wvcsd .icon-home,
#header.wvcsd .icon-home {
  background-position: 0 -24px;
}
#nav.wvcsd .icon-file,
#header.wvcsd .icon-file {
  background-position: -24px -24px;
}
#nav.wvcsd .icon-time,
#header.wvcsd .icon-time {
  background-position: -48px -24px;
}
#nav.wvcsd .icon-road,
#header.wvcsd .icon-road {
  background-position: -72px -24px;
}
#nav.wvcsd .icon-download-alt,
#header.wvcsd .icon-download-alt {
  background-position: -96px -24px;
}
#nav.wvcsd .icon-download,
#header.wvcsd .icon-download {
  background-position: -120px -24px;
}
#nav.wvcsd .icon-upload,
#header.wvcsd .icon-upload {
  background-position: -144px -24px;
}
#nav.wvcsd .icon-inbox,
#header.wvcsd .icon-inbox {
  background-position: -168px -24px;
}
#nav.wvcsd .icon-play-circle,
#header.wvcsd .icon-play-circle {
  background-position: -192px -24px;
}
#nav.wvcsd .icon-repeat,
#header.wvcsd .icon-repeat {
  background-position: -216px -24px;
}
#nav.wvcsd .icon-refresh,
#header.wvcsd .icon-refresh {
  background-position: -240px -24px;
}
#nav.wvcsd .icon-list-alt,
#header.wvcsd .icon-list-alt {
  background-position: -264px -24px;
}
#nav.wvcsd .icon-lock,
#header.wvcsd .icon-lock {
  background-position: -287px -24px;
}
#nav.wvcsd .icon-flag,
#header.wvcsd .icon-flag {
  background-position: -312px -24px;
}
#nav.wvcsd .icon-headphones,
#header.wvcsd .icon-headphones {
  background-position: -336px -24px;
}
#nav.wvcsd .icon-volume-off,
#header.wvcsd .icon-volume-off {
  background-position: -360px -24px;
}
#nav.wvcsd .icon-volume-down,
#header.wvcsd .icon-volume-down {
  background-position: -384px -24px;
}
#nav.wvcsd .icon-volume-up,
#header.wvcsd .icon-volume-up {
  background-position: -408px -24px;
}
#nav.wvcsd .icon-qrcode,
#header.wvcsd .icon-qrcode {
  background-position: -432px -24px;
}
#nav.wvcsd .icon-barcode,
#header.wvcsd .icon-barcode {
  background-position: -456px -24px;
}
#nav.wvcsd .icon-tag,
#header.wvcsd .icon-tag {
  background-position: 0 -48px;
}
#nav.wvcsd .icon-tags,
#header.wvcsd .icon-tags {
  background-position: -25px -48px;
}
#nav.wvcsd .icon-book,
#header.wvcsd .icon-book {
  background-position: -48px -48px;
}
#nav.wvcsd .icon-bookmark,
#header.wvcsd .icon-bookmark {
  background-position: -72px -48px;
}
#nav.wvcsd .icon-print,
#header.wvcsd .icon-print {
  background-position: -96px -48px;
}
#nav.wvcsd .icon-camera,
#header.wvcsd .icon-camera {
  background-position: -120px -48px;
}
#nav.wvcsd .icon-font,
#header.wvcsd .icon-font {
  background-position: -144px -48px;
}
#nav.wvcsd .icon-bold,
#header.wvcsd .icon-bold {
  background-position: -167px -48px;
}
#nav.wvcsd .icon-italic,
#header.wvcsd .icon-italic {
  background-position: -192px -48px;
}
#nav.wvcsd .icon-text-height,
#header.wvcsd .icon-text-height {
  background-position: -216px -48px;
}
#nav.wvcsd .icon-text-width,
#header.wvcsd .icon-text-width {
  background-position: -240px -48px;
}
#nav.wvcsd .icon-align-left,
#header.wvcsd .icon-align-left {
  background-position: -264px -48px;
}
#nav.wvcsd .icon-align-center,
#header.wvcsd .icon-align-center {
  background-position: -288px -48px;
}
#nav.wvcsd .icon-align-right,
#header.wvcsd .icon-align-right {
  background-position: -312px -48px;
}
#nav.wvcsd .icon-align-justify,
#header.wvcsd .icon-align-justify {
  background-position: -336px -48px;
}
#nav.wvcsd .icon-list,
#header.wvcsd .icon-list {
  background-position: -360px -48px;
}
#nav.wvcsd .icon-indent-left,
#header.wvcsd .icon-indent-left {
  background-position: -384px -48px;
}
#nav.wvcsd .icon-indent-right,
#header.wvcsd .icon-indent-right {
  background-position: -408px -48px;
}
#nav.wvcsd .icon-facetime-video,
#header.wvcsd .icon-facetime-video {
  background-position: -432px -48px;
}
#nav.wvcsd .icon-picture,
#header.wvcsd .icon-picture {
  background-position: -456px -48px;
}
#nav.wvcsd .icon-pencil,
#header.wvcsd .icon-pencil {
  background-position: 0 -72px;
}
#nav.wvcsd .icon-map-marker,
#header.wvcsd .icon-map-marker {
  background-position: -24px -72px;
}
#nav.wvcsd .icon-adjust,
#header.wvcsd .icon-adjust {
  background-position: -48px -72px;
}
#nav.wvcsd .icon-tint,
#header.wvcsd .icon-tint {
  background-position: -72px -72px;
}
#nav.wvcsd .icon-edit,
#header.wvcsd .icon-edit {
  background-position: -96px -72px;
}
#nav.wvcsd .icon-share,
#header.wvcsd .icon-share {
  background-position: -120px -72px;
}
#nav.wvcsd .icon-check,
#header.wvcsd .icon-check {
  background-position: -144px -72px;
}
#nav.wvcsd .icon-move,
#header.wvcsd .icon-move {
  background-position: -168px -72px;
}
#nav.wvcsd .icon-step-backward,
#header.wvcsd .icon-step-backward {
  background-position: -192px -72px;
}
#nav.wvcsd .icon-fast-backward,
#header.wvcsd .icon-fast-backward {
  background-position: -216px -72px;
}
#nav.wvcsd .icon-backward,
#header.wvcsd .icon-backward {
  background-position: -240px -72px;
}
#nav.wvcsd .icon-play,
#header.wvcsd .icon-play {
  background-position: -264px -72px;
}
#nav.wvcsd .icon-pause,
#header.wvcsd .icon-pause {
  background-position: -288px -72px;
}
#nav.wvcsd .icon-stop,
#header.wvcsd .icon-stop {
  background-position: -312px -72px;
}
#nav.wvcsd .icon-forward,
#header.wvcsd .icon-forward {
  background-position: -336px -72px;
}
#nav.wvcsd .icon-fast-forward,
#header.wvcsd .icon-fast-forward {
  background-position: -360px -72px;
}
#nav.wvcsd .icon-step-forward,
#header.wvcsd .icon-step-forward {
  background-position: -384px -72px;
}
#nav.wvcsd .icon-eject,
#header.wvcsd .icon-eject {
  background-position: -408px -72px;
}
#nav.wvcsd .icon-chevron-left,
#header.wvcsd .icon-chevron-left {
  background-position: -432px -72px;
}
#nav.wvcsd .icon-chevron-right,
#header.wvcsd .icon-chevron-right {
  background-position: -456px -72px;
}
#nav.wvcsd .icon-plus-sign,
#header.wvcsd .icon-plus-sign {
  background-position: 0 -96px;
}
#nav.wvcsd .icon-minus-sign,
#header.wvcsd .icon-minus-sign {
  background-position: -24px -96px;
}
#nav.wvcsd .icon-remove-sign,
#header.wvcsd .icon-remove-sign {
  background-position: -48px -96px;
}
#nav.wvcsd .icon-ok-sign,
#header.wvcsd .icon-ok-sign {
  background-position: -72px -96px;
}
#nav.wvcsd .icon-question-sign,
#header.wvcsd .icon-question-sign {
  background-position: -96px -96px;
}
#nav.wvcsd .icon-info-sign,
#header.wvcsd .icon-info-sign {
  background-position: -120px -96px;
}
#nav.wvcsd .icon-screenshot,
#header.wvcsd .icon-screenshot {
  background-position: -144px -96px;
}
#nav.wvcsd .icon-remove-circle,
#header.wvcsd .icon-remove-circle {
  background-position: -168px -96px;
}
#nav.wvcsd .icon-ok-circle,
#header.wvcsd .icon-ok-circle {
  background-position: -192px -96px;
}
#nav.wvcsd .icon-ban-circle,
#header.wvcsd .icon-ban-circle {
  background-position: -216px -96px;
}
#nav.wvcsd .icon-arrow-left,
#header.wvcsd .icon-arrow-left {
  background-position: -240px -96px;
}
#nav.wvcsd .icon-arrow-right,
#header.wvcsd .icon-arrow-right {
  background-position: -264px -96px;
}
#nav.wvcsd .icon-arrow-up,
#header.wvcsd .icon-arrow-up {
  background-position: -289px -96px;
}
#nav.wvcsd .icon-arrow-down,
#header.wvcsd .icon-arrow-down {
  background-position: -312px -96px;
}
#nav.wvcsd .icon-share-alt,
#header.wvcsd .icon-share-alt {
  background-position: -336px -96px;
}
#nav.wvcsd .icon-resize-full,
#header.wvcsd .icon-resize-full {
  background-position: -360px -96px;
}
#nav.wvcsd .icon-resize-small,
#header.wvcsd .icon-resize-small {
  background-position: -384px -96px;
}
#nav.wvcsd .icon-plus,
#header.wvcsd .icon-plus {
  background-position: -408px -96px;
}
#nav.wvcsd .icon-minus,
#header.wvcsd .icon-minus {
  background-position: -433px -96px;
}
#nav.wvcsd .icon-asterisk,
#header.wvcsd .icon-asterisk {
  background-position: -456px -96px;
}
#nav.wvcsd .icon-exclamation-sign,
#header.wvcsd .icon-exclamation-sign {
  background-position: 0 -120px;
}
#nav.wvcsd .icon-gift,
#header.wvcsd .icon-gift {
  background-position: -24px -120px;
}
#nav.wvcsd .icon-leaf,
#header.wvcsd .icon-leaf {
  background-position: -48px -120px;
}
#nav.wvcsd .icon-fire,
#header.wvcsd .icon-fire {
  background-position: -72px -120px;
}
#nav.wvcsd .icon-eye-open,
#header.wvcsd .icon-eye-open {
  background-position: -96px -120px;
}
#nav.wvcsd .icon-eye-close,
#header.wvcsd .icon-eye-close {
  background-position: -120px -120px;
}
#nav.wvcsd .icon-warning-sign,
#header.wvcsd .icon-warning-sign {
  background-position: -144px -120px;
}
#nav.wvcsd .icon-plane,
#header.wvcsd .icon-plane {
  background-position: -168px -120px;
}
#nav.wvcsd .icon-calendar,
#header.wvcsd .icon-calendar {
  background-position: -192px -120px;
}
#nav.wvcsd .icon-random,
#header.wvcsd .icon-random {
  background-position: -216px -120px;
  width: 16px;
}
#nav.wvcsd .icon-comment,
#header.wvcsd .icon-comment {
  background-position: -240px -120px;
}
#nav.wvcsd .icon-magnet,
#header.wvcsd .icon-magnet {
  background-position: -264px -120px;
}
#nav.wvcsd .icon-chevron-up,
#header.wvcsd .icon-chevron-up {
  background-position: -288px -120px;
}
#nav.wvcsd .icon-chevron-down,
#header.wvcsd .icon-chevron-down {
  background-position: -313px -119px;
}
#nav.wvcsd .icon-retweet,
#header.wvcsd .icon-retweet {
  background-position: -336px -120px;
}
#nav.wvcsd .icon-shopping-cart,
#header.wvcsd .icon-shopping-cart {
  background-position: -360px -120px;
}
#nav.wvcsd .icon-folder-close,
#header.wvcsd .icon-folder-close {
  background-position: -384px -120px;
  width: 16px;
}
#nav.wvcsd .icon-folder-open,
#header.wvcsd .icon-folder-open {
  background-position: -408px -120px;
  width: 16px;
}
#nav.wvcsd .icon-resize-vertical,
#header.wvcsd .icon-resize-vertical {
  background-position: -432px -119px;
}
#nav.wvcsd .icon-resize-horizontal,
#header.wvcsd .icon-resize-horizontal {
  background-position: -456px -118px;
}
#nav.wvcsd .icon-hdd,
#header.wvcsd .icon-hdd {
  background-position: 0 -144px;
}
#nav.wvcsd .icon-bullhorn,
#header.wvcsd .icon-bullhorn {
  background-position: -24px -144px;
}
#nav.wvcsd .icon-bell,
#header.wvcsd .icon-bell {
  background-position: -48px -144px;
}
#nav.wvcsd .icon-certificate,
#header.wvcsd .icon-certificate {
  background-position: -72px -144px;
}
#nav.wvcsd .icon-thumbs-up,
#header.wvcsd .icon-thumbs-up {
  background-position: -96px -144px;
}
#nav.wvcsd .icon-thumbs-down,
#header.wvcsd .icon-thumbs-down {
  background-position: -120px -144px;
}
#nav.wvcsd .icon-hand-right,
#header.wvcsd .icon-hand-right {
  background-position: -144px -144px;
}
#nav.wvcsd .icon-hand-left,
#header.wvcsd .icon-hand-left {
  background-position: -168px -144px;
}
#nav.wvcsd .icon-hand-up,
#header.wvcsd .icon-hand-up {
  background-position: -192px -144px;
}
#nav.wvcsd .icon-hand-down,
#header.wvcsd .icon-hand-down {
  background-position: -216px -144px;
}
#nav.wvcsd .icon-circle-arrow-right,
#header.wvcsd .icon-circle-arrow-right {
  background-position: -240px -144px;
}
#nav.wvcsd .icon-circle-arrow-left,
#header.wvcsd .icon-circle-arrow-left {
  background-position: -264px -144px;
}
#nav.wvcsd .icon-circle-arrow-up,
#header.wvcsd .icon-circle-arrow-up {
  background-position: -288px -144px;
}
#nav.wvcsd .icon-circle-arrow-down,
#header.wvcsd .icon-circle-arrow-down {
  background-position: -312px -144px;
}
#nav.wvcsd .icon-globe,
#header.wvcsd .icon-globe {
  background-position: -336px -144px;
}
#nav.wvcsd .icon-wrench,
#header.wvcsd .icon-wrench {
  background-position: -360px -144px;
}
#nav.wvcsd .icon-tasks,
#header.wvcsd .icon-tasks {
  background-position: -384px -144px;
}
#nav.wvcsd .icon-filter,
#header.wvcsd .icon-filter {
  background-position: -408px -144px;
}
#nav.wvcsd .icon-briefcase,
#header.wvcsd .icon-briefcase {
  background-position: -432px -144px;
}
#nav.wvcsd .icon-fullscreen,
#header.wvcsd .icon-fullscreen {
  background-position: -456px -144px;
}
#nav.wvcsd table,
#header.wvcsd table {
  max-width: 100%;
  background-color: transparent;
  border-collapse: collapse;
  border-spacing: 0;
}
#nav.wvcsd .table,
#header.wvcsd .table {
  width: 100%;
  margin-bottom: 20px;
}
#nav.wvcsd .table th,
#header.wvcsd .table th,
#nav.wvcsd .table td,
#header.wvcsd .table td {
  padding: 8px;
  line-height: 20px;
  text-align: left;
  vertical-align: top;
  border-top: 1px solid #dddddd;
}
#nav.wvcsd .table th,
#header.wvcsd .table th {
  font-weight: bold;
}
#nav.wvcsd .table thead th,
#header.wvcsd .table thead th {
  vertical-align: bottom;
}
#nav.wvcsd .table caption + thead tr:first-child th,
#header.wvcsd .table caption + thead tr:first-child th,
#nav.wvcsd .table caption + thead tr:first-child td,
#header.wvcsd .table caption + thead tr:first-child td,
#nav.wvcsd .table colgroup + thead tr:first-child th,
#header.wvcsd .table colgroup + thead tr:first-child th,
#nav.wvcsd .table colgroup + thead tr:first-child td,
#header.wvcsd .table colgroup + thead tr:first-child td,
#nav.wvcsd .table thead:first-child tr:first-child th,
#header.wvcsd .table thead:first-child tr:first-child th,
#nav.wvcsd .table thead:first-child tr:first-child td,
#header.wvcsd .table thead:first-child tr:first-child td {
  border-top: 0;
}
#nav.wvcsd .table tbody + tbody,
#header.wvcsd .table tbody + tbody {
  border-top: 2px solid #dddddd;
}
#nav.wvcsd .table .table,
#header.wvcsd .table .table {
  background-color: #ffffff;
}
#nav.wvcsd .table-condensed th,
#header.wvcsd .table-condensed th,
#nav.wvcsd .table-condensed td,
#header.wvcsd .table-condensed td {
  padding: 4px 5px;
}
#nav.wvcsd .table-bordered,
#header.wvcsd .table-bordered {
  border: 1px solid #dddddd;
  border-collapse: separate;
  *border-collapse: collapse;
  border-left: 0;
  -webkit-border-radius: 4px;
  -moz-border-radius: 4px;
  border-radius: 4px;
}
#nav.wvcsd .table-bordered th,
#header.wvcsd .table-bordered th,
#nav.wvcsd .table-bordered td,
#header.wvcsd .table-bordered td {
  border-left: 1px solid #dddddd;
}
#nav.wvcsd .table-bordered caption + thead tr:first-child th,
#header.wvcsd .table-bordered caption + thead tr:first-child th,
#nav.wvcsd .table-bordered caption + tbody tr:first-child th,
#header.wvcsd .table-bordered caption + tbody tr:first-child th,
#nav.wvcsd .table-bordered caption + tbody tr:first-child td,
#header.wvcsd .table-bordered caption + tbody tr:first-child td,
#nav.wvcsd .table-bordered colgroup + thead tr:first-child th,
#header.wvcsd .table-bordered colgroup + thead tr:first-child th,
#nav.wvcsd .table-bordered colgroup + tbody tr:first-child th,
#header.wvcsd .table-bordered colgroup + tbody tr:first-child th,
#nav.wvcsd .table-bordered colgroup + tbody tr:first-child td,
#header.wvcsd .table-bordered colgroup + tbody tr:first-child td,
#nav.wvcsd .table-bordered thead:first-child tr:first-child th,
#header.wvcsd .table-bordered thead:first-child tr:first-child th,
#nav.wvcsd .table-bordered tbody:first-child tr:first-child th,
#header.wvcsd .table-bordered tbody:first-child tr:first-child th,
#nav.wvcsd .table-bordered tbody:first-child tr:first-child td,
#header.wvcsd .table-bordered tbody:first-child tr:first-child td {
  border-top: 0;
}
#nav.wvcsd .table-bordered thead:first-child tr:first-child > th:first-child,
#header.wvcsd .table-bordered thead:first-child tr:first-child > th:first-child,
#nav.wvcsd .table-bordered tbody:first-child tr:first-child > td:first-child,
#header.wvcsd .table-bordered tbody:first-child tr:first-child > td:first-child,
#nav.wvcsd .table-bordered tbody:first-child tr:first-child > th:first-child,
#header.wvcsd .table-bordered tbody:first-child tr:first-child > th:first-child {
  -webkit-border-top-left-radius: 4px;
  -moz-border-radius-topleft: 4px;
  border-top-left-radius: 4px;
}
#nav.wvcsd .table-bordered thead:first-child tr:first-child > th:last-child,
#header.wvcsd .table-bordered thead:first-child tr:first-child > th:last-child,
#nav.wvcsd .table-bordered tbody:first-child tr:first-child > td:last-child,
#header.wvcsd .table-bordered tbody:first-child tr:first-child > td:last-child,
#nav.wvcsd .table-bordered tbody:first-child tr:first-child > th:last-child,
#header.wvcsd .table-bordered tbody:first-child tr:first-child > th:last-child {
  -webkit-border-top-right-radius: 4px;
  -moz-border-radius-topright: 4px;
  border-top-right-radius: 4px;
}
#nav.wvcsd .table-bordered thead:last-child tr:last-child > th:first-child,
#header.wvcsd .table-bordered thead:last-child tr:last-child > th:first-child,
#nav.wvcsd .table-bordered tbody:last-child tr:last-child > td:first-child,
#header.wvcsd .table-bordered tbody:last-child tr:last-child > td:first-child,
#nav.wvcsd .table-bordered tbody:last-child tr:last-child > th:first-child,
#header.wvcsd .table-bordered tbody:last-child tr:last-child > th:first-child,
#nav.wvcsd .table-bordered tfoot:last-child tr:last-child > td:first-child,
#header.wvcsd .table-bordered tfoot:last-child tr:last-child > td:first-child,
#nav.wvcsd .table-bordered tfoot:last-child tr:last-child > th:first-child,
#header.wvcsd .table-bordered tfoot:last-child tr:last-child > th:first-child {
  -webkit-border-bottom-left-radius: 4px;
  -moz-border-radius-bottomleft: 4px;
  border-bottom-left-radius: 4px;
}
#nav.wvcsd .table-bordered thead:last-child tr:last-child > th:last-child,
#header.wvcsd .table-bordered thead:last-child tr:last-child > th:last-child,
#nav.wvcsd .table-bordered tbody:last-child tr:last-child > td:last-child,
#header.wvcsd .table-bordered tbody:last-child tr:last-child > td:last-child,
#nav.wvcsd .table-bordered tbody:last-child tr:last-child > th:last-child,
#header.wvcsd .table-bordered tbody:last-child tr:last-child > th:last-child,
#nav.wvcsd .table-bordered tfoot:last-child tr:last-child > td:last-child,
#header.wvcsd .table-bordered tfoot:last-child tr:last-child > td:last-child,
#nav.wvcsd .table-bordered tfoot:last-child tr:last-child > th:last-child,
#header.wvcsd .table-bordered tfoot:last-child tr:last-child > th:last-child {
  -webkit-border-bottom-right-radius: 4px;
  -moz-border-radius-bottomright: 4px;
  border-bottom-right-radius: 4px;
}
#nav.wvcsd .table-bordered tfoot + tbody:last-child tr:last-child td:first-child,
#header.wvcsd .table-bordered tfoot + tbody:last-child tr:last-child td:first-child {
  -webkit-border-bottom-left-radius: 0;
  -moz-border-radius-bottomleft: 0;
  border-bottom-left-radius: 0;
}
#nav.wvcsd .table-bordered tfoot + tbody:last-child tr:last-child td:last-child,
#header.wvcsd .table-bordered tfoot + tbody:last-child tr:last-child td:last-child {
  -webkit-border-bottom-right-radius: 0;
  -moz-border-radius-bottomright: 0;
  border-bottom-right-radius: 0;
}
#nav.wvcsd .table-bordered caption + thead tr:first-child th:first-child,
#header.wvcsd .table-bordered caption + thead tr:first-child th:first-child,
#nav.wvcsd .table-bordered caption + tbody tr:first-child td:first-child,
#header.wvcsd .table-bordered caption + tbody tr:first-child td:first-child,
#nav.wvcsd .table-bordered colgroup + thead tr:first-child th:first-child,
#header.wvcsd .table-bordered colgroup + thead tr:first-child th:first-child,
#nav.wvcsd .table-bordered colgroup + tbody tr:first-child td:first-child,
#header.wvcsd .table-bordered colgroup + tbody tr:first-child td:first-child {
  -webkit-border-top-left-radius: 4px;
  -moz-border-radius-topleft: 4px;
  border-top-left-radius: 4px;
}
#nav.wvcsd .table-bordered caption + thead tr:first-child th:last-child,
#header.wvcsd .table-bordered caption + thead tr:first-child th:last-child,
#nav.wvcsd .table-bordered caption + tbody tr:first-child td:last-child,
#header.wvcsd .table-bordered caption + tbody tr:first-child td:last-child,
#nav.wvcsd .table-bordered colgroup + thead tr:first-child th:last-child,
#header.wvcsd .table-bordered colgroup + thead tr:first-child th:last-child,
#nav.wvcsd .table-bordered colgroup + tbody tr:first-child td:last-child,
#header.wvcsd .table-bordered colgroup + tbody tr:first-child td:last-child {
  -webkit-border-top-right-radius: 4px;
  -moz-border-radius-topright: 4px;
  border-top-right-radius: 4px;
}
#nav.wvcsd .table-striped tbody > tr:nth-child(odd) > td,
#header.wvcsd .table-striped tbody > tr:nth-child(odd) > td,
#nav.wvcsd .table-striped tbody > tr:nth-child(odd) > th,
#header.wvcsd .table-striped tbody > tr:nth-child(odd) > th {
  background-color: #f9f9f9;
}
#nav.wvcsd .table-hover tbody tr:hover > td,
#header.wvcsd .table-hover tbody tr:hover > td,
#nav.wvcsd .table-hover tbody tr:hover > th,
#header.wvcsd .table-hover tbody tr:hover > th {
  background-color: #f5f5f5;
}
#nav.wvcsd table td[class*="span"],
#header.wvcsd table td[class*="span"],
#nav.wvcsd table th[class*="span"],
#header.wvcsd table th[class*="span"],
#nav.wvcsd .row-fluid table td[class*="span"],
#header.wvcsd .row-fluid table td[class*="span"],
#nav.wvcsd .row-fluid table th[class*="span"],
#header.wvcsd .row-fluid table th[class*="span"] {
  display: table-cell;
  float: none;
  margin-left: 0;
}
#nav.wvcsd .table td.span1,
#header.wvcsd .table td.span1,
#nav.wvcsd .table th.span1,
#header.wvcsd .table th.span1 {
  float: none;
  width: 44px;
  margin-left: 0;
}
#nav.wvcsd .table td.span2,
#header.wvcsd .table td.span2,
#nav.wvcsd .table th.span2,
#header.wvcsd .table th.span2 {
  float: none;
  width: 124px;
  margin-left: 0;
}
#nav.wvcsd .table td.span3,
#header.wvcsd .table td.span3,
#nav.wvcsd .table th.span3,
#header.wvcsd .table th.span3 {
  float: none;
  width: 204px;
  margin-left: 0;
}
#nav.wvcsd .table td.span4,
#header.wvcsd .table td.span4,
#nav.wvcsd .table th.span4,
#header.wvcsd .table th.span4 {
  float: none;
  width: 284px;
  margin-left: 0;
}
#nav.wvcsd .table td.span5,
#header.wvcsd .table td.span5,
#nav.wvcsd .table th.span5,
#header.wvcsd .table th.span5 {
  float: none;
  width: 364px;
  margin-left: 0;
}
#nav.wvcsd .table td.span6,
#header.wvcsd .table td.span6,
#nav.wvcsd .table th.span6,
#header.wvcsd .table th.span6 {
  float: none;
  width: 444px;
  margin-left: 0;
}
#nav.wvcsd .table td.span7,
#header.wvcsd .table td.span7,
#nav.wvcsd .table th.span7,
#header.wvcsd .table th.span7 {
  float: none;
  width: 524px;
  margin-left: 0;
}
#nav.wvcsd .table td.span8,
#header.wvcsd .table td.span8,
#nav.wvcsd .table th.span8,
#header.wvcsd .table th.span8 {
  float: none;
  width: 604px;
  margin-left: 0;
}
#nav.wvcsd .table td.span9,
#header.wvcsd .table td.span9,
#nav.wvcsd .table th.span9,
#header.wvcsd .table th.span9 {
  float: none;
  width: 684px;
  margin-left: 0;
}
#nav.wvcsd .table td.span10,
#header.wvcsd .table td.span10,
#nav.wvcsd .table th.span10,
#header.wvcsd .table th.span10 {
  float: none;
  width: 764px;
  margin-left: 0;
}
#nav.wvcsd .table td.span11,
#header.wvcsd .table td.span11,
#nav.wvcsd .table th.span11,
#header.wvcsd .table th.span11 {
  float: none;
  width: 844px;
  margin-left: 0;
}
#nav.wvcsd .table td.span12,
#header.wvcsd .table td.span12,
#nav.wvcsd .table th.span12,
#header.wvcsd .table th.span12 {
  float: none;
  width: 924px;
  margin-left: 0;
}
#nav.wvcsd .table tbody tr.success > td,
#header.wvcsd .table tbody tr.success > td {
  background-color: #dff0d8;
}
#nav.wvcsd .table tbody tr.error > td,
#header.wvcsd .table tbody tr.error > td {
  background-color: #f2dede;
}
#nav.wvcsd .table tbody tr.warning > td,
#header.wvcsd .table tbody tr.warning > td {
  background-color: #fcf8e3;
}
#nav.wvcsd .table tbody tr.info > td,
#header.wvcsd .table tbody tr.info > td {
  background-color: #d9edf7;
}
#nav.wvcsd .table-hover tbody tr.success:hover > td,
#header.wvcsd .table-hover tbody tr.success:hover > td {
  background-color: #d0e9c6;
}
#nav.wvcsd .table-hover tbody tr.error:hover > td,
#header.wvcsd .table-hover tbody tr.error:hover > td {
  background-color: #ebcccc;
}
#nav.wvcsd .table-hover tbody tr.warning:hover > td,
#header.wvcsd .table-hover tbody tr.warning:hover > td {
  background-color: #faf2cc;
}
#nav.wvcsd .table-hover tbody tr.info:hover > td,
#header.wvcsd .table-hover tbody tr.info:hover > td {
  background-color: #c4e3f3;
}
#nav.wvcsd .thumbnails,
#header.wvcsd .thumbnails {
  margin-left: -20px;
  list-style: none;
  *zoom: 1;
}
#nav.wvcsd .thumbnails:before,
#header.wvcsd .thumbnails:before,
#nav.wvcsd .thumbnails:after,
#header.wvcsd .thumbnails:after {
  display: table;
  content: "";
  line-height: 0;
}
#nav.wvcsd .thumbnails:after,
#header.wvcsd .thumbnails:after {
  clear: both;
}
#nav.wvcsd .row-fluid .thumbnails,
#header.wvcsd .row-fluid .thumbnails {
  margin-left: 0;
}
#nav.wvcsd .thumbnails > li,
#header.wvcsd .thumbnails > li {
  float: left;
  margin-bottom: 20px;
  margin-left: 20px;
}
#nav.wvcsd .thumbnail,
#header.wvcsd .thumbnail {
  display: block;
  padding: 4px;
  line-height: 20px;
  border: 1px solid #ddd;
  -webkit-border-radius: 4px;
  -moz-border-radius: 4px;
  border-radius: 4px;
  -webkit-box-shadow: 0 1px 3px rgba(0, 0, 0, 0.055);
  -moz-box-shadow: 0 1px 3px rgba(0, 0, 0, 0.055);
  box-shadow: 0 1px 3px rgba(0, 0, 0, 0.055);
  -webkit-transition: all 0.2s ease-in-out;
  -moz-transition: all 0.2s ease-in-out;
  -o-transition: all 0.2s ease-in-out;
  transition: all 0.2s ease-in-out;
}
#nav.wvcsd a.thumbnail:hover,
#header.wvcsd a.thumbnail:hover,
#nav.wvcsd a.thumbnail:focus,
#header.wvcsd a.thumbnail:focus {
  border-color: #0088cc;
  -webkit-box-shadow: 0 1px 4px rgba(0, 105, 214, 0.25);
  -moz-box-shadow: 0 1px 4px rgba(0, 105, 214, 0.25);
  box-shadow: 0 1px 4px rgba(0, 105, 214, 0.25);
}
#nav.wvcsd .thumbnail > img,
#header.wvcsd .thumbnail > img {
  display: block;
  max-width: 100%;
  margin-left: auto;
  margin-right: auto;
}
#nav.wvcsd .thumbnail .caption,
#header.wvcsd .thumbnail .caption {
  padding: 9px;
  color: #555555;
}
#nav.wvcsd .tooltip,
#header.wvcsd .tooltip {
  position: absolute;
  z-index: 1030;
  display: block;
  visibility: visible;
  font-size: 11px;
  line-height: 1.4;
  opacity: 0;
  filter: alpha(opacity=0);
}
#nav.wvcsd .tooltip.in,
#header.wvcsd .tooltip.in {
  opacity: 0.8;
  filter: alpha(opacity=80);
}
#nav.wvcsd .tooltip.top,
#header.wvcsd .tooltip.top {
  margin-top: -3px;
  padding: 5px 0;
}
#nav.wvcsd .tooltip.right,
#header.wvcsd .tooltip.right {
  margin-left: 3px;
  padding: 0 5px;
}
#nav.wvcsd .tooltip.bottom,
#header.wvcsd .tooltip.bottom {
  margin-top: 3px;
  padding: 5px 0;
}
#nav.wvcsd .tooltip.left,
#header.wvcsd .tooltip.left {
  margin-left: -3px;
  padding: 0 5px;
}
#nav.wvcsd .tooltip-inner,
#header.wvcsd .tooltip-inner {
  max-width: 200px;
  padding: 8px;
  color: #ffffff;
  text-align: center;
  text-decoration: none;
  background-color: #000000;
  -webkit-border-radius: 4px;
  -moz-border-radius: 4px;
  border-radius: 4px;
}
#nav.wvcsd .tooltip-arrow,
#header.wvcsd .tooltip-arrow {
  position: absolute;
  width: 0;
  height: 0;
  border-color: transparent;
  border-style: solid;
}
#nav.wvcsd .tooltip.top .tooltip-arrow,
#header.wvcsd .tooltip.top .tooltip-arrow {
  bottom: 0;
  left: 50%;
  margin-left: -5px;
  border-width: 5px 5px 0;
  border-top-color: #000000;
}
#nav.wvcsd .tooltip.right .tooltip-arrow,
#header.wvcsd .tooltip.right .tooltip-arrow {
  top: 50%;
  left: 0;
  margin-top: -5px;
  border-width: 5px 5px 5px 0;
  border-right-color: #000000;
}
#nav.wvcsd .tooltip.left .tooltip-arrow,
#header.wvcsd .tooltip.left .tooltip-arrow {
  top: 50%;
  right: 0;
  margin-top: -5px;
  border-width: 5px 0 5px 5px;
  border-left-color: #000000;
}
#nav.wvcsd .tooltip.bottom .tooltip-arrow,
#header.wvcsd .tooltip.bottom .tooltip-arrow {
  top: 0;
  left: 50%;
  margin-left: -5px;
  border-width: 0 5px 5px;
  border-bottom-color: #000000;
}
#nav.wvcsd p,
#header.wvcsd p {
  margin: 0 0 10px;
}
#nav.wvcsd .lead,
#header.wvcsd .lead {
  margin-bottom: 20px;
  font-size: 21px;
  font-weight: 200;
  line-height: 30px;
}
#nav.wvcsd small,
#header.wvcsd small {
  font-size: 85%;
}
#nav.wvcsd strong,
#header.wvcsd strong {
  font-weight: bold;
}
#nav.wvcsd em,
#header.wvcsd em {
  font-style: italic;
}
#nav.wvcsd cite,
#header.wvcsd cite {
  font-style: normal;
}
#nav.wvcsd .muted,
#header.wvcsd .muted {
  color: #999999;
}
#nav.wvcsd a.muted:hover,
#header.wvcsd a.muted:hover,
#nav.wvcsd a.muted:focus,
#header.wvcsd a.muted:focus {
  color: #808080;
}
#nav.wvcsd .text-warning,
#header.wvcsd .text-warning {
  color: #c09853;
}
#nav.wvcsd a.text-warning:hover,
#header.wvcsd a.text-warning:hover,
#nav.wvcsd a.text-warning:focus,
#header.wvcsd a.text-warning:focus {
  color: #a47e3c;
}
#nav.wvcsd .text-error,
#header.wvcsd .text-error {
  color: #b94a48;
}
#nav.wvcsd a.text-error:hover,
#header.wvcsd a.text-error:hover,
#nav.wvcsd a.text-error:focus,
#header.wvcsd a.text-error:focus {
  color: #953b39;
}
#nav.wvcsd .text-info,
#header.wvcsd .text-info {
  color: #3a87ad;
}
#nav.wvcsd a.text-info:hover,
#header.wvcsd a.text-info:hover,
#nav.wvcsd a.text-info:focus,
#header.wvcsd a.text-info:focus {
  color: #2d6987;
}
#nav.wvcsd .text-success,
#header.wvcsd .text-success {
  color: #468847;
}
#nav.wvcsd a.text-success:hover,
#header.wvcsd a.text-success:hover,
#nav.wvcsd a.text-success:focus,
#header.wvcsd a.text-success:focus {
  color: #356635;
}
#nav.wvcsd .text-left,
#header.wvcsd .text-left {
  text-align: left;
}
#nav.wvcsd .text-right,
#header.wvcsd .text-right {
  text-align: right;
}
#nav.wvcsd .text-center,
#header.wvcsd .text-center {
  text-align: center;
}
#nav.wvcsd h1,
#header.wvcsd h1,
#nav.wvcsd h2,
#header.wvcsd h2,
#nav.wvcsd h3,
#header.wvcsd h3,
#nav.wvcsd h4,
#header.wvcsd h4,
#nav.wvcsd h5,
#header.wvcsd h5,
#nav.wvcsd h6,
#header.wvcsd h6 {
  margin: 10px 0;
  font-family: inherit;
  font-weight: bold;
  line-height: 20px;
  color: inherit;
  text-rendering: optimizelegibility;
}
#nav.wvcsd h1 small,
#header.wvcsd h1 small,
#nav.wvcsd h2 small,
#header.wvcsd h2 small,
#nav.wvcsd h3 small,
#header.wvcsd h3 small,
#nav.wvcsd h4 small,
#header.wvcsd h4 small,
#nav.wvcsd h5 small,
#header.wvcsd h5 small,
#nav.wvcsd h6 small,
#header.wvcsd h6 small {
  font-weight: normal;
  line-height: 1;
  color: #999999;
}
#nav.wvcsd h1,
#header.wvcsd h1,
#nav.wvcsd h2,
#header.wvcsd h2,
#nav.wvcsd h3,
#header.wvcsd h3 {
  line-height: 40px;
}
#nav.wvcsd h1,
#header.wvcsd h1 {
  font-size: 38.5px;
}
#nav.wvcsd h2,
#header.wvcsd h2 {
  font-size: 31.5px;
}
#nav.wvcsd h3,
#header.wvcsd h3 {
  font-size: 24.5px;
}
#nav.wvcsd h4,
#header.wvcsd h4 {
  font-size: 17.5px;
}
#nav.wvcsd h5,
#header.wvcsd h5 {
  font-size: 14px;
}
#nav.wvcsd h6,
#header.wvcsd h6 {
  font-size: 11.9px;
}
#nav.wvcsd h1 small,
#header.wvcsd h1 small {
  font-size: 24.5px;
}
#nav.wvcsd h2 small,
#header.wvcsd h2 small {
  font-size: 17.5px;
}
#nav.wvcsd h3 small,
#header.wvcsd h3 small {
  font-size: 14px;
}
#nav.wvcsd h4 small,
#header.wvcsd h4 small {
  font-size: 14px;
}
#nav.wvcsd .page-header,
#header.wvcsd .page-header {
  padding-bottom: 9px;
  margin: 20px 0 30px;
  border-bottom: 1px solid #eeeeee;
}
#nav.wvcsd ul,
#header.wvcsd ul,
#nav.wvcsd ol,
#header.wvcsd ol {
  padding: 0;
  margin: 0 0 10px 25px;
}
#nav.wvcsd ul ul,
#header.wvcsd ul ul,
#nav.wvcsd ul ol,
#header.wvcsd ul ol,
#nav.wvcsd ol ol,
#header.wvcsd ol ol,
#nav.wvcsd ol ul,
#header.wvcsd ol ul {
  margin-bottom: 0;
}
#nav.wvcsd li,
#header.wvcsd li {
  line-height: 20px;
}
#nav.wvcsd ul.unstyled,
#header.wvcsd ul.unstyled,
#nav.wvcsd ol.unstyled,
#header.wvcsd ol.unstyled {
  margin-left: 0;
  list-style: none;
}
#nav.wvcsd ul.inline,
#header.wvcsd ul.inline,
#nav.wvcsd ol.inline,
#header.wvcsd ol.inline {
  margin-left: 0;
  list-style: none;
}
#nav.wvcsd ul.inline > li,
#header.wvcsd ul.inline > li,
#nav.wvcsd ol.inline > li,
#header.wvcsd ol.inline > li {
  display: inline-block;
  *display: inline;
  /* IE7 inline-block hack */
  *zoom: 1;
  padding-left: 5px;
  padding-right: 5px;
}
#nav.wvcsd dl,
#header.wvcsd dl {
  margin-bottom: 20px;
}
#nav.wvcsd dt,
#header.wvcsd dt,
#nav.wvcsd dd,
#header.wvcsd dd {
  line-height: 20px;
}
#nav.wvcsd dt,
#header.wvcsd dt {
  font-weight: bold;
}
#nav.wvcsd dd,
#header.wvcsd dd {
  margin-left: 10px;
}
#nav.wvcsd .dl-horizontal,
#header.wvcsd .dl-horizontal {
  *zoom: 1;
}
#nav.wvcsd .dl-horizontal:before,
#header.wvcsd .dl-horizontal:before,
#nav.wvcsd .dl-horizontal:after,
#header.wvcsd .dl-horizontal:after {
  display: table;
  content: "";
  line-height: 0;
}
#nav.wvcsd .dl-horizontal:after,
#header.wvcsd .dl-horizontal:after {
  clear: both;
}
#nav.wvcsd .dl-horizontal dt,
#header.wvcsd .dl-horizontal dt {
  float: left;
  width: 160px;
  clear: left;
  text-align: right;
  overflow: hidden;
  text-overflow: ellipsis;
  white-space: nowrap;
}
#nav.wvcsd .dl-horizontal dd,
#header.wvcsd .dl-horizontal dd {
  margin-left: 180px;
}
#nav.wvcsd hr,
#header.wvcsd hr {
  margin: 20px 0;
  border: 0;
  border-top: 1px solid #eeeeee;
  border-bottom: 1px solid #ffffff;
}
#nav.wvcsd abbr[title],
#header.wvcsd abbr[title],
#nav.wvcsd abbr[data-original-title],
#header.wvcsd abbr[data-original-title] {
  cursor: help;
  border-bottom: 1px dotted #999999;
}
#nav.wvcsd abbr.initialism,
#header.wvcsd abbr.initialism {
  font-size: 90%;
  text-transform: uppercase;
}
#nav.wvcsd blockquote,
#header.wvcsd blockquote {
  padding: 0 0 0 15px;
  margin: 0 0 20px;
  border-left: 5px solid #eeeeee;
}
#nav.wvcsd blockquote p,
#header.wvcsd blockquote p {
  margin-bottom: 0;
  font-size: 17.5px;
  font-weight: 300;
  line-height: 1.25;
}
#nav.wvcsd blockquote small,
#header.wvcsd blockquote small {
  display: block;
  line-height: 20px;
  color: #999999;
}
#nav.wvcsd blockquote small:before,
#header.wvcsd blockquote small:before {
  content: '\2014 \00A0';
}
#nav.wvcsd blockquote.pull-right,
#header.wvcsd blockquote.pull-right {
  float: right;
  padding-right: 15px;
  padding-left: 0;
  border-right: 5px solid #eeeeee;
  border-left: 0;
}
#nav.wvcsd blockquote.pull-right p,
#header.wvcsd blockquote.pull-right p,
#nav.wvcsd blockquote.pull-right small,
#header.wvcsd blockquote.pull-right small {
  text-align: right;
}
#nav.wvcsd blockquote.pull-right small:before,
#header.wvcsd blockquote.pull-right small:before {
  content: '';
}
#nav.wvcsd blockquote.pull-right small:after,
#header.wvcsd blockquote.pull-right small:after {
  content: '\00A0 \2014';
}
#nav.wvcsd q:before,
#header.wvcsd q:before,
#nav.wvcsd q:after,
#header.wvcsd q:after,
#nav.wvcsd blockquote:before,
#header.wvcsd blockquote:before,
#nav.wvcsd blockquote:after,
#header.wvcsd blockquote:after {
  content: "";
}
#nav.wvcsd address,
#header.wvcsd address {
  display: block;
  margin-bottom: 20px;
  font-style: normal;
  line-height: 20px;
}
#nav.wvcsd .pull-right,
#header.wvcsd .pull-right {
  float: right;
}
#nav.wvcsd .pull-left,
#header.wvcsd .pull-left {
  float: left;
}
#nav.wvcsd .hide,
#header.wvcsd .hide {
  display: none;
}
#nav.wvcsd .show,
#header.wvcsd .show {
  display: block;
}
#nav.wvcsd .invisible,
#header.wvcsd .invisible {
  visibility: hidden;
}
#nav.wvcsd .affix,
#header.wvcsd .affix {
  position: fixed;
}
#nav.wvcsd .well,
#header.wvcsd .well {
  min-height: 20px;
  padding: 19px;
  margin-bottom: 20px;
  background-color: #f5f5f5;
  border: 1px solid #e3e3e3;
  -webkit-border-radius: 4px;
  -moz-border-radius: 4px;
  border-radius: 4px;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.05);
  -moz-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.05);
  box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.05);
}
#nav.wvcsd .well blockquote,
#header.wvcsd .well blockquote {
  border-color: #ddd;
  border-color: rgba(0, 0, 0, 0.15);
}
#nav.wvcsd .well-large,
#header.wvcsd .well-large {
  padding: 24px;
  -webkit-border-radius: 6px;
  -moz-border-radius: 6px;
  border-radius: 6px;
}
#nav.wvcsd .well-small,
#header.wvcsd .well-small {
  padding: 9px;
  -webkit-border-radius: 3px;
  -moz-border-radius: 3px;
  border-radius: 3px;
}
#nav.wvcsd .navbar,
#header.wvcsd .navbar {
  margin-bottom: 0;
  font-size: 14px;
}
#nav.wvcsd .global-nav-text,
#header.wvcsd .global-nav-text {
  color: #fff;
  text-shadow: 2px 0 2px #ff6600;
  text-transform: uppercase;
  padding: 15px 0;
}
#nav.wvcsd .global-nav-text:hover,
#header.wvcsd .global-nav-text:hover {
  color: #ff6600;
  text-shadow: none;
  background-color: #fff3e2;
  background-image: -moz-linear-gradient(top, #ffebcf, #ffffff);
  background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#ffebcf), to(#ffffff));
  background-image: -webkit-linear-gradient(top, #ffebcf, #ffffff);
  background-image: -o-linear-gradient(top, #ffebcf, #ffffff);
  background-image: linear-gradient(to bottom, #ffebcf, #ffffff);
  background-repeat: repeat-x;
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffffebcf', endColorstr='#ffffffff', GradientType=0);
}
#nav.wvcsd .icon-down-arrow,
#header.wvcsd .icon-down-arrow {
  background: url(../img/icon_down_v2.png) 0 0 no-repeat;
  display: inline-block;
  width: 11px;
  height: 7px;
  position: relative;
  top: 4px;
  margin-left: 5px;
}
#nav.wvcsd .navbar .navbar-inner,
#header.wvcsd .navbar .navbar-inner {
  padding: 0;
  width: 940px;
  margin: 0 auto;
  background-image: none;
  background-color: transparent;
  filter: -;
  border: none;
  box-shadow: none;
}
#nav.wvcsd .navbar .nav,
#header.wvcsd .navbar .nav {
  margin: 0;
  width: 100%;
  padding: 0;
}
#nav.wvcsd .navbar .nav > li,
#header.wvcsd .navbar .nav > li {
  padding: 0;
}
#nav.wvcsd .navbar .nav > li > a,
#header.wvcsd .navbar .nav > li > a {
  font-weight: bold;
  text-align: center;
  border-right: 1px solid #fed190;
  color: #fff;
  text-shadow: 2px 0 2px #ff6600;
  text-transform: uppercase;
  padding: 15px 0;
}
#nav.wvcsd .navbar .nav > li > a:hover,
#header.wvcsd .navbar .nav > li > a:hover {
  color: #ff6600;
  text-shadow: none;
  background-color: #fff3e2;
  background-image: -moz-linear-gradient(top, #ffebcf, #ffffff);
  background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#ffebcf), to(#ffffff));
  background-image: -webkit-linear-gradient(top, #ffebcf, #ffffff);
  background-image: -o-linear-gradient(top, #ffebcf, #ffffff);
  background-image: linear-gradient(to bottom, #ffebcf, #ffffff);
  background-repeat: repeat-x;
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffffebcf', endColorstr='#ffffffff', GradientType=0);
}
#nav.wvcsd .navbar .nav > li > a:hover .icon-down-arrow,
#header.wvcsd .navbar .nav > li > a:hover .icon-down-arrow,
#nav.wvcsd .navbar .nav > li > a.active-trail .icon-down-arrow,
#header.wvcsd .navbar .nav > li > a.active-trail .icon-down-arrow {
  background-position: left bottom;
}
#nav.wvcsd .navbar .nav > li > a:focus,
#header.wvcsd .navbar .nav > li > a:focus {
  color: #ffffff;
}
#nav.wvcsd .navbar .nav > li > a:focus:hover,
#header.wvcsd .navbar .nav > li > a:focus:hover {
  color: #ff6600;
  text-shadow: none;
}
#nav.wvcsd .navbar .nav > li:first-child > a,
#header.wvcsd .navbar .nav > li:first-child > a {
  border-left: 1px solid #fed190;
}
#nav.wvcsd .navbar .nav > .active > a,
#header.wvcsd .navbar .nav > .active > a,
#nav.wvcsd .navbar .nav > .active-trail > a,
#header.wvcsd .navbar .nav > .active-trail > a {
  box-shadow: none;
  color: #ff6600;
  text-shadow: none;
  background-color: #fff3e2;
  background-image: -moz-linear-gradient(top, #ffebcf, #ffffff);
  background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#ffebcf), to(#ffffff));
  background-image: -webkit-linear-gradient(top, #ffebcf, #ffffff);
  background-image: -o-linear-gradient(top, #ffebcf, #ffffff);
  background-image: linear-gradient(to bottom, #ffebcf, #ffffff);
  background-repeat: repeat-x;
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffffebcf', endColorstr='#ffffffff', GradientType=0);
  filter: -;
}
#nav.wvcsd ul.nav > li.dropdown,
#header.wvcsd ul.nav > li.dropdown {
  background: none;
  font-family: 'Gill Sans W01 Book', Arial, sans-serif;
}
#nav.wvcsd .navbar .nav li.dropdown.open > .dropdown-toggle,
#header.wvcsd .navbar .nav li.dropdown.open > .dropdown-toggle,
#nav.wvcsd .navbar .nav li.dropdown.active > .dropdown-toggle,
#header.wvcsd .navbar .nav li.dropdown.active > .dropdown-toggle,
#nav.wvcsd .navbar .nav li.dropdown.open.active > .dropdown-toggle,
#header.wvcsd .navbar .nav li.dropdown.open.active > .dropdown-toggle {
  z-index: 1001;
  position: relative;
  color: #ff6600;
  text-shadow: none;
  background-color: #fff3e2;
  background-image: -moz-linear-gradient(top, #ffebcf, #ffffff);
  background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#ffebcf), to(#ffffff));
  background-image: -webkit-linear-gradient(top, #ffebcf, #ffffff);
  background-image: -o-linear-gradient(top, #ffebcf, #ffffff);
  background-image: linear-gradient(to bottom, #ffebcf, #ffffff);
  background-repeat: repeat-x;
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffffebcf', endColorstr='#ffffffff', GradientType=0);
}
#nav.wvcsd .navbar .nav li.dropdown.open > .dropdown-toggle .icon-down-arrow,
#header.wvcsd .navbar .nav li.dropdown.open > .dropdown-toggle .icon-down-arrow,
#nav.wvcsd .navbar .nav li.dropdown.active > .dropdown-toggle .icon-down-arrow,
#header.wvcsd .navbar .nav li.dropdown.active > .dropdown-toggle .icon-down-arrow,
#nav.wvcsd .navbar .nav li.dropdown.open.active > .dropdown-toggle .icon-down-arrow,
#header.wvcsd .navbar .nav li.dropdown.open.active > .dropdown-toggle .icon-down-arrow {
  background-position: left bottom;
}
.ie8 #nav.wvcsd .navbar .nav li.dropdown.active > .dropdown-toggle,
.ie8 #header.wvcsd .navbar .nav li.dropdown.active > .dropdown-toggle {
  filter: -;
}
#nav.wvcsd .navbar .nav > .active > a,
#header.wvcsd .navbar .nav > .active > a,
#nav.wvcsd .navbar .nav > .active > a:hover,
#header.wvcsd .navbar .nav > .active > a:hover,
#nav.wvcsd .navbar .nav > .active > a:focus,
#header.wvcsd .navbar .nav > .active > a:focus {
  box-shadow: none;
}
#nav.wvcsd .navbar .nav > .active > a:hover,
#header.wvcsd .navbar .nav > .active > a:hover {
  border-right: 1px solid rgba(255, 255, 255, 0.75) !important;
}
#nav.wvcsd .navbar .nav > li:first-child.active > a:hover,
#header.wvcsd .navbar .nav > li:first-child.active > a:hover {
  border-left: 1px solid rgba(255, 255, 255, 0.75) !important;
}
#nav.wvcsd .navbar .nav .dropdown-menu,
#header.wvcsd .navbar .nav .dropdown-menu {
  padding: 20px;
  margin: 0;
  -webkit-border-radius: 0;
  -moz-border-radius: 0;
  border-radius: 0;
  border: none;
  border-top: none;
  -webkit-box-shadow: 5px 0 9px rgba(0, 0, 0, 0.35);
  -moz-box-shadow: 5px 0 9px rgba(0, 0, 0, 0.35);
  box-shadow: 5px 0 9px rgba(0, 0, 0, 0.35);
  /* IE 8 support for drop shadow */
  -ms-filter: "progid:DXImageTransform.Microsoft.Shadow(Strength=4, Direction=135, Color='#000000')";
}
#nav.wvcsd .navbar .nav .dropdown-menu > li,
#header.wvcsd .navbar .nav .dropdown-menu > li {
  padding: 0 0 10px 0;
  font-size: 15px;
  list-style-image: none;
  display: block;
}
#nav.wvcsd .navbar .nav .dropdown-menu > li > a,
#header.wvcsd .navbar .nav .dropdown-menu > li > a {
  padding: 0;
  color: #2d78ab;
  display: inline;
}
#nav.wvcsd .navbar .nav .dropdown-menu > li > a:hover,
#header.wvcsd .navbar .nav .dropdown-menu > li > a:hover {
  text-decoration: underline;
}
#nav.wvcsd .navbar .nav .dropdown-menu > .dropdown-title,
#header.wvcsd .navbar .nav .dropdown-menu > .dropdown-title {
  font-size: 17px;
  font-family: 'Gill Sans W01 Bold', Arial, sans-serif;
  color: #2d78ab;
}
#nav.wvcsd .navbar .nav .dropdown-menu .dropdown-image,
#header.wvcsd .navbar .nav .dropdown-menu .dropdown-image {
  position: absolute;
  right: 0;
  bottom: 0;
  padding-bottom: 0;
}
#nav.wvcsd .navbar .nav .dropdown-menu .dropdown-image a,
#header.wvcsd .navbar .nav .dropdown-menu .dropdown-image a {
  overflow: hidden;
  text-indent: -999px;
  display: block;
}
#nav.wvcsd .navbar .nav .dropdown-menu .dropdown-image a:hover,
#header.wvcsd .navbar .nav .dropdown-menu .dropdown-image a:hover {
  background: #f60 !important;
  display: block !important;
  opacity: 0;
  filter: alpha(opacity=0);
}
#nav.wvcsd .navbar ul li.expanded,
#header.wvcsd .navbar ul li.expanded {
  list-style-image: none;
  list-style-type: none;
}
#nav.wvcsd .get-involved-lists ul.unstyled li,
#header.wvcsd .get-involved-lists ul.unstyled li {
  padding: 0;
  font-size: 14px;
}
#nav.wvcsd .dropdown-menu > li > a:hover,
#header.wvcsd .dropdown-menu > li > a:hover,
#nav.wvcsd .dropdown-menu > li > a:focus,
#header.wvcsd .dropdown-menu > li > a:focus,
#nav.wvcsd .dropdown-submenu:hover > a,
#header.wvcsd .dropdown-submenu:hover > a,
#nav.wvcsd .dropdown-submenu:focus > a,
#header.wvcsd .dropdown-submenu:focus > a {
  background: none;
  color: inherit;
}
#nav.wvcsd .dropdown-menu > .active > a,
#header.wvcsd .dropdown-menu > .active > a,
#nav.wvcsd .dropdown-menu > .active > a:hover,
#header.wvcsd .dropdown-menu > .active > a:hover,
#nav.wvcsd .dropdown-menu > .active > a:focus,
#header.wvcsd .dropdown-menu > .active > a:focus {
  background: none;
}
#nav.wvcsd .navbar .nav > li > .dropdown-menu:before,
#header.wvcsd .navbar .nav > li > .dropdown-menu:before,
#nav.wvcsd .navbar .nav > li > .dropdown-menu:after,
#header.wvcsd .navbar .nav > li > .dropdown-menu:after {
  display: none;
}
#nav.wvcsd .navbar .nav,
#header.wvcsd .navbar .nav {
  /* Our Impact */
  /* Sponsor A Child */
  /* Ways to Give */
  /* Get Involved */
  /* About Us */
  /* My World Vision */
}
#nav.wvcsd .navbar .nav .menu-mlid-2283,
#header.wvcsd .navbar .nav .menu-mlid-2283 {
  width: 144px;
}
#nav.wvcsd .navbar .nav .menu-mlid-2283 .dropdown-menu,
#header.wvcsd .navbar .nav .menu-mlid-2283 .dropdown-menu {
  width: 284px;
  min-height: 290px;
  background: #ffffff url(../img/drop_bkgd_our_impact_v1.jpg) right bottom no-repeat;
}
#nav.wvcsd .navbar .nav .menu-mlid-2283 .menu-mlid-2525,
#header.wvcsd .navbar .nav .menu-mlid-2283 .menu-mlid-2525 {
  position: absolute;
  left: 190px;
  top: 50px;
}
#nav.wvcsd .navbar .nav .menu-mlid-2283 .menu-mlid-2539,
#header.wvcsd .navbar .nav .menu-mlid-2283 .menu-mlid-2539 {
  position: absolute;
  left: 190px;
  top: 80px;
}
#nav.wvcsd .navbar .nav .menu-mlid-2283 .dropdown-image a,
#header.wvcsd .navbar .nav .menu-mlid-2283 .dropdown-image a {
  width: 184px;
  height: 125px;
}
#nav.wvcsd .navbar .nav .menu-mlid-2640,
#header.wvcsd .navbar .nav .menu-mlid-2640 {
  width: 180px;
}
#nav.wvcsd .navbar .nav .menu-mlid-2640 .dropdown-menu,
#header.wvcsd .navbar .nav .menu-mlid-2640 .dropdown-menu {
  width: 290px;
  min-height: 170px;
  background: #ffffff url(../img/drop_bkgd_sponsor_child_v1.jpg) right bottom no-repeat;
}
#nav.wvcsd .navbar .nav .menu-mlid-2640 .dropdown-image a,
#header.wvcsd .navbar .nav .menu-mlid-2640 .dropdown-image a {
  width: 330px;
  height: 125px;
}
#nav.wvcsd .navbar .nav .menu-mlid-2369,
#header.wvcsd .navbar .nav .menu-mlid-2369 {
  width: 150px;
}
#nav.wvcsd .navbar .nav .menu-mlid-2369 .dropdown-menu,
#header.wvcsd .navbar .nav .menu-mlid-2369 .dropdown-menu {
  width: 392px;
  min-height: 170px;
  background: #ffffff url(../img/drop_bkgd_ways_to_give_v1.jpg) right bottom no-repeat;
}
#nav.wvcsd .navbar .nav .menu-mlid-2369 .dropdown-menu > li,
#header.wvcsd .navbar .nav .menu-mlid-2369 .dropdown-menu > li {
  float: left;
  width: 170px;
}
#nav.wvcsd .navbar .nav .menu-mlid-2369 .dropdown-menu > .dropdown-title,
#header.wvcsd .navbar .nav .menu-mlid-2369 .dropdown-menu > .dropdown-title {
  width: 100%;
}
#nav.wvcsd .navbar .nav .menu-mlid-2369 .dropdown-image,
#header.wvcsd .navbar .nav .menu-mlid-2369 .dropdown-image {
  right: -38px;
}
#nav.wvcsd .navbar .nav .menu-mlid-2369 .dropdown-image a,
#header.wvcsd .navbar .nav .menu-mlid-2369 .dropdown-image a {
  width: 130px;
  height: 140px;
}
#nav.wvcsd .navbar .nav .menu-mlid-2365,
#header.wvcsd .navbar .nav .menu-mlid-2365 {
  width: 156px;
}
#nav.wvcsd .navbar .nav .menu-mlid-2365 .dropdown-menu,
#header.wvcsd .navbar .nav .menu-mlid-2365 .dropdown-menu {
  width: 242px;
  padding-bottom: 150px;
  background: #ffffff url(../img/drop_bkgd_get_involved_v2.jpg) right bottom no-repeat;
}
#nav.wvcsd .navbar .nav .menu-mlid-2365 .dropdown-image a,
#header.wvcsd .navbar .nav .menu-mlid-2365 .dropdown-image a {
  width: 280px;
  height: 150px;
}
#nav.wvcsd .navbar .nav .menu-mlid-2281,
#header.wvcsd .navbar .nav .menu-mlid-2281 {
  width: 126px;
}
#nav.wvcsd .navbar .nav .menu-mlid-2281 .dropdown-menu,
#header.wvcsd .navbar .nav .menu-mlid-2281 .dropdown-menu {
  width: 393px;
  margin-left: -307px;
  min-height: 190px;
  background: #ffffff url(../img/drop_bkgd_about_us_v2.jpg) right bottom no-repeat;
}
#nav.wvcsd .navbar .nav .menu-mlid-2281 .dropdown-menu > li,
#header.wvcsd .navbar .nav .menu-mlid-2281 .dropdown-menu > li {
  float: left;
  width: 170px;
}
#nav.wvcsd .navbar .nav .menu-mlid-2281 .dropdown-menu > .dropdown-title,
#header.wvcsd .navbar .nav .menu-mlid-2281 .dropdown-menu > .dropdown-title {
  width: 100%;
}
#nav.wvcsd .navbar .nav .menu-mlid-2281 .dropdown-image,
#header.wvcsd .navbar .nav .menu-mlid-2281 .dropdown-image {
  right: -78px;
}
#nav.wvcsd .navbar .nav .menu-mlid-2281 .dropdown-image a,
#header.wvcsd .navbar .nav .menu-mlid-2281 .dropdown-image a {
  width: 85px;
  height: 172px;
}
#nav.wvcsd .navbar .nav .menu-mlid-2367,
#header.wvcsd .navbar .nav .menu-mlid-2367 {
  width: 184px;
}
#nav.wvcsd .navbar .nav .menu-mlid-2367 .dropdown-menu,
#header.wvcsd .navbar .nav .menu-mlid-2367 .dropdown-menu {
  width: 271px;
  padding-bottom: 164px;
  margin-left: -127px;
  background: #ffffff url(../img/drop_bkgd_my_wv_v1.jpg) right bottom no-repeat;
}
#nav.wvcsd .navbar .nav .menu-mlid-2367 .dropdown-image a,
#header.wvcsd .navbar .nav .menu-mlid-2367 .dropdown-image a {
  width: 180px;
  height: 170px;
}
#nav.wvcsd .navbar .nav li.dropdown.active > .dropdown-toggle,
#header.wvcsd .navbar .nav li.dropdown.active > .dropdown-toggle,
#nav.wvcsd .navbar .nav > .active-trail > a.active-trail,
#header.wvcsd .navbar .nav > .active-trail > a.active-trail {
  background-color: #e55c00;
  color: #ffffff;
  text-shadow: 2px 0 2px #ff6600;
  background-image: none;
}
#nav.wvcsd .navbar .nav li.dropdown.active > .dropdown-toggle .icon-down-arrow,
#header.wvcsd .navbar .nav li.dropdown.active > .dropdown-toggle .icon-down-arrow,
#nav.wvcsd .navbar .nav > .active-trail > a.active-trail .icon-down-arrow,
#header.wvcsd .navbar .nav > .active-trail > a.active-trail .icon-down-arrow {
  background-position: 0 0;
}
/*
// Global Nav Alerts
// ====================
*/
#block-disaster-alerts.eoy {
  background: #006599;
}
#block-disaster-alerts.eoy .disaster-alert .alert-call-to-action h2 {
  color: white;
}
#block-disaster-alerts.eoy .disaster-alert .alert-call-to-action .disaster-alert-learn-more-link a {
  color: #fa802d;
}
#block-disaster-alerts.eoy .disaster-alert .disaster-alert-donate-widget .donations-submit-wrapper-left {
  background-image: url('../img/alert-button-rounded-orange.png');
}
#block-disaster-alerts.eoy .disaster-alert .disaster-alert-donate-widget .donations-submit-wrapper-left .donations-submit-wrapper-right {
  background-image: url('../img/alert-button-rounded-orange.png');
}
#block-disaster-alerts.eoy .disaster-alert .disaster-alert-donate-widget .donations-submit-wrapper-left .donations-submit-wrapper-right .donations-submit-wrapper {
  background-color: #f36f18;
}
#block-disaster-alerts.eoy .disaster-alert .disaster-alert-donate-widget .donations-submit-wrapper-left .donations-submit-wrapper-right .donations-submit-wrapper:hover {
  background-color: #f69352;
}
#block-disaster-alerts {
  background: #000;
  color: #fff;
  position: relative;
}
#block-disaster-alerts .external-link {
  position: relative;
  top: 2px;
  background-position: -21px -36px;
}
#block-disaster-alerts .container {
  position: relative;
}
#block-disaster-alerts .disaster-alert-wrapper {
  border-top: 1px solid #efefef;
}
#block-disaster-alerts .disaster-alert-wrapper:first-child {
  border-top: none;
}
#block-disaster-alerts .disaster-alert {
  margin-right: auto;
  margin-left: auto;
  *zoom: 1;
  width: 940px;
  padding: 12px 0;
}
#block-disaster-alerts .disaster-alert:before,
#block-disaster-alerts .disaster-alert:after {
  display: table;
  content: "";
  line-height: 0;
}
#block-disaster-alerts .disaster-alert:after {
  clear: both;
}
#block-disaster-alerts .disaster-alert .alert-call-to-action {
  display: inline;
  float: left;
  width: 515px;
  padding-left: 100px;
  background: url(../img/alert-general.png) 8px 0 no-repeat;
  min-height: 78px;
}
#block-disaster-alerts .disaster-alert .alert-call-to-action.none {
  width: 615px;
  padding-left: 0px;
  background: none;
}
#block-disaster-alerts .disaster-alert .alert-call-to-action.eoy {
  background-image: url(../img/alert-clock.png);
}
#block-disaster-alerts .disaster-alert .alert-call-to-action.tornado {
  background-image: url(../img/alert-tornado.png);
}
#block-disaster-alerts .disaster-alert .alert-call-to-action.flood {
  background-image: url(../img/alert-flood.png);
}
#block-disaster-alerts .disaster-alert .alert-call-to-action.hurricane-tsunami {
  background-image: url(../img/alert-hurricane-tsunami.png);
}
#block-disaster-alerts .disaster-alert .alert-call-to-action.earthquake {
  background-image: url(../img/alert-earthquake.png);
}
#block-disaster-alerts .disaster-alert .alert-call-to-action.famine-drought {
  background-image: url(../img/alert-famine-drought.png);
}
#block-disaster-alerts .disaster-alert .alert-call-to-action h2 {
  color: #ff0000;
  font-size: 18px;
  text-transform: uppercase;
  font-family: 'Gill Sans W01 Bold', Arial, sans-serif;
  margin: 0;
  line-height: 1.2em;
  text-align: left;
}
#block-disaster-alerts .disaster-alert .alert-call-to-action p {
  margin: 0;
  font-size: 15px;
}
#block-disaster-alerts .disaster-alert .alert-call-to-action .disaster-alert-learn-more-link a {
  color: #ff0000;
  font-family: 'Gill Sans W01 Bold', Arial, sans-serif;
}
#block-disaster-alerts .disaster-alert .disaster-alert-donate-widget {
  width: 333px;
  position: absolute;
  top: 50%;
  right: 0;
  margin-top: -20px;
}
#block-disaster-alerts .disaster-alert .disaster-alert-donate-widget form {
  margin-bottom: 0;
}
#block-disaster-alerts .disaster-alert .disaster-alert-donate-widget #clientsidevalidation-wvcsd-alert-donate-form-errors {
  margin: 0;
}
#block-disaster-alerts .disaster-alert .disaster-alert-donate-widget .form-item {
  margin: 0;
}
#block-disaster-alerts .disaster-alert .disaster-alert-donate-widget .form-item-xxwvotheramt {
  width: 58px;
  padding: 4px 8px 4px 16px;
  display: inline;
  float: left;
  margin-bottom: 0;
  margin-left: 70px;
  -webkit-border-radius: 0;
  -moz-border-radius: 0;
  border-radius: 0;
  border: 2px solid #8a8076;
  background: #ffffff url(../img/alert-dollar.png) 4px 9px no-repeat;
}
#block-disaster-alerts .disaster-alert .disaster-alert-donate-widget .form-item-xxwvotheramt .form-text {
  font-family: 'Gill Sans W01 Book', Arial, sans-serif;
  width: 58px;
  font-size: 16px;
  line-height: 26px;
  height: 26px;
  border: none;
  background: none;
  margin: 0;
  padding: 0;
  -webkit-box-shadow: 0 0 0;
  -moz-box-shadow: 0 0 0;
  box-shadow: 0 0 0;
  outline: none;
}
#block-disaster-alerts .disaster-alert .disaster-alert-donate-widget .form-item-xxwvotheramt .form-text:focus {
  border: none;
  -webkit-box-shadow: 0 0 0;
  -moz-box-shadow: 0 0 0;
  box-shadow: 0 0 0;
}
#block-disaster-alerts .disaster-alert .disaster-alert-donate-widget .donations-submit-wrapper-left {
  display: inline;
  float: right;
  margin-left: 15px;
  padding-left: 16px;
  background: url(../img/alert-button-rounded.png) 0 0 no-repeat;
  cursor: pointer;
}
#block-disaster-alerts .disaster-alert .disaster-alert-donate-widget .donations-submit-wrapper-left .donations-submit-wrapper-right {
  padding-right: 16px;
  background: url(../img/alert-button-rounded.png) right 0 no-repeat;
}
#block-disaster-alerts .disaster-alert .disaster-alert-donate-widget .donations-submit-wrapper-left .donations-submit-wrapper-right .donations-submit-wrapper {
  background: #ff0000;
}
#block-disaster-alerts .disaster-alert .disaster-alert-donate-widget .donations-submit-wrapper-left .donations-submit-wrapper-right .donations-submit-wrapper .form-submit {
  background: none !important;
  color: #fff;
  border: none;
  -webkit-border-radius: 0 !important;
  -moz-border-radius: 0 !important;
  border-radius: 0 !important;
  font-family: 'Gill Sans W01 Bold', Arial, sans-serif;
  font-size: 15px;
  text-shadow: 2px 0 2px rgba(0, 0, 0, 0.75);
  padding: 9px 4px;
  height: 37px;
  margin: 0;
  text-transform: uppercase;
}
#block-disaster-alerts .disaster-alert .disaster-alert-donate-widget .donations-submit-wrapper-left:hover {
  background-position: 0 -37px;
}
#block-disaster-alerts .disaster-alert .disaster-alert-donate-widget .donations-submit-wrapper-left:hover .donations-submit-wrapper-right {
  background-position: right -37px;
}
#block-disaster-alerts .disaster-alert .disaster-alert-donate-widget .donations-submit-wrapper-left:hover .donations-submit-wrapper {
  background: #ff4040;
}
#block-disaster-alerts #alert-modal p {
  font-size: 17px;
  line-height: 20px;
}
.ie7 #block-disaster-alerts .disaster-alert .alert-call-to-action p {
  font-size: 14px;
}
#header.wvcsd {
  background: #fff !important;
  filter: none;
}
.hasPlaceholder {
  color: #777;
}
.ie7 #nav.wvcsd .navbar .nav li.dropdown.active > .dropdown-toggle,
.ie9 #nav.wvcsd .navbar .nav li.dropdown.active > .dropdown-toggle {
  filter: -;
}
.ie7 #nav.wvcsd .navbar .nav li.dropdown.active.open > .dropdown-toggle,
.ie8 #nav.wvcsd .navbar .nav li.dropdown.active.open > .dropdown-toggle,
.ie9 #nav.wvcsd .navbar .nav li.dropdown.active.open > .dropdown-toggle {
  background-color: #fff3e2;
  background-image: -moz-linear-gradient(top, #ffebcf, #ffffff);
  background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#ffebcf), to(#ffffff));
  background-image: -webkit-linear-gradient(top, #ffebcf, #ffffff);
  background-image: -o-linear-gradient(top, #ffebcf, #ffffff);
  background-image: linear-gradient(to bottom, #ffebcf, #ffffff);
  background-repeat: repeat-x;
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffffebcf', endColorstr='#ffffffff', GradientType=0);
}
.ie7 #nav.wvcsd .navbar .nav .dropdown-menu > li {
  list-style: none;
}
.ie7 #nav.wvcsd .navbar .nav > li > a {
  height: 20px;
}
.ie7 #nav.wvcsd .dropdown-menu {
  top: 50px;
}
.ie7 #nav.wvcsd .navbar .nav .dropdown-menu > .dropdown-title a,
.ie8 #nav.wvcsd .navbar .nav .dropdown-menu > .dropdown-title a {
  font-weight: bold;
}
.ie7 #header.wvcsd .interact .links {
  clear: right;
  width: 350px;
}
.ie7 #header.wvcsd .interact .links ul li {
  float: left;
  display: block;
}
.ie7 #header.wvcsd .interact .links .text {
  float: left;
  display: block;
}
.ie7 #header.wvcsd .interact .links .text li:first-child {
  padding-left: 0;
}
.ie7 #header.wvcsd .interact .links .text .icon-shopping-cart {
  float: left;
  display: block;
}
.ie7 #header.wvcsd .interact .links .social {
  float: right;
  display: block;
}
#nav.wvcsd .navbar .nav .menu-mlid-2367 .dropdown-menu {
  background: #ffffff url(../img/drop_bkgd_my_wv_v3.jpg) right bottom no-repeat;
}
.modal-backdrop {
  position: fixed;
  top: 0;
  right: 0;
  bottom: 0;
  left: 0;
  z-index: 1040;
  background-color: #000000;
}
.modal-backdrop.fade {
  opacity: 0;
}
.fade.in {
  opacity: 1;
  filter: alpha(opacity=100);
}
/*
.modal-backdrop,
.modal-backdrop.fade.in {
  .opacity(80);
}
*/
.fade {
  opacity: 0;
  -webkit-transition: opacity .15s linear;
  -moz-transition: opacity .15s linear;
  -o-transition: opacity .15s linear;
  transition: opacity .15s linear;
}
.modal {
  position: fixed;
  top: 10%;
  left: 50%;
  z-index: 1050;
  width: 560px;
  margin-left: -280px;
  background-color: #ffffff;
  border: 1px solid #999;
  border: 1px solid rgba(0, 0, 0, 0.3);
  *border: 1px solid #999;
  /* IE6-7 */
  -webkit-border-radius: 6px;
  -moz-border-radius: 6px;
  border-radius: 6px;
  -webkit-box-shadow: 0 3px 7px rgba(0, 0, 0, 0.3);
  -moz-box-shadow: 0 3px 7px rgba(0, 0, 0, 0.3);
  box-shadow: 0 3px 7px rgba(0, 0, 0, 0.3);
  -webkit-background-clip: padding-box;
  -moz-background-clip: padding-box;
  background-clip: padding-box;
  outline: none;
}
.modal.fade {
  -webkit-transition: opacity .3s linear, top .3s ease-out;
  -moz-transition: opacity .3s linear, top .3s ease-out;
  -o-transition: opacity .3s linear, top .3s ease-out;
  transition: opacity .3s linear, top .3s ease-out;
  top: -25%;
}
.modal.fade.in {
  top: 10%;
}
.modal-header {
  padding: 9px 15px;
  border-bottom: 1px solid #eee;
}
.modal-header .close {
  margin-top: 2px;
}
.modal-header h3 {
  margin: 0;
  line-height: 30px;
}
.modal-body {
  position: relative;
  overflow-y: auto;
  max-height: 400px;
  padding: 15px;
}
.modal-form {
  margin-bottom: 0;
}
.modal-footer {
  padding: 14px 15px 15px;
  margin-bottom: 0;
  text-align: right;
  background-color: #f5f5f5;
  border-top: 1px solid #ddd;
  -webkit-border-radius: 0 0 6px 6px;
  -moz-border-radius: 0 0 6px 6px;
  border-radius: 0 0 6px 6px;
  -webkit-box-shadow: inset 0 1px 0 #ffffff;
  -moz-box-shadow: inset 0 1px 0 #ffffff;
  box-shadow: inset 0 1px 0 #ffffff;
  *zoom: 1;
}
.modal-footer:before,
.modal-footer:after {
  display: table;
  content: "";
  line-height: 0;
}
.modal-footer:after {
  clear: both;
}
.modal-footer .btn + .btn {
  margin-left: 5px;
  margin-bottom: 0;
}
.modal-footer .btn-group .btn + .btn {
  margin-left: -1px;
}
.modal-footer .btn-block + .btn-block {
  margin-left: 0;
}
.hide {
  display: none;
}
.modal .btn {
  text-decoration: none;
  -webkit-border-radius: 20px;
  -moz-border-radius: 20px;
  border-radius: 20px;
  font-size: 16px;
  line-height: 22px;
  padding: 9px 15px;
  text-transform: uppercase;
  font-family: 'Gill Sans W01 Medium', Arial, sans-serif;
  font-weight: normal;
  display: inline-block;
  margin-bottom: 0;
  color: #333;
  text-align: center;
  text-shadow: 0 1px 1px rgba(255, 255, 255, 0.75);
  vertical-align: middle;
  cursor: pointer;
  background-color: #f5f5f5;
  background-image: linear-gradient(to bottom, #ffffff, #e6e6e6);
  background-repeat: repeat-x;
  border: 1px solid #ccc;
  border-color: rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.25);
  border-bottom-color: #b3b3b3;
  filter: progid:DXImageTransform.Microsoft.gradient(enabled=false);
  -webkit-box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px rgba(0, 0, 0, 0.05);
  -moz-box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px rgba(0, 0, 0, 0.05);
  box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px rgba(0, 0, 0, 0.05);
}
.close {
  float: right;
  font-size: 20px;
  font-weight: bold;
  line-height: 20px;
  color: #000;
  text-shadow: 0 1px 0 #fff;
  opacity: .2;
  filter: alpha(opacity=20);
  cursor: pointer;
}
/*
// World Vision Core Site Development
// WVCSD Header Related Rules
// v1.0
// ==========================================
*/
.clearfix {
  *zoom: 1;
}
.clearfix:before,
.clearfix:after {
  display: table;
  content: "";
  line-height: 0;
}
.clearfix:after {
  clear: both;
}
.hide-text {
  font: 0/0 a;
  color: transparent;
  text-shadow: none;
  background-color: transparent;
  border: 0;
}
.input-block-level {
  display: block;
  width: 100%;
  min-height: 30px;
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
}
/*
// Color Variables & Helper Classes
// ==================================
*/
.ir {
  overflow: hidden;
  text-indent: -999px;
}
.regular-text {
  font-family: 'Gill Sans W01 Book', Arial, sans-serif;
}
.light-text {
  font-family: 'Gill Sans W01 Light', Arial, sans-serif;
}
.heavy-text {
  font-family: 'Gill Sans W01 Bold', Arial, sans-serif;
}
body.wvcsd {
  background: #efefef;
  font-family: 'Gill Sans W01 Book', Arial, sans-serif;
  margin: 0;
}
/*
// External links.
// ======
*/
.external-link {
  display: inline-block;
  background: url(../img/ext_link.png) -21px -18px no-repeat;
  width: 12px;
  height: 18px;
  text-indent: -999em;
  padding-left: 5px;
}
.container {
  position: relative;
  width: 940px;
  margin: 0 auto;
}
/*
// Header
// ======
*/
#header.wvcsd {
  background: #fff !important;
  height: 60px !important;
  padding: 15px 0 25px;
}
#header.wvcsd .brand a {
  display: inline-block;
  float: left;
}
#header.wvcsd .logo {
  width: 149px;
  height: 58px;
  background: url(../img/logo_world_vision_v2.png) 0 0 no-repeat;
  overflow: hidden;
  text-indent: -999px;
}
#header.wvcsd .logo:hover {
  background-position: left bottom;
}
#header.wvcsd .tagline {
  position: relative;
  top: 30px;
  left: 20px;
  font-size: 18px;
  font-family: 'Gill Sans W01 Light', Arial, sans-serif;
  color: #000000;
}
#header.wvcsd .tagline:hover {
  text-decoration: none;
}
#header.wvcsd .interact div {
  float: right;
}
#header.wvcsd .interact form {
  margin-bottom: 0;
}
#header.wvcsd .interact input[type="text"] {
  margin-right: 4px;
  -webkit-box-shadow: 0 0 5px rgba(199, 199, 199, 0.35);
  -moz-box-shadow: 0 0 5px rgba(199, 199, 199, 0.35);
  box-shadow: 0 0 5px rgba(199, 199, 199, 0.35);
}
#header.wvcsd .interact i:hover {
  background-position: left bottom;
}
#header.wvcsd .interact .icon-search {
  background: url(../img/icon_magnifying_glass_v1.png) 0 0 no-repeat;
  width: 28px;
  height: 28px;
  position: relative;
  top: -10px;
  cursor: pointer;
  border: none;
}
#header.wvcsd .interact .icon-search:hover {
  background-position: left bottom;
}
#header.wvcsd .interact .icon-shopping-cart {
  background: url(../img/icon_shopping_cart_v1.png) 0 0 no-repeat;
  width: 20px;
  height: 15px;
  margin-right: 5px;
  margin-top: -1px;
}
#header.wvcsd .interact .text:hover > .icon-shopping-cart {
  background-position: left bottom;
}
#header.wvcsd .interact ul.inline {
  float: left;
}
#header.wvcsd .interact .links {
  text-transform: uppercase;
  margin-right: -6px;
  margin-top: 2px;
}
#header.wvcsd .interact .links .text {
  padding-right: 10px;
}
#header.wvcsd .interact .links .text a {
  color: #000000;
  font-size: 13px;
  padding-right: 0;
}
#header.wvcsd .interact .links .text li {
  border-right: 1px solid #efefef;
  padding: 0 10px;
}
#header.wvcsd .interact .social li {
  padding: 0 6px 0 0 !important;
}
#header.wvcsd .interact .social li.icon {
  overflow: hidden;
  text-indent: -999px;
}
#header.wvcsd .interact .social li.icon a {
  width: 19px;
  height: 19px;
  display: block;
  background: url(../img/icons_social_19_v2.png) no-repeat;
}
#header.wvcsd .interact .social li.icon .icon_fb {
  background-position: 0 0;
}
#header.wvcsd .interact .social li.icon .icon_fb:hover {
  background-position: 0 -19px;
}
#header.wvcsd .interact .social li.icon .icon_tw {
  background-position: -19px 0;
}
#header.wvcsd .interact .social li.icon .icon_tw:hover {
  background-position: -19px -19px;
}
#header.wvcsd .interact .social li.icon .icon_yt {
  background-position: -38px 0;
}
#header.wvcsd .interact .social li.icon .icon_yt:hover {
  background-position: -38px -19px;
}
#header.wvcsd .interact .social .no_icon_blog {
  overflow: hidden;
  text-indent: -999px;
  display: block;
  width: 46px;
  height: 19px;
  padding-right: 0;
  background: url(../img/icon_blog_header_v2.png) no-repeat;
}
#header.wvcsd .interact .social .no_icon_blog:hover {
  background-position: 0 -19px;
}
/*
// Global Nav Bar Rules
// ====================
*/
#nav.wvcsd,
#header.wvcsd {
  height: 50px;
  background-color: #fe8b16;
  background-image: -moz-linear-gradient(top, #fda425, #ff6600);
  background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#fda425), to(#ff6600));
  background-image: -webkit-linear-gradient(top, #fda425, #ff6600);
  background-image: -o-linear-gradient(top, #fda425, #ff6600);
  background-image: linear-gradient(to bottom, #fda425, #ff6600);
  background-repeat: repeat-x;
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#fffda425', endColorstr='#ffff6600', GradientType=0);
  /*!
 * Bootstrap v2.3.2
 *
 * Copyright 2012 Twitter, Inc
 * Licensed under the Apache License v2.0
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Designed and built with all the love in the world @twitter by @mdo and @fat.
 */
  /* Allow for input prepend/append in search forms */
  /* move down carets for tabs */
  /*
@import "../src/lib/bootstrap/less/responsive-767px-max.less";
@import "../src/lib/bootstrap/less/responsive-768px-979px.less";
@import "../src/lib/bootstrap/less/responsive-1200px-min.less";
@import "../src/lib/bootstrap/less/responsive-navbar.less";
@import "../src/lib/bootstrap/less/responsive-utilities.less";
@import "../src/lib/bootstrap/less/responsive.less";
*/
  /* White icons with optional class, or on hover/focus/active states of certain elements */
  /* The Active Link  */
  /* override uikit */
  /* Dropdown */
}
#nav.wvcsd .accordion,
#header.wvcsd .accordion {
  margin-bottom: 20px;
}
#nav.wvcsd .accordion-group,
#header.wvcsd .accordion-group {
  margin-bottom: 2px;
  border: 1px solid #e5e5e5;
  -webkit-border-radius: 4px;
  -moz-border-radius: 4px;
  border-radius: 4px;
}
#nav.wvcsd .accordion-heading,
#header.wvcsd .accordion-heading {
  border-bottom: 0;
}
#nav.wvcsd .accordion-heading .accordion-toggle,
#header.wvcsd .accordion-heading .accordion-toggle {
  display: block;
  padding: 8px 15px;
}
#nav.wvcsd .accordion-toggle,
#header.wvcsd .accordion-toggle {
  cursor: pointer;
}
#nav.wvcsd .accordion-inner,
#header.wvcsd .accordion-inner {
  padding: 9px 15px;
  border-top: 1px solid #e5e5e5;
}
#nav.wvcsd .alert,
#header.wvcsd .alert {
  padding: 8px 35px 8px 14px;
  margin-bottom: 20px;
  text-shadow: 0 1px 0 rgba(255, 255, 255, 0.5);
  background-color: #fcf8e3;
  border: 1px solid #fbeed5;
  -webkit-border-radius: 4px;
  -moz-border-radius: 4px;
  border-radius: 4px;
}
#nav.wvcsd .alert,
#header.wvcsd .alert,
#nav.wvcsd .alert h4,
#header.wvcsd .alert h4 {
  color: #c09853;
}
#nav.wvcsd .alert h4,
#header.wvcsd .alert h4 {
  margin: 0;
}
#nav.wvcsd .alert .close,
#header.wvcsd .alert .close {
  position: relative;
  top: -2px;
  right: -21px;
  line-height: 20px;
}
#nav.wvcsd .alert-success,
#header.wvcsd .alert-success {
  background-color: #dff0d8;
  border-color: #d6e9c6;
  color: #468847;
}
#nav.wvcsd .alert-success h4,
#header.wvcsd .alert-success h4 {
  color: #468847;
}
#nav.wvcsd .alert-danger,
#header.wvcsd .alert-danger,
#nav.wvcsd .alert-error,
#header.wvcsd .alert-error {
  background-color: #f2dede;
  border-color: #eed3d7;
  color: #b94a48;
}
#nav.wvcsd .alert-danger h4,
#header.wvcsd .alert-danger h4,
#nav.wvcsd .alert-error h4,
#header.wvcsd .alert-error h4 {
  color: #b94a48;
}
#nav.wvcsd .alert-info,
#header.wvcsd .alert-info {
  background-color: #d9edf7;
  border-color: #bce8f1;
  color: #3a87ad;
}
#nav.wvcsd .alert-info h4,
#header.wvcsd .alert-info h4 {
  color: #3a87ad;
}
#nav.wvcsd .alert-block,
#header.wvcsd .alert-block {
  padding-top: 14px;
  padding-bottom: 14px;
}
#nav.wvcsd .alert-block > p,
#header.wvcsd .alert-block > p,
#nav.wvcsd .alert-block > ul,
#header.wvcsd .alert-block > ul {
  margin-bottom: 0;
}
#nav.wvcsd .alert-block p + p,
#header.wvcsd .alert-block p + p {
  margin-top: 5px;
}
#nav.wvcsd .breadcrumb,
#header.wvcsd .breadcrumb {
  padding: 8px 15px;
  margin: 0 0 20px;
  list-style: none;
  background-color: #f5f5f5;
  -webkit-border-radius: 4px;
  -moz-border-radius: 4px;
  border-radius: 4px;
}
#nav.wvcsd .breadcrumb > li,
#header.wvcsd .breadcrumb > li {
  display: inline-block;
  *display: inline;
  /* IE7 inline-block hack */
  *zoom: 1;
  text-shadow: 0 1px 0 #ffffff;
}
#nav.wvcsd .breadcrumb > li > .divider,
#header.wvcsd .breadcrumb > li > .divider {
  padding: 0 5px;
  color: #ccc;
}
#nav.wvcsd .breadcrumb > .active,
#header.wvcsd .breadcrumb > .active {
  color: #999999;
}
#nav.wvcsd .btn-group,
#header.wvcsd .btn-group {
  position: relative;
  display: inline-block;
  *display: inline;
  /* IE7 inline-block hack */
  *zoom: 1;
  font-size: 0;
  vertical-align: middle;
  white-space: nowrap;
  *margin-left: .3em;
}
#nav.wvcsd .btn-group:first-child,
#header.wvcsd .btn-group:first-child {
  *margin-left: 0;
}
#nav.wvcsd .btn-group + .btn-group,
#header.wvcsd .btn-group + .btn-group {
  margin-left: 5px;
}
#nav.wvcsd .btn-toolbar,
#header.wvcsd .btn-toolbar {
  font-size: 0;
  margin-top: 10px;
  margin-bottom: 10px;
}
#nav.wvcsd .btn-toolbar > .btn + .btn,
#header.wvcsd .btn-toolbar > .btn + .btn,
#nav.wvcsd .btn-toolbar > .btn-group + .btn,
#header.wvcsd .btn-toolbar > .btn-group + .btn,
#nav.wvcsd .btn-toolbar > .btn + .btn-group,
#header.wvcsd .btn-toolbar > .btn + .btn-group {
  margin-left: 5px;
}
#nav.wvcsd .btn-group > .btn,
#header.wvcsd .btn-group > .btn {
  position: relative;
  -webkit-border-radius: 0;
  -moz-border-radius: 0;
  border-radius: 0;
}
#nav.wvcsd .btn-group > .btn + .btn,
#header.wvcsd .btn-group > .btn + .btn {
  margin-left: -1px;
}
#nav.wvcsd .btn-group > .btn,
#header.wvcsd .btn-group > .btn,
#nav.wvcsd .btn-group > .dropdown-menu,
#header.wvcsd .btn-group > .dropdown-menu,
#nav.wvcsd .btn-group > .popover,
#header.wvcsd .btn-group > .popover {
  font-size: 14px;
}
#nav.wvcsd .btn-group > .btn-mini,
#header.wvcsd .btn-group > .btn-mini {
  font-size: 10.5px;
}
#nav.wvcsd .btn-group > .btn-small,
#header.wvcsd .btn-group > .btn-small {
  font-size: 11.9px;
}
#nav.wvcsd .btn-group > .btn-large,
#header.wvcsd .btn-group > .btn-large {
  font-size: 17.5px;
}
#nav.wvcsd .btn-group > .btn:first-child,
#header.wvcsd .btn-group > .btn:first-child {
  margin-left: 0;
  -webkit-border-top-left-radius: 4px;
  -moz-border-radius-topleft: 4px;
  border-top-left-radius: 4px;
  -webkit-border-bottom-left-radius: 4px;
  -moz-border-radius-bottomleft: 4px;
  border-bottom-left-radius: 4px;
}
#nav.wvcsd .btn-group > .btn:last-child,
#header.wvcsd .btn-group > .btn:last-child,
#nav.wvcsd .btn-group > .dropdown-toggle,
#header.wvcsd .btn-group > .dropdown-toggle {
  -webkit-border-top-right-radius: 4px;
  -moz-border-radius-topright: 4px;
  border-top-right-radius: 4px;
  -webkit-border-bottom-right-radius: 4px;
  -moz-border-radius-bottomright: 4px;
  border-bottom-right-radius: 4px;
}
#nav.wvcsd .btn-group > .btn.large:first-child,
#header.wvcsd .btn-group > .btn.large:first-child {
  margin-left: 0;
  -webkit-border-top-left-radius: 6px;
  -moz-border-radius-topleft: 6px;
  border-top-left-radius: 6px;
  -webkit-border-bottom-left-radius: 6px;
  -moz-border-radius-bottomleft: 6px;
  border-bottom-left-radius: 6px;
}
#nav.wvcsd .btn-group > .btn.large:last-child,
#header.wvcsd .btn-group > .btn.large:last-child,
#nav.wvcsd .btn-group > .large.dropdown-toggle,
#header.wvcsd .btn-group > .large.dropdown-toggle {
  -webkit-border-top-right-radius: 6px;
  -moz-border-radius-topright: 6px;
  border-top-right-radius: 6px;
  -webkit-border-bottom-right-radius: 6px;
  -moz-border-radius-bottomright: 6px;
  border-bottom-right-radius: 6px;
}
#nav.wvcsd .btn-group > .btn:hover,
#header.wvcsd .btn-group > .btn:hover,
#nav.wvcsd .btn-group > .btn:focus,
#header.wvcsd .btn-group > .btn:focus,
#nav.wvcsd .btn-group > .btn:active,
#header.wvcsd .btn-group > .btn:active,
#nav.wvcsd .btn-group > .btn.active,
#header.wvcsd .btn-group > .btn.active {
  z-index: 2;
}
#nav.wvcsd .btn-group .dropdown-toggle:active,
#header.wvcsd .btn-group .dropdown-toggle:active,
#nav.wvcsd .btn-group.open .dropdown-toggle,
#header.wvcsd .btn-group.open .dropdown-toggle {
  outline: 0;
}
#nav.wvcsd .btn-group > .btn + .dropdown-toggle,
#header.wvcsd .btn-group > .btn + .dropdown-toggle {
  padding-left: 8px;
  padding-right: 8px;
  -webkit-box-shadow: inset 1px 0 0 rgba(255,255,255,.125), inset 0 1px 0 rgba(255,255,255,.2), 0 1px 2px rgba(0,0,0,.05);
  -moz-box-shadow: inset 1px 0 0 rgba(255,255,255,.125), inset 0 1px 0 rgba(255,255,255,.2), 0 1px 2px rgba(0,0,0,.05);
  box-shadow: inset 1px 0 0 rgba(255,255,255,.125), inset 0 1px 0 rgba(255,255,255,.2), 0 1px 2px rgba(0,0,0,.05);
  *padding-top: 5px;
  *padding-bottom: 5px;
}
#nav.wvcsd .btn-group > .btn-mini + .dropdown-toggle,
#header.wvcsd .btn-group > .btn-mini + .dropdown-toggle {
  padding-left: 5px;
  padding-right: 5px;
  *padding-top: 2px;
  *padding-bottom: 2px;
}
#nav.wvcsd .btn-group > .btn-small + .dropdown-toggle,
#header.wvcsd .btn-group > .btn-small + .dropdown-toggle {
  *padding-top: 5px;
  *padding-bottom: 4px;
}
#nav.wvcsd .btn-group > .btn-large + .dropdown-toggle,
#header.wvcsd .btn-group > .btn-large + .dropdown-toggle {
  padding-left: 12px;
  padding-right: 12px;
  *padding-top: 7px;
  *padding-bottom: 7px;
}
#nav.wvcsd .btn-group.open .dropdown-toggle,
#header.wvcsd .btn-group.open .dropdown-toggle {
  background-image: none;
  -webkit-box-shadow: inset 0 2px 4px rgba(0,0,0,.15), 0 1px 2px rgba(0,0,0,.05);
  -moz-box-shadow: inset 0 2px 4px rgba(0,0,0,.15), 0 1px 2px rgba(0,0,0,.05);
  box-shadow: inset 0 2px 4px rgba(0,0,0,.15), 0 1px 2px rgba(0,0,0,.05);
}
#nav.wvcsd .btn-group.open .btn.dropdown-toggle,
#header.wvcsd .btn-group.open .btn.dropdown-toggle {
  background-color: #e6e6e6;
}
#nav.wvcsd .btn-group.open .btn-primary.dropdown-toggle,
#header.wvcsd .btn-group.open .btn-primary.dropdown-toggle {
  background-color: #0044cc;
}
#nav.wvcsd .btn-group.open .btn-warning.dropdown-toggle,
#header.wvcsd .btn-group.open .btn-warning.dropdown-toggle {
  background-color: #f89406;
}
#nav.wvcsd .btn-group.open .btn-danger.dropdown-toggle,
#header.wvcsd .btn-group.open .btn-danger.dropdown-toggle {
  background-color: #bd362f;
}
#nav.wvcsd .btn-group.open .btn-success.dropdown-toggle,
#header.wvcsd .btn-group.open .btn-success.dropdown-toggle {
  background-color: #51a351;
}
#nav.wvcsd .btn-group.open .btn-info.dropdown-toggle,
#header.wvcsd .btn-group.open .btn-info.dropdown-toggle {
  background-color: #2f96b4;
}
#nav.wvcsd .btn-group.open .btn-inverse.dropdown-toggle,
#header.wvcsd .btn-group.open .btn-inverse.dropdown-toggle {
  background-color: #222222;
}
#nav.wvcsd .btn .caret,
#header.wvcsd .btn .caret {
  margin-top: 8px;
  margin-left: 0;
}
#nav.wvcsd .btn-large .caret,
#header.wvcsd .btn-large .caret {
  margin-top: 6px;
}
#nav.wvcsd .btn-large .caret,
#header.wvcsd .btn-large .caret {
  border-left-width: 5px;
  border-right-width: 5px;
  border-top-width: 5px;
}
#nav.wvcsd .btn-mini .caret,
#header.wvcsd .btn-mini .caret,
#nav.wvcsd .btn-small .caret,
#header.wvcsd .btn-small .caret {
  margin-top: 8px;
}
#nav.wvcsd .dropup .btn-large .caret,
#header.wvcsd .dropup .btn-large .caret {
  border-bottom-width: 5px;
}
#nav.wvcsd .btn-primary .caret,
#header.wvcsd .btn-primary .caret,
#nav.wvcsd .btn-warning .caret,
#header.wvcsd .btn-warning .caret,
#nav.wvcsd .btn-danger .caret,
#header.wvcsd .btn-danger .caret,
#nav.wvcsd .btn-info .caret,
#header.wvcsd .btn-info .caret,
#nav.wvcsd .btn-success .caret,
#header.wvcsd .btn-success .caret,
#nav.wvcsd .btn-inverse .caret,
#header.wvcsd .btn-inverse .caret {
  border-top-color: #ffffff;
  border-bottom-color: #ffffff;
}
#nav.wvcsd .btn-group-vertical,
#header.wvcsd .btn-group-vertical {
  display: inline-block;
  *display: inline;
  /* IE7 inline-block hack */
  *zoom: 1;
}
#nav.wvcsd .btn-group-vertical > .btn,
#header.wvcsd .btn-group-vertical > .btn {
  display: block;
  float: none;
  max-width: 100%;
  -webkit-border-radius: 0;
  -moz-border-radius: 0;
  border-radius: 0;
}
#nav.wvcsd .btn-group-vertical > .btn + .btn,
#header.wvcsd .btn-group-vertical > .btn + .btn {
  margin-left: 0;
  margin-top: -1px;
}
#nav.wvcsd .btn-group-vertical > .btn:first-child,
#header.wvcsd .btn-group-vertical > .btn:first-child {
  -webkit-border-radius: 4px 4px 0 0;
  -moz-border-radius: 4px 4px 0 0;
  border-radius: 4px 4px 0 0;
}
#nav.wvcsd .btn-group-vertical > .btn:last-child,
#header.wvcsd .btn-group-vertical > .btn:last-child {
  -webkit-border-radius: 0 0 4px 4px;
  -moz-border-radius: 0 0 4px 4px;
  border-radius: 0 0 4px 4px;
}
#nav.wvcsd .btn-group-vertical > .btn-large:first-child,
#header.wvcsd .btn-group-vertical > .btn-large:first-child {
  -webkit-border-radius: 6px 6px 0 0;
  -moz-border-radius: 6px 6px 0 0;
  border-radius: 6px 6px 0 0;
}
#nav.wvcsd .btn-group-vertical > .btn-large:last-child,
#header.wvcsd .btn-group-vertical > .btn-large:last-child {
  -webkit-border-radius: 0 0 6px 6px;
  -moz-border-radius: 0 0 6px 6px;
  border-radius: 0 0 6px 6px;
}
#nav.wvcsd .btn,
#header.wvcsd .btn {
  display: inline-block;
  *display: inline;
  /* IE7 inline-block hack */
  *zoom: 1;
  padding: 4px 12px;
  margin-bottom: 0;
  font-size: 14px;
  line-height: 20px;
  text-align: center;
  vertical-align: middle;
  cursor: pointer;
  color: #333333;
  text-shadow: 0 1px 1px rgba(255, 255, 255, 0.75);
  background-color: #f5f5f5;
  background-image: -moz-linear-gradient(top, #ffffff, #e6e6e6);
  background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#ffffff), to(#e6e6e6));
  background-image: -webkit-linear-gradient(top, #ffffff, #e6e6e6);
  background-image: -o-linear-gradient(top, #ffffff, #e6e6e6);
  background-image: linear-gradient(to bottom, #ffffff, #e6e6e6);
  background-repeat: repeat-x;
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffffffff', endColorstr='#ffe6e6e6', GradientType=0);
  border-color: #e6e6e6 #e6e6e6 #bfbfbf;
  border-color: rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.25);
  *background-color: #e6e6e6;
  /* Darken IE7 buttons by default so they stand out more given they won't have borders */
  filter: progid:DXImageTransform.Microsoft.gradient(enabled = false);
  border: 1px solid #cccccc;
  *border: 0;
  border-bottom-color: #b3b3b3;
  -webkit-border-radius: 4px;
  -moz-border-radius: 4px;
  border-radius: 4px;
  *margin-left: .3em;
  -webkit-box-shadow: inset 0 1px 0 rgba(255,255,255,.2), 0 1px 2px rgba(0,0,0,.05);
  -moz-box-shadow: inset 0 1px 0 rgba(255,255,255,.2), 0 1px 2px rgba(0,0,0,.05);
  box-shadow: inset 0 1px 0 rgba(255,255,255,.2), 0 1px 2px rgba(0,0,0,.05);
}
#nav.wvcsd .btn:hover,
#header.wvcsd .btn:hover,
#nav.wvcsd .btn:focus,
#header.wvcsd .btn:focus,
#nav.wvcsd .btn:active,
#header.wvcsd .btn:active,
#nav.wvcsd .btn.active,
#header.wvcsd .btn.active,
#nav.wvcsd .btn.disabled,
#header.wvcsd .btn.disabled,
#nav.wvcsd .btn[disabled],
#header.wvcsd .btn[disabled] {
  color: #333333;
  background-color: #e6e6e6;
  *background-color: #d9d9d9;
}
#nav.wvcsd .btn:active,
#header.wvcsd .btn:active,
#nav.wvcsd .btn.active,
#header.wvcsd .btn.active {
  background-color: #cccccc \9;
}
#nav.wvcsd .btn:first-child,
#header.wvcsd .btn:first-child {
  *margin-left: 0;
}
#nav.wvcsd .btn:hover,
#header.wvcsd .btn:hover,
#nav.wvcsd .btn:focus,
#header.wvcsd .btn:focus {
  color: #333333;
  text-decoration: none;
  background-position: 0 -15px;
  -webkit-transition: background-position 0.1s linear;
  -moz-transition: background-position 0.1s linear;
  -o-transition: background-position 0.1s linear;
  transition: background-position 0.1s linear;
}
#nav.wvcsd .btn:focus,
#header.wvcsd .btn:focus {
  outline: thin dotted #333;
  outline: 5px auto -webkit-focus-ring-color;
  outline-offset: -2px;
}
#nav.wvcsd .btn.active,
#header.wvcsd .btn.active,
#nav.wvcsd .btn:active,
#header.wvcsd .btn:active {
  background-image: none;
  outline: 0;
  -webkit-box-shadow: inset 0 2px 4px rgba(0,0,0,.15), 0 1px 2px rgba(0,0,0,.05);
  -moz-box-shadow: inset 0 2px 4px rgba(0,0,0,.15), 0 1px 2px rgba(0,0,0,.05);
  box-shadow: inset 0 2px 4px rgba(0,0,0,.15), 0 1px 2px rgba(0,0,0,.05);
}
#nav.wvcsd .btn.disabled,
#header.wvcsd .btn.disabled,
#nav.wvcsd .btn[disabled],
#header.wvcsd .btn[disabled] {
  cursor: default;
  background-image: none;
  opacity: 0.65;
  filter: alpha(opacity=65);
  -webkit-box-shadow: none;
  -moz-box-shadow: none;
  box-shadow: none;
}
#nav.wvcsd .btn-large,
#header.wvcsd .btn-large {
  padding: 11px 19px;
  font-size: 17.5px;
  -webkit-border-radius: 6px;
  -moz-border-radius: 6px;
  border-radius: 6px;
}
#nav.wvcsd .btn-large [class^="icon-"],
#header.wvcsd .btn-large [class^="icon-"],
#nav.wvcsd .btn-large [class*=" icon-"],
#header.wvcsd .btn-large [class*=" icon-"] {
  margin-top: 4px;
}
#nav.wvcsd .btn-small,
#header.wvcsd .btn-small {
  padding: 2px 10px;
  font-size: 11.9px;
  -webkit-border-radius: 3px;
  -moz-border-radius: 3px;
  border-radius: 3px;
}
#nav.wvcsd .btn-small [class^="icon-"],
#header.wvcsd .btn-small [class^="icon-"],
#nav.wvcsd .btn-small [class*=" icon-"],
#header.wvcsd .btn-small [class*=" icon-"] {
  margin-top: 0;
}
#nav.wvcsd .btn-mini [class^="icon-"],
#header.wvcsd .btn-mini [class^="icon-"],
#nav.wvcsd .btn-mini [class*=" icon-"],
#header.wvcsd .btn-mini [class*=" icon-"] {
  margin-top: -1px;
}
#nav.wvcsd .btn-mini,
#header.wvcsd .btn-mini {
  padding: 0 6px;
  font-size: 10.5px;
  -webkit-border-radius: 3px;
  -moz-border-radius: 3px;
  border-radius: 3px;
}
#nav.wvcsd .btn-block,
#header.wvcsd .btn-block {
  display: block;
  width: 100%;
  padding-left: 0;
  padding-right: 0;
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
}
#nav.wvcsd .btn-block + .btn-block,
#header.wvcsd .btn-block + .btn-block {
  margin-top: 5px;
}
#nav.wvcsd input[type="submit"].btn-block,
#header.wvcsd input[type="submit"].btn-block,
#nav.wvcsd input[type="reset"].btn-block,
#header.wvcsd input[type="reset"].btn-block,
#nav.wvcsd input[type="button"].btn-block,
#header.wvcsd input[type="button"].btn-block {
  width: 100%;
}
#nav.wvcsd .btn-primary.active,
#header.wvcsd .btn-primary.active,
#nav.wvcsd .btn-warning.active,
#header.wvcsd .btn-warning.active,
#nav.wvcsd .btn-danger.active,
#header.wvcsd .btn-danger.active,
#nav.wvcsd .btn-success.active,
#header.wvcsd .btn-success.active,
#nav.wvcsd .btn-info.active,
#header.wvcsd .btn-info.active,
#nav.wvcsd .btn-inverse.active,
#header.wvcsd .btn-inverse.active {
  color: rgba(255, 255, 255, 0.75);
}
#nav.wvcsd .btn-primary,
#header.wvcsd .btn-primary {
  color: #ffffff;
  text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25);
  background-color: #006dcc;
  background-image: -moz-linear-gradient(top, #0088cc, #0044cc);
  background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#0088cc), to(#0044cc));
  background-image: -webkit-linear-gradient(top, #0088cc, #0044cc);
  background-image: -o-linear-gradient(top, #0088cc, #0044cc);
  background-image: linear-gradient(to bottom, #0088cc, #0044cc);
  background-repeat: repeat-x;
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ff0088cc', endColorstr='#ff0044cc', GradientType=0);
  border-color: #0044cc #0044cc #002a80;
  border-color: rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.25);
  *background-color: #0044cc;
  /* Darken IE7 buttons by default so they stand out more given they won't have borders */
  filter: progid:DXImageTransform.Microsoft.gradient(enabled = false);
}
#nav.wvcsd .btn-primary:hover,
#header.wvcsd .btn-primary:hover,
#nav.wvcsd .btn-primary:focus,
#header.wvcsd .btn-primary:focus,
#nav.wvcsd .btn-primary:active,
#header.wvcsd .btn-primary:active,
#nav.wvcsd .btn-primary.active,
#header.wvcsd .btn-primary.active,
#nav.wvcsd .btn-primary.disabled,
#header.wvcsd .btn-primary.disabled,
#nav.wvcsd .btn-primary[disabled],
#header.wvcsd .btn-primary[disabled] {
  color: #ffffff;
  background-color: #0044cc;
  *background-color: #003bb3;
}
#nav.wvcsd .btn-primary:active,
#header.wvcsd .btn-primary:active,
#nav.wvcsd .btn-primary.active,
#header.wvcsd .btn-primary.active {
  background-color: #003399 \9;
}
#nav.wvcsd .btn-warning,
#header.wvcsd .btn-warning {
  color: #ffffff;
  text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25);
  background-color: #faa732;
  background-image: -moz-linear-gradient(top, #fbb450, #f89406);
  background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#fbb450), to(#f89406));
  background-image: -webkit-linear-gradient(top, #fbb450, #f89406);
  background-image: -o-linear-gradient(top, #fbb450, #f89406);
  background-image: linear-gradient(to bottom, #fbb450, #f89406);
  background-repeat: repeat-x;
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#fffbb450', endColorstr='#fff89406', GradientType=0);
  border-color: #f89406 #f89406 #ad6704;
  border-color: rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.25);
  *background-color: #f89406;
  /* Darken IE7 buttons by default so they stand out more given they won't have borders */
  filter: progid:DXImageTransform.Microsoft.gradient(enabled = false);
}
#nav.wvcsd .btn-warning:hover,
#header.wvcsd .btn-warning:hover,
#nav.wvcsd .btn-warning:focus,
#header.wvcsd .btn-warning:focus,
#nav.wvcsd .btn-warning:active,
#header.wvcsd .btn-warning:active,
#nav.wvcsd .btn-warning.active,
#header.wvcsd .btn-warning.active,
#nav.wvcsd .btn-warning.disabled,
#header.wvcsd .btn-warning.disabled,
#nav.wvcsd .btn-warning[disabled],
#header.wvcsd .btn-warning[disabled] {
  color: #ffffff;
  background-color: #f89406;
  *background-color: #df8505;
}
#nav.wvcsd .btn-warning:active,
#header.wvcsd .btn-warning:active,
#nav.wvcsd .btn-warning.active,
#header.wvcsd .btn-warning.active {
  background-color: #c67605 \9;
}
#nav.wvcsd .btn-danger,
#header.wvcsd .btn-danger {
  color: #ffffff;
  text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25);
  background-color: #da4f49;
  background-image: -moz-linear-gradient(top, #ee5f5b, #bd362f);
  background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#ee5f5b), to(#bd362f));
  background-image: -webkit-linear-gradient(top, #ee5f5b, #bd362f);
  background-image: -o-linear-gradient(top, #ee5f5b, #bd362f);
  background-image: linear-gradient(to bottom, #ee5f5b, #bd362f);
  background-repeat: repeat-x;
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffee5f5b', endColorstr='#ffbd362f', GradientType=0);
  border-color: #bd362f #bd362f #802420;
  border-color: rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.25);
  *background-color: #bd362f;
  /* Darken IE7 buttons by default so they stand out more given they won't have borders */
  filter: progid:DXImageTransform.Microsoft.gradient(enabled = false);
}
#nav.wvcsd .btn-danger:hover,
#header.wvcsd .btn-danger:hover,
#nav.wvcsd .btn-danger:focus,
#header.wvcsd .btn-danger:focus,
#nav.wvcsd .btn-danger:active,
#header.wvcsd .btn-danger:active,
#nav.wvcsd .btn-danger.active,
#header.wvcsd .btn-danger.active,
#nav.wvcsd .btn-danger.disabled,
#header.wvcsd .btn-danger.disabled,
#nav.wvcsd .btn-danger[disabled],
#header.wvcsd .btn-danger[disabled] {
  color: #ffffff;
  background-color: #bd362f;
  *background-color: #a9302a;
}
#nav.wvcsd .btn-danger:active,
#header.wvcsd .btn-danger:active,
#nav.wvcsd .btn-danger.active,
#header.wvcsd .btn-danger.active {
  background-color: #942a25 \9;
}
#nav.wvcsd .btn-success,
#header.wvcsd .btn-success {
  color: #ffffff;
  text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25);
  background-color: #5bb75b;
  background-image: -moz-linear-gradient(top, #62c462, #51a351);
  background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#62c462), to(#51a351));
  background-image: -webkit-linear-gradient(top, #62c462, #51a351);
  background-image: -o-linear-gradient(top, #62c462, #51a351);
  background-image: linear-gradient(to bottom, #62c462, #51a351);
  background-repeat: repeat-x;
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ff62c462', endColorstr='#ff51a351', GradientType=0);
  border-color: #51a351 #51a351 #387038;
  border-color: rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.25);
  *background-color: #51a351;
  /* Darken IE7 buttons by default so they stand out more given they won't have borders */
  filter: progid:DXImageTransform.Microsoft.gradient(enabled = false);
}
#nav.wvcsd .btn-success:hover,
#header.wvcsd .btn-success:hover,
#nav.wvcsd .btn-success:focus,
#header.wvcsd .btn-success:focus,
#nav.wvcsd .btn-success:active,
#header.wvcsd .btn-success:active,
#nav.wvcsd .btn-success.active,
#header.wvcsd .btn-success.active,
#nav.wvcsd .btn-success.disabled,
#header.wvcsd .btn-success.disabled,
#nav.wvcsd .btn-success[disabled],
#header.wvcsd .btn-success[disabled] {
  color: #ffffff;
  background-color: #51a351;
  *background-color: #499249;
}
#nav.wvcsd .btn-success:active,
#header.wvcsd .btn-success:active,
#nav.wvcsd .btn-success.active,
#header.wvcsd .btn-success.active {
  background-color: #408140 \9;
}
#nav.wvcsd .btn-info,
#header.wvcsd .btn-info {
  color: #ffffff;
  text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25);
  background-color: #49afcd;
  background-image: -moz-linear-gradient(top, #5bc0de, #2f96b4);
  background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#5bc0de), to(#2f96b4));
  background-image: -webkit-linear-gradient(top, #5bc0de, #2f96b4);
  background-image: -o-linear-gradient(top, #5bc0de, #2f96b4);
  background-image: linear-gradient(to bottom, #5bc0de, #2f96b4);
  background-repeat: repeat-x;
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ff5bc0de', endColorstr='#ff2f96b4', GradientType=0);
  border-color: #2f96b4 #2f96b4 #1f6377;
  border-color: rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.25);
  *background-color: #2f96b4;
  /* Darken IE7 buttons by default so they stand out more given they won't have borders */
  filter: progid:DXImageTransform.Microsoft.gradient(enabled = false);
}
#nav.wvcsd .btn-info:hover,
#header.wvcsd .btn-info:hover,
#nav.wvcsd .btn-info:focus,
#header.wvcsd .btn-info:focus,
#nav.wvcsd .btn-info:active,
#header.wvcsd .btn-info:active,
#nav.wvcsd .btn-info.active,
#header.wvcsd .btn-info.active,
#nav.wvcsd .btn-info.disabled,
#header.wvcsd .btn-info.disabled,
#nav.wvcsd .btn-info[disabled],
#header.wvcsd .btn-info[disabled] {
  color: #ffffff;
  background-color: #2f96b4;
  *background-color: #2a85a0;
}
#nav.wvcsd .btn-info:active,
#header.wvcsd .btn-info:active,
#nav.wvcsd .btn-info.active,
#header.wvcsd .btn-info.active {
  background-color: #24748c \9;
}
#nav.wvcsd .btn-inverse,
#header.wvcsd .btn-inverse {
  color: #ffffff;
  text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25);
  background-color: #363636;
  background-image: -moz-linear-gradient(top, #444444, #222222);
  background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#444444), to(#222222));
  background-image: -webkit-linear-gradient(top, #444444, #222222);
  background-image: -o-linear-gradient(top, #444444, #222222);
  background-image: linear-gradient(to bottom, #444444, #222222);
  background-repeat: repeat-x;
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ff444444', endColorstr='#ff222222', GradientType=0);
  border-color: #222222 #222222 #000000;
  border-color: rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.25);
  *background-color: #222222;
  /* Darken IE7 buttons by default so they stand out more given they won't have borders */
  filter: progid:DXImageTransform.Microsoft.gradient(enabled = false);
}
#nav.wvcsd .btn-inverse:hover,
#header.wvcsd .btn-inverse:hover,
#nav.wvcsd .btn-inverse:focus,
#header.wvcsd .btn-inverse:focus,
#nav.wvcsd .btn-inverse:active,
#header.wvcsd .btn-inverse:active,
#nav.wvcsd .btn-inverse.active,
#header.wvcsd .btn-inverse.active,
#nav.wvcsd .btn-inverse.disabled,
#header.wvcsd .btn-inverse.disabled,
#nav.wvcsd .btn-inverse[disabled],
#header.wvcsd .btn-inverse[disabled] {
  color: #ffffff;
  background-color: #222222;
  *background-color: #151515;
}
#nav.wvcsd .btn-inverse:active,
#header.wvcsd .btn-inverse:active,
#nav.wvcsd .btn-inverse.active,
#header.wvcsd .btn-inverse.active {
  background-color: #080808 \9;
}
#nav.wvcsd button.btn,
#header.wvcsd button.btn,
#nav.wvcsd input[type="submit"].btn,
#header.wvcsd input[type="submit"].btn {
  *padding-top: 3px;
  *padding-bottom: 3px;
}
#nav.wvcsd button.btn::-moz-focus-inner,
#header.wvcsd button.btn::-moz-focus-inner,
#nav.wvcsd input[type="submit"].btn::-moz-focus-inner,
#header.wvcsd input[type="submit"].btn::-moz-focus-inner {
  padding: 0;
  border: 0;
}
#nav.wvcsd button.btn.btn-large,
#header.wvcsd button.btn.btn-large,
#nav.wvcsd input[type="submit"].btn.btn-large,
#header.wvcsd input[type="submit"].btn.btn-large {
  *padding-top: 7px;
  *padding-bottom: 7px;
}
#nav.wvcsd button.btn.btn-small,
#header.wvcsd button.btn.btn-small,
#nav.wvcsd input[type="submit"].btn.btn-small,
#header.wvcsd input[type="submit"].btn.btn-small {
  *padding-top: 3px;
  *padding-bottom: 3px;
}
#nav.wvcsd button.btn.btn-mini,
#header.wvcsd button.btn.btn-mini,
#nav.wvcsd input[type="submit"].btn.btn-mini,
#header.wvcsd input[type="submit"].btn.btn-mini {
  *padding-top: 1px;
  *padding-bottom: 1px;
}
#nav.wvcsd .btn-link,
#header.wvcsd .btn-link,
#nav.wvcsd .btn-link:active,
#header.wvcsd .btn-link:active,
#nav.wvcsd .btn-link[disabled],
#header.wvcsd .btn-link[disabled] {
  background-color: transparent;
  background-image: none;
  -webkit-box-shadow: none;
  -moz-box-shadow: none;
  box-shadow: none;
}
#nav.wvcsd .btn-link,
#header.wvcsd .btn-link {
  border-color: transparent;
  cursor: pointer;
  color: #0088cc;
  -webkit-border-radius: 0;
  -moz-border-radius: 0;
  border-radius: 0;
}
#nav.wvcsd .btn-link:hover,
#header.wvcsd .btn-link:hover,
#nav.wvcsd .btn-link:focus,
#header.wvcsd .btn-link:focus {
  color: #005580;
  text-decoration: underline;
  background-color: transparent;
}
#nav.wvcsd .btn-link[disabled]:hover,
#header.wvcsd .btn-link[disabled]:hover,
#nav.wvcsd .btn-link[disabled]:focus,
#header.wvcsd .btn-link[disabled]:focus {
  color: #333333;
  text-decoration: none;
}
#nav.wvcsd .carousel,
#header.wvcsd .carousel {
  position: relative;
  margin-bottom: 20px;
  line-height: 1;
}
#nav.wvcsd .carousel-inner,
#header.wvcsd .carousel-inner {
  overflow: hidden;
  width: 100%;
  position: relative;
}
#nav.wvcsd .carousel-inner > .item,
#header.wvcsd .carousel-inner > .item {
  display: none;
  position: relative;
  -webkit-transition: 0.6s ease-in-out left;
  -moz-transition: 0.6s ease-in-out left;
  -o-transition: 0.6s ease-in-out left;
  transition: 0.6s ease-in-out left;
}
#nav.wvcsd .carousel-inner > .item > img,
#header.wvcsd .carousel-inner > .item > img,
#nav.wvcsd .carousel-inner > .item > a > img,
#header.wvcsd .carousel-inner > .item > a > img {
  display: block;
  line-height: 1;
}
#nav.wvcsd .carousel-inner > .active,
#header.wvcsd .carousel-inner > .active,
#nav.wvcsd .carousel-inner > .next,
#header.wvcsd .carousel-inner > .next,
#nav.wvcsd .carousel-inner > .prev,
#header.wvcsd .carousel-inner > .prev {
  display: block;
}
#nav.wvcsd .carousel-inner > .active,
#header.wvcsd .carousel-inner > .active {
  left: 0;
}
#nav.wvcsd .carousel-inner > .next,
#header.wvcsd .carousel-inner > .next,
#nav.wvcsd .carousel-inner > .prev,
#header.wvcsd .carousel-inner > .prev {
  position: absolute;
  top: 0;
  width: 100%;
}
#nav.wvcsd .carousel-inner > .next,
#header.wvcsd .carousel-inner > .next {
  left: 100%;
}
#nav.wvcsd .carousel-inner > .prev,
#header.wvcsd .carousel-inner > .prev {
  left: -100%;
}
#nav.wvcsd .carousel-inner > .next.left,
#header.wvcsd .carousel-inner > .next.left,
#nav.wvcsd .carousel-inner > .prev.right,
#header.wvcsd .carousel-inner > .prev.right {
  left: 0;
}
#nav.wvcsd .carousel-inner > .active.left,
#header.wvcsd .carousel-inner > .active.left {
  left: -100%;
}
#nav.wvcsd .carousel-inner > .active.right,
#header.wvcsd .carousel-inner > .active.right {
  left: 100%;
}
#nav.wvcsd .carousel-control,
#header.wvcsd .carousel-control {
  position: absolute;
  top: 40%;
  left: 15px;
  width: 40px;
  height: 40px;
  margin-top: -20px;
  font-size: 60px;
  font-weight: 100;
  line-height: 30px;
  color: #ffffff;
  text-align: center;
  background: #222222;
  border: 3px solid #ffffff;
  -webkit-border-radius: 23px;
  -moz-border-radius: 23px;
  border-radius: 23px;
  opacity: 0.5;
  filter: alpha(opacity=50);
}
#nav.wvcsd .carousel-control.right,
#header.wvcsd .carousel-control.right {
  left: auto;
  right: 15px;
}
#nav.wvcsd .carousel-control:hover,
#header.wvcsd .carousel-control:hover,
#nav.wvcsd .carousel-control:focus,
#header.wvcsd .carousel-control:focus {
  color: #ffffff;
  text-decoration: none;
  opacity: 0.9;
  filter: alpha(opacity=90);
}
#nav.wvcsd .carousel-indicators,
#header.wvcsd .carousel-indicators {
  position: absolute;
  top: 15px;
  right: 15px;
  z-index: 5;
  margin: 0;
  list-style: none;
}
#nav.wvcsd .carousel-indicators li,
#header.wvcsd .carousel-indicators li {
  display: block;
  float: left;
  width: 10px;
  height: 10px;
  margin-left: 5px;
  text-indent: -999px;
  background-color: #ccc;
  background-color: rgba(255, 255, 255, 0.25);
  border-radius: 5px;
}
#nav.wvcsd .carousel-indicators .active,
#header.wvcsd .carousel-indicators .active {
  background-color: #fff;
}
#nav.wvcsd .carousel-caption,
#header.wvcsd .carousel-caption {
  position: absolute;
  left: 0;
  right: 0;
  bottom: 0;
  padding: 15px;
  background: #333333;
  background: rgba(0, 0, 0, 0.75);
}
#nav.wvcsd .carousel-caption h4,
#header.wvcsd .carousel-caption h4,
#nav.wvcsd .carousel-caption p,
#header.wvcsd .carousel-caption p {
  color: #ffffff;
  line-height: 20px;
}
#nav.wvcsd .carousel-caption h4,
#header.wvcsd .carousel-caption h4 {
  margin: 0 0 5px;
}
#nav.wvcsd .carousel-caption p,
#header.wvcsd .carousel-caption p {
  margin-bottom: 0;
}
#nav.wvcsd .close,
#header.wvcsd .close {
  float: right;
  font-size: 20px;
  font-weight: bold;
  line-height: 20px;
  color: #000000;
  text-shadow: 0 1px 0 #ffffff;
  opacity: 0.2;
  filter: alpha(opacity=20);
}
#nav.wvcsd .close:hover,
#header.wvcsd .close:hover,
#nav.wvcsd .close:focus,
#header.wvcsd .close:focus {
  color: #000000;
  text-decoration: none;
  cursor: pointer;
  opacity: 0.4;
  filter: alpha(opacity=40);
}
#nav.wvcsd button.close,
#header.wvcsd button.close {
  padding: 0;
  cursor: pointer;
  background: transparent;
  border: 0;
  -webkit-appearance: none;
}
#nav.wvcsd code,
#header.wvcsd code,
#nav.wvcsd pre,
#header.wvcsd pre {
  padding: 0 3px 2px;
  font-family: Monaco, Menlo, Consolas, "Courier New", monospace;
  font-size: 12px;
  color: #333333;
  -webkit-border-radius: 3px;
  -moz-border-radius: 3px;
  border-radius: 3px;
}
#nav.wvcsd code,
#header.wvcsd code {
  padding: 2px 4px;
  color: #d14;
  background-color: #f7f7f9;
  border: 1px solid #e1e1e8;
  white-space: nowrap;
}
#nav.wvcsd pre,
#header.wvcsd pre {
  display: block;
  padding: 9.5px;
  margin: 0 0 10px;
  font-size: 13px;
  line-height: 20px;
  word-break: break-all;
  word-wrap: break-word;
  white-space: pre;
  white-space: pre-wrap;
  background-color: #f5f5f5;
  border: 1px solid #ccc;
  border: 1px solid rgba(0, 0, 0, 0.15);
  -webkit-border-radius: 4px;
  -moz-border-radius: 4px;
  border-radius: 4px;
}
#nav.wvcsd pre.prettyprint,
#header.wvcsd pre.prettyprint {
  margin-bottom: 20px;
}
#nav.wvcsd pre code,
#header.wvcsd pre code {
  padding: 0;
  color: inherit;
  white-space: pre;
  white-space: pre-wrap;
  background-color: transparent;
  border: 0;
}
#nav.wvcsd .pre-scrollable,
#header.wvcsd .pre-scrollable {
  max-height: 340px;
  overflow-y: scroll;
}
#nav.wvcsd .fade,
#header.wvcsd .fade {
  opacity: 0;
  -webkit-transition: opacity 0.15s linear;
  -moz-transition: opacity 0.15s linear;
  -o-transition: opacity 0.15s linear;
  transition: opacity 0.15s linear;
}
#nav.wvcsd .fade.in,
#header.wvcsd .fade.in {
  opacity: 1;
}
#nav.wvcsd .collapse,
#header.wvcsd .collapse {
  position: relative;
  height: 0;
  overflow: hidden;
  -webkit-transition: height 0.35s ease;
  -moz-transition: height 0.35s ease;
  -o-transition: height 0.35s ease;
  transition: height 0.35s ease;
}
#nav.wvcsd .collapse.in,
#header.wvcsd .collapse.in {
  height: auto;
}
#nav.wvcsd .dropup,
#header.wvcsd .dropup,
#nav.wvcsd .dropdown,
#header.wvcsd .dropdown {
  position: relative;
}
#nav.wvcsd .dropdown-toggle,
#header.wvcsd .dropdown-toggle {
  *margin-bottom: -3px;
}
#nav.wvcsd .dropdown-toggle:active,
#header.wvcsd .dropdown-toggle:active,
#nav.wvcsd .open .dropdown-toggle,
#header.wvcsd .open .dropdown-toggle {
  outline: 0;
}
#nav.wvcsd .caret,
#header.wvcsd .caret {
  display: inline-block;
  width: 0;
  height: 0;
  vertical-align: top;
  border-top: 4px solid #000000;
  border-right: 4px solid transparent;
  border-left: 4px solid transparent;
  content: "";
}
#nav.wvcsd .dropdown .caret,
#header.wvcsd .dropdown .caret {
  margin-top: 8px;
  margin-left: 2px;
}
#nav.wvcsd .dropdown-menu,
#header.wvcsd .dropdown-menu {
  position: absolute;
  top: 100%;
  left: 0;
  z-index: 1000;
  display: none;
  float: left;
  min-width: 160px;
  padding: 5px 0;
  margin: 2px 0 0;
  list-style: none;
  background-color: #ffffff;
  border: 1px solid #ccc;
  border: 1px solid rgba(0, 0, 0, 0.2);
  *border-right-width: 2px;
  *border-bottom-width: 2px;
  -webkit-border-radius: 6px;
  -moz-border-radius: 6px;
  border-radius: 6px;
  -webkit-box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
  -moz-box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
  box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
  -webkit-background-clip: padding-box;
  -moz-background-clip: padding;
  background-clip: padding-box;
}
#nav.wvcsd .dropdown-menu.pull-right,
#header.wvcsd .dropdown-menu.pull-right {
  right: 0;
  left: auto;
}
#nav.wvcsd .dropdown-menu .divider,
#header.wvcsd .dropdown-menu .divider {
  *width: 100%;
  height: 1px;
  margin: 9px 1px;
  *margin: -5px 0 5px;
  overflow: hidden;
  background-color: #e5e5e5;
  border-bottom: 1px solid #ffffff;
}
#nav.wvcsd .dropdown-menu > li > a,
#header.wvcsd .dropdown-menu > li > a {
  display: block;
  padding: 3px 20px;
  clear: both;
  font-weight: normal;
  line-height: 20px;
  color: #333333;
  white-space: nowrap;
}
#nav.wvcsd .dropdown-menu > li > a:hover,
#header.wvcsd .dropdown-menu > li > a:hover,
#nav.wvcsd .dropdown-menu > li > a:focus,
#header.wvcsd .dropdown-menu > li > a:focus,
#nav.wvcsd .dropdown-submenu:hover > a,
#header.wvcsd .dropdown-submenu:hover > a,
#nav.wvcsd .dropdown-submenu:focus > a,
#header.wvcsd .dropdown-submenu:focus > a {
  text-decoration: none;
  color: #ffffff;
  background-color: #0081c2;
  background-image: -moz-linear-gradient(top, #0088cc, #0077b3);
  background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#0088cc), to(#0077b3));
  background-image: -webkit-linear-gradient(top, #0088cc, #0077b3);
  background-image: -o-linear-gradient(top, #0088cc, #0077b3);
  background-image: linear-gradient(to bottom, #0088cc, #0077b3);
  background-repeat: repeat-x;
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ff0088cc', endColorstr='#ff0077b3', GradientType=0);
}
#nav.wvcsd .dropdown-menu > .active > a,
#header.wvcsd .dropdown-menu > .active > a,
#nav.wvcsd .dropdown-menu > .active > a:hover,
#header.wvcsd .dropdown-menu > .active > a:hover,
#nav.wvcsd .dropdown-menu > .active > a:focus,
#header.wvcsd .dropdown-menu > .active > a:focus {
  color: #ffffff;
  text-decoration: none;
  outline: 0;
  background-color: #0081c2;
  background-image: -moz-linear-gradient(top, #0088cc, #0077b3);
  background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#0088cc), to(#0077b3));
  background-image: -webkit-linear-gradient(top, #0088cc, #0077b3);
  background-image: -o-linear-gradient(top, #0088cc, #0077b3);
  background-image: linear-gradient(to bottom, #0088cc, #0077b3);
  background-repeat: repeat-x;
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ff0088cc', endColorstr='#ff0077b3', GradientType=0);
}
#nav.wvcsd .dropdown-menu > .disabled > a,
#header.wvcsd .dropdown-menu > .disabled > a,
#nav.wvcsd .dropdown-menu > .disabled > a:hover,
#header.wvcsd .dropdown-menu > .disabled > a:hover,
#nav.wvcsd .dropdown-menu > .disabled > a:focus,
#header.wvcsd .dropdown-menu > .disabled > a:focus {
  color: #999999;
}
#nav.wvcsd .dropdown-menu > .disabled > a:hover,
#header.wvcsd .dropdown-menu > .disabled > a:hover,
#nav.wvcsd .dropdown-menu > .disabled > a:focus,
#header.wvcsd .dropdown-menu > .disabled > a:focus {
  text-decoration: none;
  background-color: transparent;
  background-image: none;
  filter: progid:DXImageTransform.Microsoft.gradient(enabled = false);
  cursor: default;
}
#nav.wvcsd .open,
#header.wvcsd .open {
  *z-index: 1000;
}
#nav.wvcsd .open > .dropdown-menu,
#header.wvcsd .open > .dropdown-menu {
  display: block;
}
#nav.wvcsd .dropdown-backdrop,
#header.wvcsd .dropdown-backdrop {
  position: fixed;
  left: 0;
  right: 0;
  bottom: 0;
  top: 0;
  z-index: 990;
}
#nav.wvcsd .pull-right > .dropdown-menu,
#header.wvcsd .pull-right > .dropdown-menu {
  right: 0;
  left: auto;
}
#nav.wvcsd .dropup .caret,
#header.wvcsd .dropup .caret,
#nav.wvcsd .navbar-fixed-bottom .dropdown .caret,
#header.wvcsd .navbar-fixed-bottom .dropdown .caret {
  border-top: 0;
  border-bottom: 4px solid #000000;
  content: "";
}
#nav.wvcsd .dropup .dropdown-menu,
#header.wvcsd .dropup .dropdown-menu,
#nav.wvcsd .navbar-fixed-bottom .dropdown .dropdown-menu,
#header.wvcsd .navbar-fixed-bottom .dropdown .dropdown-menu {
  top: auto;
  bottom: 100%;
  margin-bottom: 1px;
}
#nav.wvcsd .dropdown-submenu,
#header.wvcsd .dropdown-submenu {
  position: relative;
}
#nav.wvcsd .dropdown-submenu > .dropdown-menu,
#header.wvcsd .dropdown-submenu > .dropdown-menu {
  top: 0;
  left: 100%;
  margin-top: -6px;
  margin-left: -1px;
  -webkit-border-radius: 0 6px 6px 6px;
  -moz-border-radius: 0 6px 6px 6px;
  border-radius: 0 6px 6px 6px;
}
#nav.wvcsd .dropdown-submenu:hover > .dropdown-menu,
#header.wvcsd .dropdown-submenu:hover > .dropdown-menu {
  display: block;
}
#nav.wvcsd .dropup .dropdown-submenu > .dropdown-menu,
#header.wvcsd .dropup .dropdown-submenu > .dropdown-menu {
  top: auto;
  bottom: 0;
  margin-top: 0;
  margin-bottom: -2px;
  -webkit-border-radius: 5px 5px 5px 0;
  -moz-border-radius: 5px 5px 5px 0;
  border-radius: 5px 5px 5px 0;
}
#nav.wvcsd .dropdown-submenu > a:after,
#header.wvcsd .dropdown-submenu > a:after {
  display: block;
  content: " ";
  float: right;
  width: 0;
  height: 0;
  border-color: transparent;
  border-style: solid;
  border-width: 5px 0 5px 5px;
  border-left-color: #cccccc;
  margin-top: 5px;
  margin-right: -10px;
}
#nav.wvcsd .dropdown-submenu:hover > a:after,
#header.wvcsd .dropdown-submenu:hover > a:after {
  border-left-color: #ffffff;
}
#nav.wvcsd .dropdown-submenu.pull-left,
#header.wvcsd .dropdown-submenu.pull-left {
  float: none;
}
#nav.wvcsd .dropdown-submenu.pull-left > .dropdown-menu,
#header.wvcsd .dropdown-submenu.pull-left > .dropdown-menu {
  left: -100%;
  margin-left: 10px;
  -webkit-border-radius: 6px 0 6px 6px;
  -moz-border-radius: 6px 0 6px 6px;
  border-radius: 6px 0 6px 6px;
}
#nav.wvcsd .dropdown .dropdown-menu .nav-header,
#header.wvcsd .dropdown .dropdown-menu .nav-header {
  padding-left: 20px;
  padding-right: 20px;
}
#nav.wvcsd .typeahead,
#header.wvcsd .typeahead {
  z-index: 1051;
  margin-top: 2px;
  -webkit-border-radius: 4px;
  -moz-border-radius: 4px;
  border-radius: 4px;
}
#nav.wvcsd form,
#header.wvcsd form {
  margin: 0 0 20px;
}
#nav.wvcsd fieldset,
#header.wvcsd fieldset {
  padding: 0;
  margin: 0;
  border: 0;
}
#nav.wvcsd legend,
#header.wvcsd legend {
  display: block;
  width: 100%;
  padding: 0;
  margin-bottom: 20px;
  font-size: 21px;
  line-height: 40px;
  color: #333333;
  border: 0;
  border-bottom: 1px solid #e5e5e5;
}
#nav.wvcsd legend small,
#header.wvcsd legend small {
  font-size: 15px;
  color: #999999;
}
#nav.wvcsd label,
#header.wvcsd label,
#nav.wvcsd input,
#header.wvcsd input,
#nav.wvcsd button,
#header.wvcsd button,
#nav.wvcsd select,
#header.wvcsd select,
#nav.wvcsd textarea,
#header.wvcsd textarea {
  font-size: 14px;
  font-weight: normal;
  line-height: 20px;
}
#nav.wvcsd input,
#header.wvcsd input,
#nav.wvcsd button,
#header.wvcsd button,
#nav.wvcsd select,
#header.wvcsd select,
#nav.wvcsd textarea,
#header.wvcsd textarea {
  font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
}
#nav.wvcsd label,
#header.wvcsd label {
  display: block;
  margin-bottom: 5px;
}
#nav.wvcsd select,
#header.wvcsd select,
#nav.wvcsd textarea,
#header.wvcsd textarea,
#nav.wvcsd input[type="text"],
#header.wvcsd input[type="text"],
#nav.wvcsd input[type="password"],
#header.wvcsd input[type="password"],
#nav.wvcsd input[type="datetime"],
#header.wvcsd input[type="datetime"],
#nav.wvcsd input[type="datetime-local"],
#header.wvcsd input[type="datetime-local"],
#nav.wvcsd input[type="date"],
#header.wvcsd input[type="date"],
#nav.wvcsd input[type="month"],
#header.wvcsd input[type="month"],
#nav.wvcsd input[type="time"],
#header.wvcsd input[type="time"],
#nav.wvcsd input[type="week"],
#header.wvcsd input[type="week"],
#nav.wvcsd input[type="number"],
#header.wvcsd input[type="number"],
#nav.wvcsd input[type="email"],
#header.wvcsd input[type="email"],
#nav.wvcsd input[type="url"],
#header.wvcsd input[type="url"],
#nav.wvcsd input[type="search"],
#header.wvcsd input[type="search"],
#nav.wvcsd input[type="tel"],
#header.wvcsd input[type="tel"],
#nav.wvcsd input[type="color"],
#header.wvcsd input[type="color"],
#nav.wvcsd .uneditable-input,
#header.wvcsd .uneditable-input {
  display: inline-block;
  height: 20px;
  padding: 4px 6px;
  margin-bottom: 10px;
  font-size: 14px;
  line-height: 20px;
  color: #555555;
  -webkit-border-radius: 4px;
  -moz-border-radius: 4px;
  border-radius: 4px;
  vertical-align: middle;
}
#nav.wvcsd input,
#header.wvcsd input,
#nav.wvcsd textarea,
#header.wvcsd textarea,
#nav.wvcsd .uneditable-input,
#header.wvcsd .uneditable-input {
  width: 206px;
}
#nav.wvcsd textarea,
#header.wvcsd textarea {
  height: auto;
}
#nav.wvcsd textarea,
#header.wvcsd textarea,
#nav.wvcsd input[type="text"],
#header.wvcsd input[type="text"],
#nav.wvcsd input[type="password"],
#header.wvcsd input[type="password"],
#nav.wvcsd input[type="datetime"],
#header.wvcsd input[type="datetime"],
#nav.wvcsd input[type="datetime-local"],
#header.wvcsd input[type="datetime-local"],
#nav.wvcsd input[type="date"],
#header.wvcsd input[type="date"],
#nav.wvcsd input[type="month"],
#header.wvcsd input[type="month"],
#nav.wvcsd input[type="time"],
#header.wvcsd input[type="time"],
#nav.wvcsd input[type="week"],
#header.wvcsd input[type="week"],
#nav.wvcsd input[type="number"],
#header.wvcsd input[type="number"],
#nav.wvcsd input[type="email"],
#header.wvcsd input[type="email"],
#nav.wvcsd input[type="url"],
#header.wvcsd input[type="url"],
#nav.wvcsd input[type="search"],
#header.wvcsd input[type="search"],
#nav.wvcsd input[type="tel"],
#header.wvcsd input[type="tel"],
#nav.wvcsd input[type="color"],
#header.wvcsd input[type="color"],
#nav.wvcsd .uneditable-input,
#header.wvcsd .uneditable-input {
  background-color: #ffffff;
  border: 1px solid #cccccc;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
  -moz-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
  box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
  -webkit-transition: border linear .2s, box-shadow linear .2s;
  -moz-transition: border linear .2s, box-shadow linear .2s;
  -o-transition: border linear .2s, box-shadow linear .2s;
  transition: border linear .2s, box-shadow linear .2s;
}
#nav.wvcsd textarea:focus,
#header.wvcsd textarea:focus,
#nav.wvcsd input[type="text"]:focus,
#header.wvcsd input[type="text"]:focus,
#nav.wvcsd input[type="password"]:focus,
#header.wvcsd input[type="password"]:focus,
#nav.wvcsd input[type="datetime"]:focus,
#header.wvcsd input[type="datetime"]:focus,
#nav.wvcsd input[type="datetime-local"]:focus,
#header.wvcsd input[type="datetime-local"]:focus,
#nav.wvcsd input[type="date"]:focus,
#header.wvcsd input[type="date"]:focus,
#nav.wvcsd input[type="month"]:focus,
#header.wvcsd input[type="month"]:focus,
#nav.wvcsd input[type="time"]:focus,
#header.wvcsd input[type="time"]:focus,
#nav.wvcsd input[type="week"]:focus,
#header.wvcsd input[type="week"]:focus,
#nav.wvcsd input[type="number"]:focus,
#header.wvcsd input[type="number"]:focus,
#nav.wvcsd input[type="email"]:focus,
#header.wvcsd input[type="email"]:focus,
#nav.wvcsd input[type="url"]:focus,
#header.wvcsd input[type="url"]:focus,
#nav.wvcsd input[type="search"]:focus,
#header.wvcsd input[type="search"]:focus,
#nav.wvcsd input[type="tel"]:focus,
#header.wvcsd input[type="tel"]:focus,
#nav.wvcsd input[type="color"]:focus,
#header.wvcsd input[type="color"]:focus,
#nav.wvcsd .uneditable-input:focus,
#header.wvcsd .uneditable-input:focus {
  border-color: rgba(82, 168, 236, 0.8);
  outline: 0;
  outline: thin dotted \9;
  /* IE6-9 */
  -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075), 0 0 8px rgba(82,168,236,.6);
  -moz-box-shadow: inset 0 1px 1px rgba(0,0,0,.075), 0 0 8px rgba(82,168,236,.6);
  box-shadow: inset 0 1px 1px rgba(0,0,0,.075), 0 0 8px rgba(82,168,236,.6);
}
#nav.wvcsd input[type="radio"],
#header.wvcsd input[type="radio"],
#nav.wvcsd input[type="checkbox"],
#header.wvcsd input[type="checkbox"] {
  margin: 4px 0 0;
  *margin-top: 0;
  /* IE7 */
  margin-top: 1px \9;
  /* IE8-9 */
  line-height: normal;
}
#nav.wvcsd input[type="file"],
#header.wvcsd input[type="file"],
#nav.wvcsd input[type="image"],
#header.wvcsd input[type="image"],
#nav.wvcsd input[type="submit"],
#header.wvcsd input[type="submit"],
#nav.wvcsd input[type="reset"],
#header.wvcsd input[type="reset"],
#nav.wvcsd input[type="button"],
#header.wvcsd input[type="button"],
#nav.wvcsd input[type="radio"],
#header.wvcsd input[type="radio"],
#nav.wvcsd input[type="checkbox"],
#header.wvcsd input[type="checkbox"] {
  width: auto;
}
#nav.wvcsd select,
#header.wvcsd select,
#nav.wvcsd input[type="file"],
#header.wvcsd input[type="file"] {
  height: 30px;
  /* In IE7, the height of the select element cannot be changed by height, only font-size */
  *margin-top: 4px;
  /* For IE7, add top margin to align select with labels */
  line-height: 30px;
}
#nav.wvcsd select,
#header.wvcsd select {
  width: 220px;
  border: 1px solid #cccccc;
  background-color: #ffffff;
}
#nav.wvcsd select[multiple],
#header.wvcsd select[multiple],
#nav.wvcsd select[size],
#header.wvcsd select[size] {
  height: auto;
}
#nav.wvcsd select:focus,
#header.wvcsd select:focus,
#nav.wvcsd input[type="file"]:focus,
#header.wvcsd input[type="file"]:focus,
#nav.wvcsd input[type="radio"]:focus,
#header.wvcsd input[type="radio"]:focus,
#nav.wvcsd input[type="checkbox"]:focus,
#header.wvcsd input[type="checkbox"]:focus {
  outline: thin dotted #333;
  outline: 5px auto -webkit-focus-ring-color;
  outline-offset: -2px;
}
#nav.wvcsd .uneditable-input,
#header.wvcsd .uneditable-input,
#nav.wvcsd .uneditable-textarea,
#header.wvcsd .uneditable-textarea {
  color: #999999;
  background-color: #fcfcfc;
  border-color: #cccccc;
  -webkit-box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.025);
  -moz-box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.025);
  box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.025);
  cursor: not-allowed;
}
#nav.wvcsd .uneditable-input,
#header.wvcsd .uneditable-input {
  overflow: hidden;
  white-space: nowrap;
}
#nav.wvcsd .uneditable-textarea,
#header.wvcsd .uneditable-textarea {
  width: auto;
  height: auto;
}
#nav.wvcsd input:-moz-placeholder,
#header.wvcsd input:-moz-placeholder,
#nav.wvcsd textarea:-moz-placeholder,
#header.wvcsd textarea:-moz-placeholder {
  color: #999999;
}
#nav.wvcsd input:-ms-input-placeholder,
#header.wvcsd input:-ms-input-placeholder,
#nav.wvcsd textarea:-ms-input-placeholder,
#header.wvcsd textarea:-ms-input-placeholder {
  color: #999999;
}
#nav.wvcsd input::-webkit-input-placeholder,
#header.wvcsd input::-webkit-input-placeholder,
#nav.wvcsd textarea::-webkit-input-placeholder,
#header.wvcsd textarea::-webkit-input-placeholder {
  color: #999999;
}
#nav.wvcsd .radio,
#header.wvcsd .radio,
#nav.wvcsd .checkbox,
#header.wvcsd .checkbox {
  min-height: 20px;
  padding-left: 20px;
}
#nav.wvcsd .radio input[type="radio"],
#header.wvcsd .radio input[type="radio"],
#nav.wvcsd .checkbox input[type="checkbox"],
#header.wvcsd .checkbox input[type="checkbox"] {
  float: left;
  margin-left: -20px;
}
#nav.wvcsd .controls > .radio:first-child,
#header.wvcsd .controls > .radio:first-child,
#nav.wvcsd .controls > .checkbox:first-child,
#header.wvcsd .controls > .checkbox:first-child {
  padding-top: 5px;
}
#nav.wvcsd .radio.inline,
#header.wvcsd .radio.inline,
#nav.wvcsd .checkbox.inline,
#header.wvcsd .checkbox.inline {
  display: inline-block;
  padding-top: 5px;
  margin-bottom: 0;
  vertical-align: middle;
}
#nav.wvcsd .radio.inline + .radio.inline,
#header.wvcsd .radio.inline + .radio.inline,
#nav.wvcsd .checkbox.inline + .checkbox.inline,
#header.wvcsd .checkbox.inline + .checkbox.inline {
  margin-left: 10px;
}
#nav.wvcsd .input-mini,
#header.wvcsd .input-mini {
  width: 60px;
}
#nav.wvcsd .input-small,
#header.wvcsd .input-small {
  width: 90px;
}
#nav.wvcsd .input-medium,
#header.wvcsd .input-medium {
  width: 150px;
}
#nav.wvcsd .input-large,
#header.wvcsd .input-large {
  width: 210px;
}
#nav.wvcsd .input-xlarge,
#header.wvcsd .input-xlarge {
  width: 270px;
}
#nav.wvcsd .input-xxlarge,
#header.wvcsd .input-xxlarge {
  width: 530px;
}
#nav.wvcsd input[class*="span"],
#header.wvcsd input[class*="span"],
#nav.wvcsd select[class*="span"],
#header.wvcsd select[class*="span"],
#nav.wvcsd textarea[class*="span"],
#header.wvcsd textarea[class*="span"],
#nav.wvcsd .uneditable-input[class*="span"],
#header.wvcsd .uneditable-input[class*="span"],
#nav.wvcsd .row-fluid input[class*="span"],
#header.wvcsd .row-fluid input[class*="span"],
#nav.wvcsd .row-fluid select[class*="span"],
#header.wvcsd .row-fluid select[class*="span"],
#nav.wvcsd .row-fluid textarea[class*="span"],
#header.wvcsd .row-fluid textarea[class*="span"],
#nav.wvcsd .row-fluid .uneditable-input[class*="span"],
#header.wvcsd .row-fluid .uneditable-input[class*="span"] {
  float: none;
  margin-left: 0;
}
#nav.wvcsd .input-append input[class*="span"],
#header.wvcsd .input-append input[class*="span"],
#nav.wvcsd .input-append .uneditable-input[class*="span"],
#header.wvcsd .input-append .uneditable-input[class*="span"],
#nav.wvcsd .input-prepend input[class*="span"],
#header.wvcsd .input-prepend input[class*="span"],
#nav.wvcsd .input-prepend .uneditable-input[class*="span"],
#header.wvcsd .input-prepend .uneditable-input[class*="span"],
#nav.wvcsd .row-fluid input[class*="span"],
#header.wvcsd .row-fluid input[class*="span"],
#nav.wvcsd .row-fluid select[class*="span"],
#header.wvcsd .row-fluid select[class*="span"],
#nav.wvcsd .row-fluid textarea[class*="span"],
#header.wvcsd .row-fluid textarea[class*="span"],
#nav.wvcsd .row-fluid .uneditable-input[class*="span"],
#header.wvcsd .row-fluid .uneditable-input[class*="span"],
#nav.wvcsd .row-fluid .input-prepend [class*="span"],
#header.wvcsd .row-fluid .input-prepend [class*="span"],
#nav.wvcsd .row-fluid .input-append [class*="span"],
#header.wvcsd .row-fluid .input-append [class*="span"] {
  display: inline-block;
}
#nav.wvcsd input,
#header.wvcsd input,
#nav.wvcsd textarea,
#header.wvcsd textarea,
#nav.wvcsd .uneditable-input,
#header.wvcsd .uneditable-input {
  margin-left: 0;
}
#nav.wvcsd .controls-row [class*="span"] + [class*="span"],
#header.wvcsd .controls-row [class*="span"] + [class*="span"] {
  margin-left: 20px;
}
#nav.wvcsd input.span12,
#header.wvcsd input.span12,
#nav.wvcsd textarea.span12,
#header.wvcsd textarea.span12,
#nav.wvcsd .uneditable-input.span12,
#header.wvcsd .uneditable-input.span12 {
  width: 926px;
}
#nav.wvcsd input.span11,
#header.wvcsd input.span11,
#nav.wvcsd textarea.span11,
#header.wvcsd textarea.span11,
#nav.wvcsd .uneditable-input.span11,
#header.wvcsd .uneditable-input.span11 {
  width: 846px;
}
#nav.wvcsd input.span10,
#header.wvcsd input.span10,
#nav.wvcsd textarea.span10,
#header.wvcsd textarea.span10,
#nav.wvcsd .uneditable-input.span10,
#header.wvcsd .uneditable-input.span10 {
  width: 766px;
}
#nav.wvcsd input.span9,
#header.wvcsd input.span9,
#nav.wvcsd textarea.span9,
#header.wvcsd textarea.span9,
#nav.wvcsd .uneditable-input.span9,
#header.wvcsd .uneditable-input.span9 {
  width: 686px;
}
#nav.wvcsd input.span8,
#header.wvcsd input.span8,
#nav.wvcsd textarea.span8,
#header.wvcsd textarea.span8,
#nav.wvcsd .uneditable-input.span8,
#header.wvcsd .uneditable-input.span8 {
  width: 606px;
}
#nav.wvcsd input.span7,
#header.wvcsd input.span7,
#nav.wvcsd textarea.span7,
#header.wvcsd textarea.span7,
#nav.wvcsd .uneditable-input.span7,
#header.wvcsd .uneditable-input.span7 {
  width: 526px;
}
#nav.wvcsd input.span6,
#header.wvcsd input.span6,
#nav.wvcsd textarea.span6,
#header.wvcsd textarea.span6,
#nav.wvcsd .uneditable-input.span6,
#header.wvcsd .uneditable-input.span6 {
  width: 446px;
}
#nav.wvcsd input.span5,
#header.wvcsd input.span5,
#nav.wvcsd textarea.span5,
#header.wvcsd textarea.span5,
#nav.wvcsd .uneditable-input.span5,
#header.wvcsd .uneditable-input.span5 {
  width: 366px;
}
#nav.wvcsd input.span4,
#header.wvcsd input.span4,
#nav.wvcsd textarea.span4,
#header.wvcsd textarea.span4,
#nav.wvcsd .uneditable-input.span4,
#header.wvcsd .uneditable-input.span4 {
  width: 286px;
}
#nav.wvcsd input.span3,
#header.wvcsd input.span3,
#nav.wvcsd textarea.span3,
#header.wvcsd textarea.span3,
#nav.wvcsd .uneditable-input.span3,
#header.wvcsd .uneditable-input.span3 {
  width: 206px;
}
#nav.wvcsd input.span2,
#header.wvcsd input.span2,
#nav.wvcsd textarea.span2,
#header.wvcsd textarea.span2,
#nav.wvcsd .uneditable-input.span2,
#header.wvcsd .uneditable-input.span2 {
  width: 126px;
}
#nav.wvcsd input.span1,
#header.wvcsd input.span1,
#nav.wvcsd textarea.span1,
#header.wvcsd textarea.span1,
#nav.wvcsd .uneditable-input.span1,
#header.wvcsd .uneditable-input.span1 {
  width: 46px;
}
#nav.wvcsd .controls-row,
#header.wvcsd .controls-row {
  *zoom: 1;
}
#nav.wvcsd .controls-row:before,
#header.wvcsd .controls-row:before,
#nav.wvcsd .controls-row:after,
#header.wvcsd .controls-row:after {
  display: table;
  content: "";
  line-height: 0;
}
#nav.wvcsd .controls-row:after,
#header.wvcsd .controls-row:after {
  clear: both;
}
#nav.wvcsd .controls-row [class*="span"],
#header.wvcsd .controls-row [class*="span"],
#nav.wvcsd .row-fluid .controls-row [class*="span"],
#header.wvcsd .row-fluid .controls-row [class*="span"] {
  float: left;
}
#nav.wvcsd .controls-row .checkbox[class*="span"],
#header.wvcsd .controls-row .checkbox[class*="span"],
#nav.wvcsd .controls-row .radio[class*="span"],
#header.wvcsd .controls-row .radio[class*="span"] {
  padding-top: 5px;
}
#nav.wvcsd input[disabled],
#header.wvcsd input[disabled],
#nav.wvcsd select[disabled],
#header.wvcsd select[disabled],
#nav.wvcsd textarea[disabled],
#header.wvcsd textarea[disabled],
#nav.wvcsd input[readonly],
#header.wvcsd input[readonly],
#nav.wvcsd select[readonly],
#header.wvcsd select[readonly],
#nav.wvcsd textarea[readonly],
#header.wvcsd textarea[readonly] {
  cursor: not-allowed;
  background-color: #eeeeee;
}
#nav.wvcsd input[type="radio"][disabled],
#header.wvcsd input[type="radio"][disabled],
#nav.wvcsd input[type="checkbox"][disabled],
#header.wvcsd input[type="checkbox"][disabled],
#nav.wvcsd input[type="radio"][readonly],
#header.wvcsd input[type="radio"][readonly],
#nav.wvcsd input[type="checkbox"][readonly],
#header.wvcsd input[type="checkbox"][readonly] {
  background-color: transparent;
}
#nav.wvcsd .control-group.warning .control-label,
#header.wvcsd .control-group.warning .control-label,
#nav.wvcsd .control-group.warning .help-block,
#header.wvcsd .control-group.warning .help-block,
#nav.wvcsd .control-group.warning .help-inline,
#header.wvcsd .control-group.warning .help-inline {
  color: #c09853;
}
#nav.wvcsd .control-group.warning .checkbox,
#header.wvcsd .control-group.warning .checkbox,
#nav.wvcsd .control-group.warning .radio,
#header.wvcsd .control-group.warning .radio,
#nav.wvcsd .control-group.warning input,
#header.wvcsd .control-group.warning input,
#nav.wvcsd .control-group.warning select,
#header.wvcsd .control-group.warning select,
#nav.wvcsd .control-group.warning textarea,
#header.wvcsd .control-group.warning textarea {
  color: #c09853;
}
#nav.wvcsd .control-group.warning input,
#header.wvcsd .control-group.warning input,
#nav.wvcsd .control-group.warning select,
#header.wvcsd .control-group.warning select,
#nav.wvcsd .control-group.warning textarea,
#header.wvcsd .control-group.warning textarea {
  border-color: #c09853;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
  -moz-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
  box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
}
#nav.wvcsd .control-group.warning input:focus,
#header.wvcsd .control-group.warning input:focus,
#nav.wvcsd .control-group.warning select:focus,
#header.wvcsd .control-group.warning select:focus,
#nav.wvcsd .control-group.warning textarea:focus,
#header.wvcsd .control-group.warning textarea:focus {
  border-color: #a47e3c;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 6px #dbc59e;
  -moz-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 6px #dbc59e;
  box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 6px #dbc59e;
}
#nav.wvcsd .control-group.warning .input-prepend .add-on,
#header.wvcsd .control-group.warning .input-prepend .add-on,
#nav.wvcsd .control-group.warning .input-append .add-on,
#header.wvcsd .control-group.warning .input-append .add-on {
  color: #c09853;
  background-color: #fcf8e3;
  border-color: #c09853;
}
#nav.wvcsd .control-group.error .control-label,
#header.wvcsd .control-group.error .control-label,
#nav.wvcsd .control-group.error .help-block,
#header.wvcsd .control-group.error .help-block,
#nav.wvcsd .control-group.error .help-inline,
#header.wvcsd .control-group.error .help-inline {
  color: #b94a48;
}
#nav.wvcsd .control-group.error .checkbox,
#header.wvcsd .control-group.error .checkbox,
#nav.wvcsd .control-group.error .radio,
#header.wvcsd .control-group.error .radio,
#nav.wvcsd .control-group.error input,
#header.wvcsd .control-group.error input,
#nav.wvcsd .control-group.error select,
#header.wvcsd .control-group.error select,
#nav.wvcsd .control-group.error textarea,
#header.wvcsd .control-group.error textarea {
  color: #b94a48;
}
#nav.wvcsd .control-group.error input,
#header.wvcsd .control-group.error input,
#nav.wvcsd .control-group.error select,
#header.wvcsd .control-group.error select,
#nav.wvcsd .control-group.error textarea,
#header.wvcsd .control-group.error textarea {
  border-color: #b94a48;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
  -moz-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
  box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
}
#nav.wvcsd .control-group.error input:focus,
#header.wvcsd .control-group.error input:focus,
#nav.wvcsd .control-group.error select:focus,
#header.wvcsd .control-group.error select:focus,
#nav.wvcsd .control-group.error textarea:focus,
#header.wvcsd .control-group.error textarea:focus {
  border-color: #953b39;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 6px #d59392;
  -moz-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 6px #d59392;
  box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 6px #d59392;
}
#nav.wvcsd .control-group.error .input-prepend .add-on,
#header.wvcsd .control-group.error .input-prepend .add-on,
#nav.wvcsd .control-group.error .input-append .add-on,
#header.wvcsd .control-group.error .input-append .add-on {
  color: #b94a48;
  background-color: #f2dede;
  border-color: #b94a48;
}
#nav.wvcsd .control-group.success .control-label,
#header.wvcsd .control-group.success .control-label,
#nav.wvcsd .control-group.success .help-block,
#header.wvcsd .control-group.success .help-block,
#nav.wvcsd .control-group.success .help-inline,
#header.wvcsd .control-group.success .help-inline {
  color: #468847;
}
#nav.wvcsd .control-group.success .checkbox,
#header.wvcsd .control-group.success .checkbox,
#nav.wvcsd .control-group.success .radio,
#header.wvcsd .control-group.success .radio,
#nav.wvcsd .control-group.success input,
#header.wvcsd .control-group.success input,
#nav.wvcsd .control-group.success select,
#header.wvcsd .control-group.success select,
#nav.wvcsd .control-group.success textarea,
#header.wvcsd .control-group.success textarea {
  color: #468847;
}
#nav.wvcsd .control-group.success input,
#header.wvcsd .control-group.success input,
#nav.wvcsd .control-group.success select,
#header.wvcsd .control-group.success select,
#nav.wvcsd .control-group.success textarea,
#header.wvcsd .control-group.success textarea {
  border-color: #468847;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
  -moz-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
  box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
}
#nav.wvcsd .control-group.success input:focus,
#header.wvcsd .control-group.success input:focus,
#nav.wvcsd .control-group.success select:focus,
#header.wvcsd .control-group.success select:focus,
#nav.wvcsd .control-group.success textarea:focus,
#header.wvcsd .control-group.success textarea:focus {
  border-color: #356635;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 6px #7aba7b;
  -moz-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 6px #7aba7b;
  box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 6px #7aba7b;
}
#nav.wvcsd .control-group.success .input-prepend .add-on,
#header.wvcsd .control-group.success .input-prepend .add-on,
#nav.wvcsd .control-group.success .input-append .add-on,
#header.wvcsd .control-group.success .input-append .add-on {
  color: #468847;
  background-color: #dff0d8;
  border-color: #468847;
}
#nav.wvcsd .control-group.info .control-label,
#header.wvcsd .control-group.info .control-label,
#nav.wvcsd .control-group.info .help-block,
#header.wvcsd .control-group.info .help-block,
#nav.wvcsd .control-group.info .help-inline,
#header.wvcsd .control-group.info .help-inline {
  color: #3a87ad;
}
#nav.wvcsd .control-group.info .checkbox,
#header.wvcsd .control-group.info .checkbox,
#nav.wvcsd .control-group.info .radio,
#header.wvcsd .control-group.info .radio,
#nav.wvcsd .control-group.info input,
#header.wvcsd .control-group.info input,
#nav.wvcsd .control-group.info select,
#header.wvcsd .control-group.info select,
#nav.wvcsd .control-group.info textarea,
#header.wvcsd .control-group.info textarea {
  color: #3a87ad;
}
#nav.wvcsd .control-group.info input,
#header.wvcsd .control-group.info input,
#nav.wvcsd .control-group.info select,
#header.wvcsd .control-group.info select,
#nav.wvcsd .control-group.info textarea,
#header.wvcsd .control-group.info textarea {
  border-color: #3a87ad;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
  -moz-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
  box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
}
#nav.wvcsd .control-group.info input:focus,
#header.wvcsd .control-group.info input:focus,
#nav.wvcsd .control-group.info select:focus,
#header.wvcsd .control-group.info select:focus,
#nav.wvcsd .control-group.info textarea:focus,
#header.wvcsd .control-group.info textarea:focus {
  border-color: #2d6987;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 6px #7ab5d3;
  -moz-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 6px #7ab5d3;
  box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 6px #7ab5d3;
}
#nav.wvcsd .control-group.info .input-prepend .add-on,
#header.wvcsd .control-group.info .input-prepend .add-on,
#nav.wvcsd .control-group.info .input-append .add-on,
#header.wvcsd .control-group.info .input-append .add-on {
  color: #3a87ad;
  background-color: #d9edf7;
  border-color: #3a87ad;
}
#nav.wvcsd input:focus:invalid,
#header.wvcsd input:focus:invalid,
#nav.wvcsd textarea:focus:invalid,
#header.wvcsd textarea:focus:invalid,
#nav.wvcsd select:focus:invalid,
#header.wvcsd select:focus:invalid {
  color: #b94a48;
  border-color: #ee5f5b;
}
#nav.wvcsd input:focus:invalid:focus,
#header.wvcsd input:focus:invalid:focus,
#nav.wvcsd textarea:focus:invalid:focus,
#header.wvcsd textarea:focus:invalid:focus,
#nav.wvcsd select:focus:invalid:focus,
#header.wvcsd select:focus:invalid:focus {
  border-color: #e9322d;
  -webkit-box-shadow: 0 0 6px #f8b9b7;
  -moz-box-shadow: 0 0 6px #f8b9b7;
  box-shadow: 0 0 6px #f8b9b7;
}
#nav.wvcsd .form-actions,
#header.wvcsd .form-actions {
  padding: 19px 20px 20px;
  margin-top: 20px;
  margin-bottom: 20px;
  background-color: #f5f5f5;
  border-top: 1px solid #e5e5e5;
  *zoom: 1;
}
#nav.wvcsd .form-actions:before,
#header.wvcsd .form-actions:before,
#nav.wvcsd .form-actions:after,
#header.wvcsd .form-actions:after {
  display: table;
  content: "";
  line-height: 0;
}
#nav.wvcsd .form-actions:after,
#header.wvcsd .form-actions:after {
  clear: both;
}
#nav.wvcsd .help-block,
#header.wvcsd .help-block,
#nav.wvcsd .help-inline,
#header.wvcsd .help-inline {
  color: #595959;
}
#nav.wvcsd .help-block,
#header.wvcsd .help-block {
  display: block;
  margin-bottom: 10px;
}
#nav.wvcsd .help-inline,
#header.wvcsd .help-inline {
  display: inline-block;
  *display: inline;
  /* IE7 inline-block hack */
  *zoom: 1;
  vertical-align: middle;
  padding-left: 5px;
}
#nav.wvcsd .input-append,
#header.wvcsd .input-append,
#nav.wvcsd .input-prepend,
#header.wvcsd .input-prepend {
  display: inline-block;
  margin-bottom: 10px;
  vertical-align: middle;
  font-size: 0;
  white-space: nowrap;
}
#nav.wvcsd .input-append input,
#header.wvcsd .input-append input,
#nav.wvcsd .input-prepend input,
#header.wvcsd .input-prepend input,
#nav.wvcsd .input-append select,
#header.wvcsd .input-append select,
#nav.wvcsd .input-prepend select,
#header.wvcsd .input-prepend select,
#nav.wvcsd .input-append .uneditable-input,
#header.wvcsd .input-append .uneditable-input,
#nav.wvcsd .input-prepend .uneditable-input,
#header.wvcsd .input-prepend .uneditable-input,
#nav.wvcsd .input-append .dropdown-menu,
#header.wvcsd .input-append .dropdown-menu,
#nav.wvcsd .input-prepend .dropdown-menu,
#header.wvcsd .input-prepend .dropdown-menu,
#nav.wvcsd .input-append .popover,
#header.wvcsd .input-append .popover,
#nav.wvcsd .input-prepend .popover,
#header.wvcsd .input-prepend .popover {
  font-size: 14px;
}
#nav.wvcsd .input-append input,
#header.wvcsd .input-append input,
#nav.wvcsd .input-prepend input,
#header.wvcsd .input-prepend input,
#nav.wvcsd .input-append select,
#header.wvcsd .input-append select,
#nav.wvcsd .input-prepend select,
#header.wvcsd .input-prepend select,
#nav.wvcsd .input-append .uneditable-input,
#header.wvcsd .input-append .uneditable-input,
#nav.wvcsd .input-prepend .uneditable-input,
#header.wvcsd .input-prepend .uneditable-input {
  position: relative;
  margin-bottom: 0;
  *margin-left: 0;
  vertical-align: top;
  -webkit-border-radius: 0 4px 4px 0;
  -moz-border-radius: 0 4px 4px 0;
  border-radius: 0 4px 4px 0;
}
#nav.wvcsd .input-append input:focus,
#header.wvcsd .input-append input:focus,
#nav.wvcsd .input-prepend input:focus,
#header.wvcsd .input-prepend input:focus,
#nav.wvcsd .input-append select:focus,
#header.wvcsd .input-append select:focus,
#nav.wvcsd .input-prepend select:focus,
#header.wvcsd .input-prepend select:focus,
#nav.wvcsd .input-append .uneditable-input:focus,
#header.wvcsd .input-append .uneditable-input:focus,
#nav.wvcsd .input-prepend .uneditable-input:focus,
#header.wvcsd .input-prepend .uneditable-input:focus {
  z-index: 2;
}
#nav.wvcsd .input-append .add-on,
#header.wvcsd .input-append .add-on,
#nav.wvcsd .input-prepend .add-on,
#header.wvcsd .input-prepend .add-on {
  display: inline-block;
  width: auto;
  height: 20px;
  min-width: 16px;
  padding: 4px 5px;
  font-size: 14px;
  font-weight: normal;
  line-height: 20px;
  text-align: center;
  text-shadow: 0 1px 0 #ffffff;
  background-color: #eeeeee;
  border: 1px solid #ccc;
}
#nav.wvcsd .input-append .add-on,
#header.wvcsd .input-append .add-on,
#nav.wvcsd .input-prepend .add-on,
#header.wvcsd .input-prepend .add-on,
#nav.wvcsd .input-append .btn,
#header.wvcsd .input-append .btn,
#nav.wvcsd .input-prepend .btn,
#header.wvcsd .input-prepend .btn,
#nav.wvcsd .input-append .btn-group > .dropdown-toggle,
#header.wvcsd .input-append .btn-group > .dropdown-toggle,
#nav.wvcsd .input-prepend .btn-group > .dropdown-toggle,
#header.wvcsd .input-prepend .btn-group > .dropdown-toggle {
  vertical-align: top;
  -webkit-border-radius: 0;
  -moz-border-radius: 0;
  border-radius: 0;
}
#nav.wvcsd .input-append .active,
#header.wvcsd .input-append .active,
#nav.wvcsd .input-prepend .active,
#header.wvcsd .input-prepend .active {
  background-color: #a9dba9;
  border-color: #46a546;
}
#nav.wvcsd .input-prepend .add-on,
#header.wvcsd .input-prepend .add-on,
#nav.wvcsd .input-prepend .btn,
#header.wvcsd .input-prepend .btn {
  margin-right: -1px;
}
#nav.wvcsd .input-prepend .add-on:first-child,
#header.wvcsd .input-prepend .add-on:first-child,
#nav.wvcsd .input-prepend .btn:first-child,
#header.wvcsd .input-prepend .btn:first-child {
  -webkit-border-radius: 4px 0 0 4px;
  -moz-border-radius: 4px 0 0 4px;
  border-radius: 4px 0 0 4px;
}
#nav.wvcsd .input-append input,
#header.wvcsd .input-append input,
#nav.wvcsd .input-append select,
#header.wvcsd .input-append select,
#nav.wvcsd .input-append .uneditable-input,
#header.wvcsd .input-append .uneditable-input {
  -webkit-border-radius: 4px 0 0 4px;
  -moz-border-radius: 4px 0 0 4px;
  border-radius: 4px 0 0 4px;
}
#nav.wvcsd .input-append input + .btn-group .btn:last-child,
#header.wvcsd .input-append input + .btn-group .btn:last-child,
#nav.wvcsd .input-append select + .btn-group .btn:last-child,
#header.wvcsd .input-append select + .btn-group .btn:last-child,
#nav.wvcsd .input-append .uneditable-input + .btn-group .btn:last-child,
#header.wvcsd .input-append .uneditable-input + .btn-group .btn:last-child {
  -webkit-border-radius: 0 4px 4px 0;
  -moz-border-radius: 0 4px 4px 0;
  border-radius: 0 4px 4px 0;
}
#nav.wvcsd .input-append .add-on,
#header.wvcsd .input-append .add-on,
#nav.wvcsd .input-append .btn,
#header.wvcsd .input-append .btn,
#nav.wvcsd .input-append .btn-group,
#header.wvcsd .input-append .btn-group {
  margin-left: -1px;
}
#nav.wvcsd .input-append .add-on:last-child,
#header.wvcsd .input-append .add-on:last-child,
#nav.wvcsd .input-append .btn:last-child,
#header.wvcsd .input-append .btn:last-child,
#nav.wvcsd .input-append .btn-group:last-child > .dropdown-toggle,
#header.wvcsd .input-append .btn-group:last-child > .dropdown-toggle {
  -webkit-border-radius: 0 4px 4px 0;
  -moz-border-radius: 0 4px 4px 0;
  border-radius: 0 4px 4px 0;
}
#nav.wvcsd .input-prepend.input-append input,
#header.wvcsd .input-prepend.input-append input,
#nav.wvcsd .input-prepend.input-append select,
#header.wvcsd .input-prepend.input-append select,
#nav.wvcsd .input-prepend.input-append .uneditable-input,
#header.wvcsd .input-prepend.input-append .uneditable-input {
  -webkit-border-radius: 0;
  -moz-border-radius: 0;
  border-radius: 0;
}
#nav.wvcsd .input-prepend.input-append input + .btn-group .btn,
#header.wvcsd .input-prepend.input-append input + .btn-group .btn,
#nav.wvcsd .input-prepend.input-append select + .btn-group .btn,
#header.wvcsd .input-prepend.input-append select + .btn-group .btn,
#nav.wvcsd .input-prepend.input-append .uneditable-input + .btn-group .btn,
#header.wvcsd .input-prepend.input-append .uneditable-input + .btn-group .btn {
  -webkit-border-radius: 0 4px 4px 0;
  -moz-border-radius: 0 4px 4px 0;
  border-radius: 0 4px 4px 0;
}
#nav.wvcsd .input-prepend.input-append .add-on:first-child,
#header.wvcsd .input-prepend.input-append .add-on:first-child,
#nav.wvcsd .input-prepend.input-append .btn:first-child,
#header.wvcsd .input-prepend.input-append .btn:first-child {
  margin-right: -1px;
  -webkit-border-radius: 4px 0 0 4px;
  -moz-border-radius: 4px 0 0 4px;
  border-radius: 4px 0 0 4px;
}
#nav.wvcsd .input-prepend.input-append .add-on:last-child,
#header.wvcsd .input-prepend.input-append .add-on:last-child,
#nav.wvcsd .input-prepend.input-append .btn:last-child,
#header.wvcsd .input-prepend.input-append .btn:last-child {
  margin-left: -1px;
  -webkit-border-radius: 0 4px 4px 0;
  -moz-border-radius: 0 4px 4px 0;
  border-radius: 0 4px 4px 0;
}
#nav.wvcsd .input-prepend.input-append .btn-group:first-child,
#header.wvcsd .input-prepend.input-append .btn-group:first-child {
  margin-left: 0;
}
#nav.wvcsd input.search-query,
#header.wvcsd input.search-query {
  padding-right: 14px;
  padding-right: 4px \9;
  padding-left: 14px;
  padding-left: 4px \9;
  /* IE7-8 doesn't have border-radius, so don't indent the padding */
  margin-bottom: 0;
  -webkit-border-radius: 15px;
  -moz-border-radius: 15px;
  border-radius: 15px;
}
#nav.wvcsd .form-search .input-append .search-query,
#header.wvcsd .form-search .input-append .search-query,
#nav.wvcsd .form-search .input-prepend .search-query,
#header.wvcsd .form-search .input-prepend .search-query {
  -webkit-border-radius: 0;
  -moz-border-radius: 0;
  border-radius: 0;
}
#nav.wvcsd .form-search .input-append .search-query,
#header.wvcsd .form-search .input-append .search-query {
  -webkit-border-radius: 14px 0 0 14px;
  -moz-border-radius: 14px 0 0 14px;
  border-radius: 14px 0 0 14px;
}
#nav.wvcsd .form-search .input-append .btn,
#header.wvcsd .form-search .input-append .btn {
  -webkit-border-radius: 0 14px 14px 0;
  -moz-border-radius: 0 14px 14px 0;
  border-radius: 0 14px 14px 0;
}
#nav.wvcsd .form-search .input-prepend .search-query,
#header.wvcsd .form-search .input-prepend .search-query {
  -webkit-border-radius: 0 14px 14px 0;
  -moz-border-radius: 0 14px 14px 0;
  border-radius: 0 14px 14px 0;
}
#nav.wvcsd .form-search .input-prepend .btn,
#header.wvcsd .form-search .input-prepend .btn {
  -webkit-border-radius: 14px 0 0 14px;
  -moz-border-radius: 14px 0 0 14px;
  border-radius: 14px 0 0 14px;
}
#nav.wvcsd .form-search input,
#header.wvcsd .form-search input,
#nav.wvcsd .form-inline input,
#header.wvcsd .form-inline input,
#nav.wvcsd .form-horizontal input,
#header.wvcsd .form-horizontal input,
#nav.wvcsd .form-search textarea,
#header.wvcsd .form-search textarea,
#nav.wvcsd .form-inline textarea,
#header.wvcsd .form-inline textarea,
#nav.wvcsd .form-horizontal textarea,
#header.wvcsd .form-horizontal textarea,
#nav.wvcsd .form-search select,
#header.wvcsd .form-search select,
#nav.wvcsd .form-inline select,
#header.wvcsd .form-inline select,
#nav.wvcsd .form-horizontal select,
#header.wvcsd .form-horizontal select,
#nav.wvcsd .form-search .help-inline,
#header.wvcsd .form-search .help-inline,
#nav.wvcsd .form-inline .help-inline,
#header.wvcsd .form-inline .help-inline,
#nav.wvcsd .form-horizontal .help-inline,
#header.wvcsd .form-horizontal .help-inline,
#nav.wvcsd .form-search .uneditable-input,
#header.wvcsd .form-search .uneditable-input,
#nav.wvcsd .form-inline .uneditable-input,
#header.wvcsd .form-inline .uneditable-input,
#nav.wvcsd .form-horizontal .uneditable-input,
#header.wvcsd .form-horizontal .uneditable-input,
#nav.wvcsd .form-search .input-prepend,
#header.wvcsd .form-search .input-prepend,
#nav.wvcsd .form-inline .input-prepend,
#header.wvcsd .form-inline .input-prepend,
#nav.wvcsd .form-horizontal .input-prepend,
#header.wvcsd .form-horizontal .input-prepend,
#nav.wvcsd .form-search .input-append,
#header.wvcsd .form-search .input-append,
#nav.wvcsd .form-inline .input-append,
#header.wvcsd .form-inline .input-append,
#nav.wvcsd .form-horizontal .input-append,
#header.wvcsd .form-horizontal .input-append {
  display: inline-block;
  *display: inline;
  /* IE7 inline-block hack */
  *zoom: 1;
  margin-bottom: 0;
  vertical-align: middle;
}
#nav.wvcsd .form-search .hide,
#header.wvcsd .form-search .hide,
#nav.wvcsd .form-inline .hide,
#header.wvcsd .form-inline .hide,
#nav.wvcsd .form-horizontal .hide,
#header.wvcsd .form-horizontal .hide {
  display: none;
}
#nav.wvcsd .form-search label,
#header.wvcsd .form-search label,
#nav.wvcsd .form-inline label,
#header.wvcsd .form-inline label,
#nav.wvcsd .form-search .btn-group,
#header.wvcsd .form-search .btn-group,
#nav.wvcsd .form-inline .btn-group,
#header.wvcsd .form-inline .btn-group {
  display: inline-block;
}
#nav.wvcsd .form-search .input-append,
#header.wvcsd .form-search .input-append,
#nav.wvcsd .form-inline .input-append,
#header.wvcsd .form-inline .input-append,
#nav.wvcsd .form-search .input-prepend,
#header.wvcsd .form-search .input-prepend,
#nav.wvcsd .form-inline .input-prepend,
#header.wvcsd .form-inline .input-prepend {
  margin-bottom: 0;
}
#nav.wvcsd .form-search .radio,
#header.wvcsd .form-search .radio,
#nav.wvcsd .form-search .checkbox,
#header.wvcsd .form-search .checkbox,
#nav.wvcsd .form-inline .radio,
#header.wvcsd .form-inline .radio,
#nav.wvcsd .form-inline .checkbox,
#header.wvcsd .form-inline .checkbox {
  padding-left: 0;
  margin-bottom: 0;
  vertical-align: middle;
}
#nav.wvcsd .form-search .radio input[type="radio"],
#header.wvcsd .form-search .radio input[type="radio"],
#nav.wvcsd .form-search .checkbox input[type="checkbox"],
#header.wvcsd .form-search .checkbox input[type="checkbox"],
#nav.wvcsd .form-inline .radio input[type="radio"],
#header.wvcsd .form-inline .radio input[type="radio"],
#nav.wvcsd .form-inline .checkbox input[type="checkbox"],
#header.wvcsd .form-inline .checkbox input[type="checkbox"] {
  float: left;
  margin-right: 3px;
  margin-left: 0;
}
#nav.wvcsd .control-group,
#header.wvcsd .control-group {
  margin-bottom: 10px;
}
#nav.wvcsd legend + .control-group,
#header.wvcsd legend + .control-group {
  margin-top: 20px;
  -webkit-margin-top-collapse: separate;
}
#nav.wvcsd .form-horizontal .control-group,
#header.wvcsd .form-horizontal .control-group {
  margin-bottom: 20px;
  *zoom: 1;
}
#nav.wvcsd .form-horizontal .control-group:before,
#header.wvcsd .form-horizontal .control-group:before,
#nav.wvcsd .form-horizontal .control-group:after,
#header.wvcsd .form-horizontal .control-group:after {
  display: table;
  content: "";
  line-height: 0;
}
#nav.wvcsd .form-horizontal .control-group:after,
#header.wvcsd .form-horizontal .control-group:after {
  clear: both;
}
#nav.wvcsd .form-horizontal .control-label,
#header.wvcsd .form-horizontal .control-label {
  float: left;
  width: 160px;
  padding-top: 5px;
  text-align: right;
}
#nav.wvcsd .form-horizontal .controls,
#header.wvcsd .form-horizontal .controls {
  *display: inline-block;
  *padding-left: 20px;
  margin-left: 180px;
  *margin-left: 0;
}
#nav.wvcsd .form-horizontal .controls:first-child,
#header.wvcsd .form-horizontal .controls:first-child {
  *padding-left: 180px;
}
#nav.wvcsd .form-horizontal .help-block,
#header.wvcsd .form-horizontal .help-block {
  margin-bottom: 0;
}
#nav.wvcsd .form-horizontal input + .help-block,
#header.wvcsd .form-horizontal input + .help-block,
#nav.wvcsd .form-horizontal select + .help-block,
#header.wvcsd .form-horizontal select + .help-block,
#nav.wvcsd .form-horizontal textarea + .help-block,
#header.wvcsd .form-horizontal textarea + .help-block,
#nav.wvcsd .form-horizontal .uneditable-input + .help-block,
#header.wvcsd .form-horizontal .uneditable-input + .help-block,
#nav.wvcsd .form-horizontal .input-prepend + .help-block,
#header.wvcsd .form-horizontal .input-prepend + .help-block,
#nav.wvcsd .form-horizontal .input-append + .help-block,
#header.wvcsd .form-horizontal .input-append + .help-block {
  margin-top: 10px;
}
#nav.wvcsd .form-horizontal .form-actions,
#header.wvcsd .form-horizontal .form-actions {
  padding-left: 180px;
}
#nav.wvcsd .row,
#header.wvcsd .row {
  margin-left: -20px;
  *zoom: 1;
}
#nav.wvcsd .row:before,
#header.wvcsd .row:before,
#nav.wvcsd .row:after,
#header.wvcsd .row:after {
  display: table;
  content: "";
  line-height: 0;
}
#nav.wvcsd .row:after,
#header.wvcsd .row:after {
  clear: both;
}
#nav.wvcsd [class*="span"],
#header.wvcsd [class*="span"] {
  float: left;
  min-height: 1px;
  margin-left: 20px;
}
#nav.wvcsd .container,
#header.wvcsd .container,
#nav.wvcsd .navbar-static-top .container,
#header.wvcsd .navbar-static-top .container,
#nav.wvcsd .navbar-fixed-top .container,
#header.wvcsd .navbar-fixed-top .container,
#nav.wvcsd .navbar-fixed-bottom .container,
#header.wvcsd .navbar-fixed-bottom .container {
  width: 940px;
}
#nav.wvcsd .span12,
#header.wvcsd .span12 {
  width: 940px;
}
#nav.wvcsd .span11,
#header.wvcsd .span11 {
  width: 860px;
}
#nav.wvcsd .span10,
#header.wvcsd .span10 {
  width: 780px;
}
#nav.wvcsd .span9,
#header.wvcsd .span9 {
  width: 700px;
}
#nav.wvcsd .span8,
#header.wvcsd .span8 {
  width: 620px;
}
#nav.wvcsd .span7,
#header.wvcsd .span7 {
  width: 540px;
}
#nav.wvcsd .span6,
#header.wvcsd .span6 {
  width: 460px;
}
#nav.wvcsd .span5,
#header.wvcsd .span5 {
  width: 380px;
}
#nav.wvcsd .span4,
#header.wvcsd .span4 {
  width: 300px;
}
#nav.wvcsd .span3,
#header.wvcsd .span3 {
  width: 220px;
}
#nav.wvcsd .span2,
#header.wvcsd .span2 {
  width: 140px;
}
#nav.wvcsd .span1,
#header.wvcsd .span1 {
  width: 60px;
}
#nav.wvcsd .offset12,
#header.wvcsd .offset12 {
  margin-left: 980px;
}
#nav.wvcsd .offset11,
#header.wvcsd .offset11 {
  margin-left: 900px;
}
#nav.wvcsd .offset10,
#header.wvcsd .offset10 {
  margin-left: 820px;
}
#nav.wvcsd .offset9,
#header.wvcsd .offset9 {
  margin-left: 740px;
}
#nav.wvcsd .offset8,
#header.wvcsd .offset8 {
  margin-left: 660px;
}
#nav.wvcsd .offset7,
#header.wvcsd .offset7 {
  margin-left: 580px;
}
#nav.wvcsd .offset6,
#header.wvcsd .offset6 {
  margin-left: 500px;
}
#nav.wvcsd .offset5,
#header.wvcsd .offset5 {
  margin-left: 420px;
}
#nav.wvcsd .offset4,
#header.wvcsd .offset4 {
  margin-left: 340px;
}
#nav.wvcsd .offset3,
#header.wvcsd .offset3 {
  margin-left: 260px;
}
#nav.wvcsd .offset2,
#header.wvcsd .offset2 {
  margin-left: 180px;
}
#nav.wvcsd .offset1,
#header.wvcsd .offset1 {
  margin-left: 100px;
}
#nav.wvcsd .row-fluid,
#header.wvcsd .row-fluid {
  width: 100%;
  *zoom: 1;
}
#nav.wvcsd .row-fluid:before,
#header.wvcsd .row-fluid:before,
#nav.wvcsd .row-fluid:after,
#header.wvcsd .row-fluid:after {
  display: table;
  content: "";
  line-height: 0;
}
#nav.wvcsd .row-fluid:after,
#header.wvcsd .row-fluid:after {
  clear: both;
}
#nav.wvcsd .row-fluid [class*="span"],
#header.wvcsd .row-fluid [class*="span"] {
  display: block;
  width: 100%;
  min-height: 30px;
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
  float: left;
  margin-left: 2.127659574468085%;
  *margin-left: 2.074468085106383%;
}
#nav.wvcsd .row-fluid [class*="span"]:first-child,
#header.wvcsd .row-fluid [class*="span"]:first-child {
  margin-left: 0;
}
#nav.wvcsd .row-fluid .controls-row [class*="span"] + [class*="span"],
#header.wvcsd .row-fluid .controls-row [class*="span"] + [class*="span"] {
  margin-left: 2.127659574468085%;
}
#nav.wvcsd .row-fluid .span12,
#header.wvcsd .row-fluid .span12 {
  width: 100%;
  *width: 99.94680851063829%;
}
#nav.wvcsd .row-fluid .span11,
#header.wvcsd .row-fluid .span11 {
  width: 91.48936170212765%;
  *width: 91.43617021276594%;
}
#nav.wvcsd .row-fluid .span10,
#header.wvcsd .row-fluid .span10 {
  width: 82.97872340425532%;
  *width: 82.92553191489361%;
}
#nav.wvcsd .row-fluid .span9,
#header.wvcsd .row-fluid .span9 {
  width: 74.46808510638297%;
  *width: 74.41489361702126%;
}
#nav.wvcsd .row-fluid .span8,
#header.wvcsd .row-fluid .span8 {
  width: 65.95744680851064%;
  *width: 65.90425531914893%;
}
#nav.wvcsd .row-fluid .span7,
#header.wvcsd .row-fluid .span7 {
  width: 57.44680851063829%;
  *width: 57.39361702127659%;
}
#nav.wvcsd .row-fluid .span6,
#header.wvcsd .row-fluid .span6 {
  width: 48.93617021276595%;
  *width: 48.88297872340425%;
}
#nav.wvcsd .row-fluid .span5,
#header.wvcsd .row-fluid .span5 {
  width: 40.42553191489362%;
  *width: 40.37234042553192%;
}
#nav.wvcsd .row-fluid .span4,
#header.wvcsd .row-fluid .span4 {
  width: 31.914893617021278%;
  *width: 31.861702127659576%;
}
#nav.wvcsd .row-fluid .span3,
#header.wvcsd .row-fluid .span3 {
  width: 23.404255319148934%;
  *width: 23.351063829787233%;
}
#nav.wvcsd .row-fluid .span2,
#header.wvcsd .row-fluid .span2 {
  width: 14.893617021276595%;
  *width: 14.840425531914894%;
}
#nav.wvcsd .row-fluid .span1,
#header.wvcsd .row-fluid .span1 {
  width: 6.382978723404255%;
  *width: 6.329787234042553%;
}
#nav.wvcsd .row-fluid .offset12,
#header.wvcsd .row-fluid .offset12 {
  margin-left: 104.25531914893617%;
  *margin-left: 104.14893617021275%;
}
#nav.wvcsd .row-fluid .offset12:first-child,
#header.wvcsd .row-fluid .offset12:first-child {
  margin-left: 102.12765957446808%;
  *margin-left: 102.02127659574467%;
}
#nav.wvcsd .row-fluid .offset11,
#header.wvcsd .row-fluid .offset11 {
  margin-left: 95.74468085106382%;
  *margin-left: 95.6382978723404%;
}
#nav.wvcsd .row-fluid .offset11:first-child,
#header.wvcsd .row-fluid .offset11:first-child {
  margin-left: 93.61702127659574%;
  *margin-left: 93.51063829787232%;
}
#nav.wvcsd .row-fluid .offset10,
#header.wvcsd .row-fluid .offset10 {
  margin-left: 87.23404255319149%;
  *margin-left: 87.12765957446807%;
}
#nav.wvcsd .row-fluid .offset10:first-child,
#header.wvcsd .row-fluid .offset10:first-child {
  margin-left: 85.1063829787234%;
  *margin-left: 84.99999999999999%;
}
#nav.wvcsd .row-fluid .offset9,
#header.wvcsd .row-fluid .offset9 {
  margin-left: 78.72340425531914%;
  *margin-left: 78.61702127659572%;
}
#nav.wvcsd .row-fluid .offset9:first-child,
#header.wvcsd .row-fluid .offset9:first-child {
  margin-left: 76.59574468085106%;
  *margin-left: 76.48936170212764%;
}
#nav.wvcsd .row-fluid .offset8,
#header.wvcsd .row-fluid .offset8 {
  margin-left: 70.2127659574468%;
  *margin-left: 70.10638297872339%;
}
#nav.wvcsd .row-fluid .offset8:first-child,
#header.wvcsd .row-fluid .offset8:first-child {
  margin-left: 68.08510638297872%;
  *margin-left: 67.9787234042553%;
}
#nav.wvcsd .row-fluid .offset7,
#header.wvcsd .row-fluid .offset7 {
  margin-left: 61.70212765957446%;
  *margin-left: 61.59574468085106%;
}
#nav.wvcsd .row-fluid .offset7:first-child,
#header.wvcsd .row-fluid .offset7:first-child {
  margin-left: 59.574468085106375%;
  *margin-left: 59.46808510638297%;
}
#nav.wvcsd .row-fluid .offset6,
#header.wvcsd .row-fluid .offset6 {
  margin-left: 53.191489361702125%;
  *margin-left: 53.085106382978715%;
}
#nav.wvcsd .row-fluid .offset6:first-child,
#header.wvcsd .row-fluid .offset6:first-child {
  margin-left: 51.063829787234035%;
  *margin-left: 50.95744680851063%;
}
#nav.wvcsd .row-fluid .offset5,
#header.wvcsd .row-fluid .offset5 {
  margin-left: 44.68085106382979%;
  *margin-left: 44.57446808510638%;
}
#nav.wvcsd .row-fluid .offset5:first-child,
#header.wvcsd .row-fluid .offset5:first-child {
  margin-left: 42.5531914893617%;
  *margin-left: 42.4468085106383%;
}
#nav.wvcsd .row-fluid .offset4,
#header.wvcsd .row-fluid .offset4 {
  margin-left: 36.170212765957444%;
  *margin-left: 36.06382978723405%;
}
#nav.wvcsd .row-fluid .offset4:first-child,
#header.wvcsd .row-fluid .offset4:first-child {
  margin-left: 34.04255319148936%;
  *margin-left: 33.93617021276596%;
}
#nav.wvcsd .row-fluid .offset3,
#header.wvcsd .row-fluid .offset3 {
  margin-left: 27.659574468085104%;
  *margin-left: 27.5531914893617%;
}
#nav.wvcsd .row-fluid .offset3:first-child,
#header.wvcsd .row-fluid .offset3:first-child {
  margin-left: 25.53191489361702%;
  *margin-left: 25.425531914893618%;
}
#nav.wvcsd .row-fluid .offset2,
#header.wvcsd .row-fluid .offset2 {
  margin-left: 19.148936170212764%;
  *margin-left: 19.04255319148936%;
}
#nav.wvcsd .row-fluid .offset2:first-child,
#header.wvcsd .row-fluid .offset2:first-child {
  margin-left: 17.02127659574468%;
  *margin-left: 16.914893617021278%;
}
#nav.wvcsd .row-fluid .offset1,
#header.wvcsd .row-fluid .offset1 {
  margin-left: 10.638297872340425%;
  *margin-left: 10.53191489361702%;
}
#nav.wvcsd .row-fluid .offset1:first-child,
#header.wvcsd .row-fluid .offset1:first-child {
  margin-left: 8.51063829787234%;
  *margin-left: 8.404255319148938%;
}
#nav.wvcsd [class*="span"].hide,
#header.wvcsd [class*="span"].hide,
#nav.wvcsd .row-fluid [class*="span"].hide,
#header.wvcsd .row-fluid [class*="span"].hide {
  display: none;
}
#nav.wvcsd [class*="span"].pull-right,
#header.wvcsd [class*="span"].pull-right,
#nav.wvcsd .row-fluid [class*="span"].pull-right,
#header.wvcsd .row-fluid [class*="span"].pull-right {
  float: right;
}
#nav.wvcsd .hero-unit,
#header.wvcsd .hero-unit {
  padding: 60px;
  margin-bottom: 30px;
  font-size: 18px;
  font-weight: 200;
  line-height: 30px;
  color: inherit;
  background-color: #eeeeee;
  -webkit-border-radius: 6px;
  -moz-border-radius: 6px;
  border-radius: 6px;
}
#nav.wvcsd .hero-unit h1,
#header.wvcsd .hero-unit h1 {
  margin-bottom: 0;
  font-size: 60px;
  line-height: 1;
  color: inherit;
  letter-spacing: -1px;
}
#nav.wvcsd .hero-unit li,
#header.wvcsd .hero-unit li {
  line-height: 30px;
}
#nav.wvcsd .label,
#header.wvcsd .label,
#nav.wvcsd .badge,
#header.wvcsd .badge {
  display: inline-block;
  padding: 2px 4px;
  font-size: 11.844px;
  font-weight: bold;
  line-height: 14px;
  color: #ffffff;
  vertical-align: baseline;
  white-space: nowrap;
  text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25);
  background-color: #999999;
}
#nav.wvcsd .label,
#header.wvcsd .label {
  -webkit-border-radius: 3px;
  -moz-border-radius: 3px;
  border-radius: 3px;
}
#nav.wvcsd .badge,
#header.wvcsd .badge {
  padding-left: 9px;
  padding-right: 9px;
  -webkit-border-radius: 9px;
  -moz-border-radius: 9px;
  border-radius: 9px;
}
#nav.wvcsd .label:empty,
#header.wvcsd .label:empty,
#nav.wvcsd .badge:empty,
#header.wvcsd .badge:empty {
  display: none;
}
#nav.wvcsd a.label:hover,
#header.wvcsd a.label:hover,
#nav.wvcsd a.label:focus,
#header.wvcsd a.label:focus,
#nav.wvcsd a.badge:hover,
#header.wvcsd a.badge:hover,
#nav.wvcsd a.badge:focus,
#header.wvcsd a.badge:focus {
  color: #ffffff;
  text-decoration: none;
  cursor: pointer;
}
#nav.wvcsd .label-important,
#header.wvcsd .label-important,
#nav.wvcsd .badge-important,
#header.wvcsd .badge-important {
  background-color: #b94a48;
}
#nav.wvcsd .label-important[href],
#header.wvcsd .label-important[href],
#nav.wvcsd .badge-important[href],
#header.wvcsd .badge-important[href] {
  background-color: #953b39;
}
#nav.wvcsd .label-warning,
#header.wvcsd .label-warning,
#nav.wvcsd .badge-warning,
#header.wvcsd .badge-warning {
  background-color: #f89406;
}
#nav.wvcsd .label-warning[href],
#header.wvcsd .label-warning[href],
#nav.wvcsd .badge-warning[href],
#header.wvcsd .badge-warning[href] {
  background-color: #c67605;
}
#nav.wvcsd .label-success,
#header.wvcsd .label-success,
#nav.wvcsd .badge-success,
#header.wvcsd .badge-success {
  background-color: #468847;
}
#nav.wvcsd .label-success[href],
#header.wvcsd .label-success[href],
#nav.wvcsd .badge-success[href],
#header.wvcsd .badge-success[href] {
  background-color: #356635;
}
#nav.wvcsd .label-info,
#header.wvcsd .label-info,
#nav.wvcsd .badge-info,
#header.wvcsd .badge-info {
  background-color: #3a87ad;
}
#nav.wvcsd .label-info[href],
#header.wvcsd .label-info[href],
#nav.wvcsd .badge-info[href],
#header.wvcsd .badge-info[href] {
  background-color: #2d6987;
}
#nav.wvcsd .label-inverse,
#header.wvcsd .label-inverse,
#nav.wvcsd .badge-inverse,
#header.wvcsd .badge-inverse {
  background-color: #333333;
}
#nav.wvcsd .label-inverse[href],
#header.wvcsd .label-inverse[href],
#nav.wvcsd .badge-inverse[href],
#header.wvcsd .badge-inverse[href] {
  background-color: #1a1a1a;
}
#nav.wvcsd .btn .label,
#header.wvcsd .btn .label,
#nav.wvcsd .btn .badge,
#header.wvcsd .btn .badge {
  position: relative;
  top: -1px;
}
#nav.wvcsd .btn-mini .label,
#header.wvcsd .btn-mini .label,
#nav.wvcsd .btn-mini .badge,
#header.wvcsd .btn-mini .badge {
  top: 0;
}
#nav.wvcsd .container,
#header.wvcsd .container {
  margin-right: auto;
  margin-left: auto;
  *zoom: 1;
}
#nav.wvcsd .container:before,
#header.wvcsd .container:before,
#nav.wvcsd .container:after,
#header.wvcsd .container:after {
  display: table;
  content: "";
  line-height: 0;
}
#nav.wvcsd .container:after,
#header.wvcsd .container:after {
  clear: both;
}
#nav.wvcsd .container-fluid,
#header.wvcsd .container-fluid {
  padding-right: 20px;
  padding-left: 20px;
  *zoom: 1;
}
#nav.wvcsd .container-fluid:before,
#header.wvcsd .container-fluid:before,
#nav.wvcsd .container-fluid:after,
#header.wvcsd .container-fluid:after {
  display: table;
  content: "";
  line-height: 0;
}
#nav.wvcsd .container-fluid:after,
#header.wvcsd .container-fluid:after {
  clear: both;
}
#nav.wvcsd .media,
#header.wvcsd .media,
#nav.wvcsd .media-body,
#header.wvcsd .media-body {
  overflow: hidden;
  *overflow: visible;
  zoom: 1;
}
#nav.wvcsd .media,
#header.wvcsd .media,
#nav.wvcsd .media .media,
#header.wvcsd .media .media {
  margin-top: 15px;
}
#nav.wvcsd .media:first-child,
#header.wvcsd .media:first-child {
  margin-top: 0;
}
#nav.wvcsd .media-object,
#header.wvcsd .media-object {
  display: block;
}
#nav.wvcsd .media-heading,
#header.wvcsd .media-heading {
  margin: 0 0 5px;
}
#nav.wvcsd .media > .pull-left,
#header.wvcsd .media > .pull-left {
  margin-right: 10px;
}
#nav.wvcsd .media > .pull-right,
#header.wvcsd .media > .pull-right {
  margin-left: 10px;
}
#nav.wvcsd .media-list,
#header.wvcsd .media-list {
  margin-left: 0;
  list-style: none;
}
#nav.wvcsd .modal-backdrop,
#header.wvcsd .modal-backdrop {
  position: fixed;
  top: 0;
  right: 0;
  bottom: 0;
  left: 0;
  z-index: 1040;
  background-color: #000000;
}
#nav.wvcsd .modal-backdrop.fade,
#header.wvcsd .modal-backdrop.fade {
  opacity: 0;
}
#nav.wvcsd .modal-backdrop,
#header.wvcsd .modal-backdrop,
#nav.wvcsd .modal-backdrop.fade.in,
#header.wvcsd .modal-backdrop.fade.in {
  opacity: 0;
  filter: alpha(opacity=0);
}
#nav.wvcsd .modal,
#header.wvcsd .modal {
  position: fixed;
  top: 10%;
  left: 50%;
  z-index: 1050;
  width: 560px;
  margin-left: -280px;
  background-color: #ffffff;
  border: 1px solid #999;
  border: 1px solid rgba(0, 0, 0, 0.3);
  *border: 1px solid #999;
  /* IE6-7 */
  -webkit-border-radius: 6px;
  -moz-border-radius: 6px;
  border-radius: 6px;
  -webkit-box-shadow: 0 3px 7px rgba(0, 0, 0, 0.3);
  -moz-box-shadow: 0 3px 7px rgba(0, 0, 0, 0.3);
  box-shadow: 0 3px 7px rgba(0, 0, 0, 0.3);
  -webkit-background-clip: padding-box;
  -moz-background-clip: padding-box;
  background-clip: padding-box;
  outline: none;
}
#nav.wvcsd .modal.fade,
#header.wvcsd .modal.fade {
  -webkit-transition: opacity .3s linear, top .3s ease-out;
  -moz-transition: opacity .3s linear, top .3s ease-out;
  -o-transition: opacity .3s linear, top .3s ease-out;
  transition: opacity .3s linear, top .3s ease-out;
  top: -25%;
}
#nav.wvcsd .modal.fade.in,
#header.wvcsd .modal.fade.in {
  top: 10%;
}
#nav.wvcsd .modal-header,
#header.wvcsd .modal-header {
  padding: 9px 15px;
  border-bottom: 1px solid #eee;
}
#nav.wvcsd .modal-header .close,
#header.wvcsd .modal-header .close {
  margin-top: 2px;
}
#nav.wvcsd .modal-header h3,
#header.wvcsd .modal-header h3 {
  margin: 0;
  line-height: 30px;
}
#nav.wvcsd .modal-body,
#header.wvcsd .modal-body {
  position: relative;
  overflow-y: auto;
  max-height: 400px;
  padding: 15px;
}
#nav.wvcsd .modal-form,
#header.wvcsd .modal-form {
  margin-bottom: 0;
}
#nav.wvcsd .modal-footer,
#header.wvcsd .modal-footer {
  padding: 14px 15px 15px;
  margin-bottom: 0;
  text-align: right;
  background-color: #f5f5f5;
  border-top: 1px solid #ddd;
  -webkit-border-radius: 0 0 6px 6px;
  -moz-border-radius: 0 0 6px 6px;
  border-radius: 0 0 6px 6px;
  -webkit-box-shadow: inset 0 1px 0 #ffffff;
  -moz-box-shadow: inset 0 1px 0 #ffffff;
  box-shadow: inset 0 1px 0 #ffffff;
  *zoom: 1;
}
#nav.wvcsd .modal-footer:before,
#header.wvcsd .modal-footer:before,
#nav.wvcsd .modal-footer:after,
#header.wvcsd .modal-footer:after {
  display: table;
  content: "";
  line-height: 0;
}
#nav.wvcsd .modal-footer:after,
#header.wvcsd .modal-footer:after {
  clear: both;
}
#nav.wvcsd .modal-footer .btn + .btn,
#header.wvcsd .modal-footer .btn + .btn {
  margin-left: 5px;
  margin-bottom: 0;
}
#nav.wvcsd .modal-footer .btn-group .btn + .btn,
#header.wvcsd .modal-footer .btn-group .btn + .btn {
  margin-left: -1px;
}
#nav.wvcsd .modal-footer .btn-block + .btn-block,
#header.wvcsd .modal-footer .btn-block + .btn-block {
  margin-left: 0;
}
#nav.wvcsd .navbar,
#header.wvcsd .navbar {
  overflow: visible;
  margin-bottom: 20px;
  *position: relative;
  *z-index: 2;
}
#nav.wvcsd .navbar-inner,
#header.wvcsd .navbar-inner {
  min-height: 40px;
  padding-left: 20px;
  padding-right: 20px;
  background-color: #fafafa;
  background-image: -moz-linear-gradient(top, #ffffff, #f2f2f2);
  background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#ffffff), to(#f2f2f2));
  background-image: -webkit-linear-gradient(top, #ffffff, #f2f2f2);
  background-image: -o-linear-gradient(top, #ffffff, #f2f2f2);
  background-image: linear-gradient(to bottom, #ffffff, #f2f2f2);
  background-repeat: repeat-x;
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffffffff', endColorstr='#fff2f2f2', GradientType=0);
  border: 1px solid #d4d4d4;
  -webkit-border-radius: 4px;
  -moz-border-radius: 4px;
  border-radius: 4px;
  -webkit-box-shadow: 0 1px 4px rgba(0, 0, 0, 0.065);
  -moz-box-shadow: 0 1px 4px rgba(0, 0, 0, 0.065);
  box-shadow: 0 1px 4px rgba(0, 0, 0, 0.065);
  *zoom: 1;
}
#nav.wvcsd .navbar-inner:before,
#header.wvcsd .navbar-inner:before,
#nav.wvcsd .navbar-inner:after,
#header.wvcsd .navbar-inner:after {
  display: table;
  content: "";
  line-height: 0;
}
#nav.wvcsd .navbar-inner:after,
#header.wvcsd .navbar-inner:after {
  clear: both;
}
#nav.wvcsd .navbar .container,
#header.wvcsd .navbar .container {
  width: auto;
}
#nav.wvcsd .nav-collapse.collapse,
#header.wvcsd .nav-collapse.collapse {
  height: auto;
  overflow: visible;
}
#nav.wvcsd .navbar .brand,
#header.wvcsd .navbar .brand {
  float: left;
  display: block;
  padding: 10px 20px 10px;
  margin-left: -20px;
  font-size: 20px;
  font-weight: 200;
  color: #777777;
  text-shadow: 0 1px 0 #ffffff;
}
#nav.wvcsd .navbar .brand:hover,
#header.wvcsd .navbar .brand:hover,
#nav.wvcsd .navbar .brand:focus,
#header.wvcsd .navbar .brand:focus {
  text-decoration: none;
}
#nav.wvcsd .navbar-text,
#header.wvcsd .navbar-text {
  margin-bottom: 0;
  line-height: 40px;
  color: #777777;
}
#nav.wvcsd .navbar-link,
#header.wvcsd .navbar-link {
  color: #777777;
}
#nav.wvcsd .navbar-link:hover,
#header.wvcsd .navbar-link:hover,
#nav.wvcsd .navbar-link:focus,
#header.wvcsd .navbar-link:focus {
  color: #333333;
}
#nav.wvcsd .navbar .divider-vertical,
#header.wvcsd .navbar .divider-vertical {
  height: 40px;
  margin: 0 9px;
  border-left: 1px solid #f2f2f2;
  border-right: 1px solid #ffffff;
}
#nav.wvcsd .navbar .btn,
#header.wvcsd .navbar .btn,
#nav.wvcsd .navbar .btn-group,
#header.wvcsd .navbar .btn-group {
  margin-top: 5px;
}
#nav.wvcsd .navbar .btn-group .btn,
#header.wvcsd .navbar .btn-group .btn,
#nav.wvcsd .navbar .input-prepend .btn,
#header.wvcsd .navbar .input-prepend .btn,
#nav.wvcsd .navbar .input-append .btn,
#header.wvcsd .navbar .input-append .btn,
#nav.wvcsd .navbar .input-prepend .btn-group,
#header.wvcsd .navbar .input-prepend .btn-group,
#nav.wvcsd .navbar .input-append .btn-group,
#header.wvcsd .navbar .input-append .btn-group {
  margin-top: 0;
}
#nav.wvcsd .navbar-form,
#header.wvcsd .navbar-form {
  margin-bottom: 0;
  *zoom: 1;
}
#nav.wvcsd .navbar-form:before,
#header.wvcsd .navbar-form:before,
#nav.wvcsd .navbar-form:after,
#header.wvcsd .navbar-form:after {
  display: table;
  content: "";
  line-height: 0;
}
#nav.wvcsd .navbar-form:after,
#header.wvcsd .navbar-form:after {
  clear: both;
}
#nav.wvcsd .navbar-form input,
#header.wvcsd .navbar-form input,
#nav.wvcsd .navbar-form select,
#header.wvcsd .navbar-form select,
#nav.wvcsd .navbar-form .radio,
#header.wvcsd .navbar-form .radio,
#nav.wvcsd .navbar-form .checkbox,
#header.wvcsd .navbar-form .checkbox {
  margin-top: 5px;
}
#nav.wvcsd .navbar-form input,
#header.wvcsd .navbar-form input,
#nav.wvcsd .navbar-form select,
#header.wvcsd .navbar-form select,
#nav.wvcsd .navbar-form .btn,
#header.wvcsd .navbar-form .btn {
  display: inline-block;
  margin-bottom: 0;
}
#nav.wvcsd .navbar-form input[type="image"],
#header.wvcsd .navbar-form input[type="image"],
#nav.wvcsd .navbar-form input[type="checkbox"],
#header.wvcsd .navbar-form input[type="checkbox"],
#nav.wvcsd .navbar-form input[type="radio"],
#header.wvcsd .navbar-form input[type="radio"] {
  margin-top: 3px;
}
#nav.wvcsd .navbar-form .input-append,
#header.wvcsd .navbar-form .input-append,
#nav.wvcsd .navbar-form .input-prepend,
#header.wvcsd .navbar-form .input-prepend {
  margin-top: 5px;
  white-space: nowrap;
}
#nav.wvcsd .navbar-form .input-append input,
#header.wvcsd .navbar-form .input-append input,
#nav.wvcsd .navbar-form .input-prepend input,
#header.wvcsd .navbar-form .input-prepend input {
  margin-top: 0;
}
#nav.wvcsd .navbar-search,
#header.wvcsd .navbar-search {
  position: relative;
  float: left;
  margin-top: 5px;
  margin-bottom: 0;
}
#nav.wvcsd .navbar-search .search-query,
#header.wvcsd .navbar-search .search-query {
  margin-bottom: 0;
  padding: 4px 14px;
  font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
  font-size: 13px;
  font-weight: normal;
  line-height: 1;
  -webkit-border-radius: 15px;
  -moz-border-radius: 15px;
  border-radius: 15px;
}
#nav.wvcsd .navbar-static-top,
#header.wvcsd .navbar-static-top {
  position: static;
  margin-bottom: 0;
}
#nav.wvcsd .navbar-static-top .navbar-inner,
#header.wvcsd .navbar-static-top .navbar-inner {
  -webkit-border-radius: 0;
  -moz-border-radius: 0;
  border-radius: 0;
}
#nav.wvcsd .navbar-fixed-top,
#header.wvcsd .navbar-fixed-top,
#nav.wvcsd .navbar-fixed-bottom,
#header.wvcsd .navbar-fixed-bottom {
  position: fixed;
  right: 0;
  left: 0;
  z-index: 1030;
  margin-bottom: 0;
}
#nav.wvcsd .navbar-fixed-top .navbar-inner,
#header.wvcsd .navbar-fixed-top .navbar-inner,
#nav.wvcsd .navbar-static-top .navbar-inner,
#header.wvcsd .navbar-static-top .navbar-inner {
  border-width: 0 0 1px;
}
#nav.wvcsd .navbar-fixed-bottom .navbar-inner,
#header.wvcsd .navbar-fixed-bottom .navbar-inner {
  border-width: 1px 0 0;
}
#nav.wvcsd .navbar-fixed-top .navbar-inner,
#header.wvcsd .navbar-fixed-top .navbar-inner,
#nav.wvcsd .navbar-fixed-bottom .navbar-inner,
#header.wvcsd .navbar-fixed-bottom .navbar-inner {
  padding-left: 0;
  padding-right: 0;
  -webkit-border-radius: 0;
  -moz-border-radius: 0;
  border-radius: 0;
}
#nav.wvcsd .navbar-static-top .container,
#header.wvcsd .navbar-static-top .container,
#nav.wvcsd .navbar-fixed-top .container,
#header.wvcsd .navbar-fixed-top .container,
#nav.wvcsd .navbar-fixed-bottom .container,
#header.wvcsd .navbar-fixed-bottom .container {
  width: 940px;
}
#nav.wvcsd .navbar-fixed-top,
#header.wvcsd .navbar-fixed-top {
  top: 0;
}
#nav.wvcsd .navbar-fixed-top .navbar-inner,
#header.wvcsd .navbar-fixed-top .navbar-inner,
#nav.wvcsd .navbar-static-top .navbar-inner,
#header.wvcsd .navbar-static-top .navbar-inner {
  -webkit-box-shadow: 0 1px 10px rgba(0,0,0,.1);
  -moz-box-shadow: 0 1px 10px rgba(0,0,0,.1);
  box-shadow: 0 1px 10px rgba(0,0,0,.1);
}
#nav.wvcsd .navbar-fixed-bottom,
#header.wvcsd .navbar-fixed-bottom {
  bottom: 0;
}
#nav.wvcsd .navbar-fixed-bottom .navbar-inner,
#header.wvcsd .navbar-fixed-bottom .navbar-inner {
  -webkit-box-shadow: 0 -1px 10px rgba(0,0,0,.1);
  -moz-box-shadow: 0 -1px 10px rgba(0,0,0,.1);
  box-shadow: 0 -1px 10px rgba(0,0,0,.1);
}
#nav.wvcsd .navbar .nav,
#header.wvcsd .navbar .nav {
  position: relative;
  left: 0;
  display: block;
  float: left;
  margin: 0 10px 0 0;
}
#nav.wvcsd .navbar .nav.pull-right,
#header.wvcsd .navbar .nav.pull-right {
  float: right;
  margin-right: 0;
}
#nav.wvcsd .navbar .nav > li,
#header.wvcsd .navbar .nav > li {
  float: left;
}
#nav.wvcsd .navbar .nav > li > a,
#header.wvcsd .navbar .nav > li > a {
  float: none;
  padding: 10px 15px 10px;
  color: #777777;
  text-decoration: none;
  text-shadow: 0 1px 0 #ffffff;
}
#nav.wvcsd .navbar .nav .dropdown-toggle .caret,
#header.wvcsd .navbar .nav .dropdown-toggle .caret {
  margin-top: 8px;
}
#nav.wvcsd .navbar .nav > li > a:focus,
#header.wvcsd .navbar .nav > li > a:focus,
#nav.wvcsd .navbar .nav > li > a:hover,
#header.wvcsd .navbar .nav > li > a:hover {
  background-color: transparent;
  color: #333333;
  text-decoration: none;
}
#nav.wvcsd .navbar .nav > .active > a,
#header.wvcsd .navbar .nav > .active > a,
#nav.wvcsd .navbar .nav > .active > a:hover,
#header.wvcsd .navbar .nav > .active > a:hover,
#nav.wvcsd .navbar .nav > .active > a:focus,
#header.wvcsd .navbar .nav > .active > a:focus {
  color: #555555;
  text-decoration: none;
  background-color: #e5e5e5;
  -webkit-box-shadow: inset 0 3px 8px rgba(0, 0, 0, 0.125);
  -moz-box-shadow: inset 0 3px 8px rgba(0, 0, 0, 0.125);
  box-shadow: inset 0 3px 8px rgba(0, 0, 0, 0.125);
}
#nav.wvcsd .navbar .btn-navbar,
#header.wvcsd .navbar .btn-navbar {
  display: none;
  float: right;
  padding: 7px 10px;
  margin-left: 5px;
  margin-right: 5px;
  color: #ffffff;
  text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25);
  background-color: #ededed;
  background-image: -moz-linear-gradient(top, #f2f2f2, #e5e5e5);
  background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#f2f2f2), to(#e5e5e5));
  background-image: -webkit-linear-gradient(top, #f2f2f2, #e5e5e5);
  background-image: -o-linear-gradient(top, #f2f2f2, #e5e5e5);
  background-image: linear-gradient(to bottom, #f2f2f2, #e5e5e5);
  background-repeat: repeat-x;
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#fff2f2f2', endColorstr='#ffe5e5e5', GradientType=0);
  border-color: #e5e5e5 #e5e5e5 #bfbfbf;
  border-color: rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.25);
  *background-color: #e5e5e5;
  /* Darken IE7 buttons by default so they stand out more given they won't have borders */
  filter: progid:DXImageTransform.Microsoft.gradient(enabled = false);
  -webkit-box-shadow: inset 0 1px 0 rgba(255,255,255,.1), 0 1px 0 rgba(255,255,255,.075);
  -moz-box-shadow: inset 0 1px 0 rgba(255,255,255,.1), 0 1px 0 rgba(255,255,255,.075);
  box-shadow: inset 0 1px 0 rgba(255,255,255,.1), 0 1px 0 rgba(255,255,255,.075);
}
#nav.wvcsd .navbar .btn-navbar:hover,
#header.wvcsd .navbar .btn-navbar:hover,
#nav.wvcsd .navbar .btn-navbar:focus,
#header.wvcsd .navbar .btn-navbar:focus,
#nav.wvcsd .navbar .btn-navbar:active,
#header.wvcsd .navbar .btn-navbar:active,
#nav.wvcsd .navbar .btn-navbar.active,
#header.wvcsd .navbar .btn-navbar.active,
#nav.wvcsd .navbar .btn-navbar.disabled,
#header.wvcsd .navbar .btn-navbar.disabled,
#nav.wvcsd .navbar .btn-navbar[disabled],
#header.wvcsd .navbar .btn-navbar[disabled] {
  color: #ffffff;
  background-color: #e5e5e5;
  *background-color: #d9d9d9;
}
#nav.wvcsd .navbar .btn-navbar:active,
#header.wvcsd .navbar .btn-navbar:active,
#nav.wvcsd .navbar .btn-navbar.active,
#header.wvcsd .navbar .btn-navbar.active {
  background-color: #cccccc \9;
}
#nav.wvcsd .navbar .btn-navbar .icon-bar,
#header.wvcsd .navbar .btn-navbar .icon-bar {
  display: block;
  width: 18px;
  height: 2px;
  background-color: #f5f5f5;
  -webkit-border-radius: 1px;
  -moz-border-radius: 1px;
  border-radius: 1px;
  -webkit-box-shadow: 0 1px 0 rgba(0, 0, 0, 0.25);
  -moz-box-shadow: 0 1px 0 rgba(0, 0, 0, 0.25);
  box-shadow: 0 1px 0 rgba(0, 0, 0, 0.25);
}
#nav.wvcsd .btn-navbar .icon-bar + .icon-bar,
#header.wvcsd .btn-navbar .icon-bar + .icon-bar {
  margin-top: 3px;
}
#nav.wvcsd .navbar .nav > li > .dropdown-menu:before,
#header.wvcsd .navbar .nav > li > .dropdown-menu:before {
  content: '';
  display: inline-block;
  border-left: 7px solid transparent;
  border-right: 7px solid transparent;
  border-bottom: 7px solid #ccc;
  border-bottom-color: rgba(0, 0, 0, 0.2);
  position: absolute;
  top: -7px;
  left: 9px;
}
#nav.wvcsd .navbar .nav > li > .dropdown-menu:after,
#header.wvcsd .navbar .nav > li > .dropdown-menu:after {
  content: '';
  display: inline-block;
  border-left: 6px solid transparent;
  border-right: 6px solid transparent;
  border-bottom: 6px solid #ffffff;
  position: absolute;
  top: -6px;
  left: 10px;
}
#nav.wvcsd .navbar-fixed-bottom .nav > li > .dropdown-menu:before,
#header.wvcsd .navbar-fixed-bottom .nav > li > .dropdown-menu:before {
  border-top: 7px solid #ccc;
  border-top-color: rgba(0, 0, 0, 0.2);
  border-bottom: 0;
  bottom: -7px;
  top: auto;
}
#nav.wvcsd .navbar-fixed-bottom .nav > li > .dropdown-menu:after,
#header.wvcsd .navbar-fixed-bottom .nav > li > .dropdown-menu:after {
  border-top: 6px solid #ffffff;
  border-bottom: 0;
  bottom: -6px;
  top: auto;
}
#nav.wvcsd .navbar .nav li.dropdown > a:hover .caret,
#header.wvcsd .navbar .nav li.dropdown > a:hover .caret,
#nav.wvcsd .navbar .nav li.dropdown > a:focus .caret,
#header.wvcsd .navbar .nav li.dropdown > a:focus .caret {
  border-top-color: #333333;
  border-bottom-color: #333333;
}
#nav.wvcsd .navbar .nav li.dropdown.open > .dropdown-toggle,
#header.wvcsd .navbar .nav li.dropdown.open > .dropdown-toggle,
#nav.wvcsd .navbar .nav li.dropdown.active > .dropdown-toggle,
#header.wvcsd .navbar .nav li.dropdown.active > .dropdown-toggle,
#nav.wvcsd .navbar .nav li.dropdown.open.active > .dropdown-toggle,
#header.wvcsd .navbar .nav li.dropdown.open.active > .dropdown-toggle {
  background-color: #e5e5e5;
  color: #555555;
}
#nav.wvcsd .navbar .nav li.dropdown > .dropdown-toggle .caret,
#header.wvcsd .navbar .nav li.dropdown > .dropdown-toggle .caret {
  border-top-color: #777777;
  border-bottom-color: #777777;
}
#nav.wvcsd .navbar .nav li.dropdown.open > .dropdown-toggle .caret,
#header.wvcsd .navbar .nav li.dropdown.open > .dropdown-toggle .caret,
#nav.wvcsd .navbar .nav li.dropdown.active > .dropdown-toggle .caret,
#header.wvcsd .navbar .nav li.dropdown.active > .dropdown-toggle .caret,
#nav.wvcsd .navbar .nav li.dropdown.open.active > .dropdown-toggle .caret,
#header.wvcsd .navbar .nav li.dropdown.open.active > .dropdown-toggle .caret {
  border-top-color: #555555;
  border-bottom-color: #555555;
}
#nav.wvcsd .navbar .pull-right > li > .dropdown-menu,
#header.wvcsd .navbar .pull-right > li > .dropdown-menu,
#nav.wvcsd .navbar .nav > li > .dropdown-menu.pull-right,
#header.wvcsd .navbar .nav > li > .dropdown-menu.pull-right {
  left: auto;
  right: 0;
}
#nav.wvcsd .navbar .pull-right > li > .dropdown-menu:before,
#header.wvcsd .navbar .pull-right > li > .dropdown-menu:before,
#nav.wvcsd .navbar .nav > li > .dropdown-menu.pull-right:before,
#header.wvcsd .navbar .nav > li > .dropdown-menu.pull-right:before {
  left: auto;
  right: 12px;
}
#nav.wvcsd .navbar .pull-right > li > .dropdown-menu:after,
#header.wvcsd .navbar .pull-right > li > .dropdown-menu:after,
#nav.wvcsd .navbar .nav > li > .dropdown-menu.pull-right:after,
#header.wvcsd .navbar .nav > li > .dropdown-menu.pull-right:after {
  left: auto;
  right: 13px;
}
#nav.wvcsd .navbar .pull-right > li > .dropdown-menu .dropdown-menu,
#header.wvcsd .navbar .pull-right > li > .dropdown-menu .dropdown-menu,
#nav.wvcsd .navbar .nav > li > .dropdown-menu.pull-right .dropdown-menu,
#header.wvcsd .navbar .nav > li > .dropdown-menu.pull-right .dropdown-menu {
  left: auto;
  right: 100%;
  margin-left: 0;
  margin-right: -1px;
  -webkit-border-radius: 6px 0 6px 6px;
  -moz-border-radius: 6px 0 6px 6px;
  border-radius: 6px 0 6px 6px;
}
#nav.wvcsd .navbar-inverse .navbar-inner,
#header.wvcsd .navbar-inverse .navbar-inner {
  background-color: #1b1b1b;
  background-image: -moz-linear-gradient(top, #222222, #111111);
  background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#222222), to(#111111));
  background-image: -webkit-linear-gradient(top, #222222, #111111);
  background-image: -o-linear-gradient(top, #222222, #111111);
  background-image: linear-gradient(to bottom, #222222, #111111);
  background-repeat: repeat-x;
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ff222222', endColorstr='#ff111111', GradientType=0);
  border-color: #252525;
}
#nav.wvcsd .navbar-inverse .brand,
#header.wvcsd .navbar-inverse .brand,
#nav.wvcsd .navbar-inverse .nav > li > a,
#header.wvcsd .navbar-inverse .nav > li > a {
  color: #999999;
  text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25);
}
#nav.wvcsd .navbar-inverse .brand:hover,
#header.wvcsd .navbar-inverse .brand:hover,
#nav.wvcsd .navbar-inverse .nav > li > a:hover,
#header.wvcsd .navbar-inverse .nav > li > a:hover,
#nav.wvcsd .navbar-inverse .brand:focus,
#header.wvcsd .navbar-inverse .brand:focus,
#nav.wvcsd .navbar-inverse .nav > li > a:focus,
#header.wvcsd .navbar-inverse .nav > li > a:focus {
  color: #ffffff;
}
#nav.wvcsd .navbar-inverse .brand,
#header.wvcsd .navbar-inverse .brand {
  color: #999999;
}
#nav.wvcsd .navbar-inverse .navbar-text,
#header.wvcsd .navbar-inverse .navbar-text {
  color: #999999;
}
#nav.wvcsd .navbar-inverse .nav > li > a:focus,
#header.wvcsd .navbar-inverse .nav > li > a:focus,
#nav.wvcsd .navbar-inverse .nav > li > a:hover,
#header.wvcsd .navbar-inverse .nav > li > a:hover {
  background-color: transparent;
  color: #ffffff;
}
#nav.wvcsd .navbar-inverse .nav .active > a,
#header.wvcsd .navbar-inverse .nav .active > a,
#nav.wvcsd .navbar-inverse .nav .active > a:hover,
#header.wvcsd .navbar-inverse .nav .active > a:hover,
#nav.wvcsd .navbar-inverse .nav .active > a:focus,
#header.wvcsd .navbar-inverse .nav .active > a:focus {
  color: #ffffff;
  background-color: #111111;
}
#nav.wvcsd .navbar-inverse .navbar-link,
#header.wvcsd .navbar-inverse .navbar-link {
  color: #999999;
}
#nav.wvcsd .navbar-inverse .navbar-link:hover,
#header.wvcsd .navbar-inverse .navbar-link:hover,
#nav.wvcsd .navbar-inverse .navbar-link:focus,
#header.wvcsd .navbar-inverse .navbar-link:focus {
  color: #ffffff;
}
#nav.wvcsd .navbar-inverse .divider-vertical,
#header.wvcsd .navbar-inverse .divider-vertical {
  border-left-color: #111111;
  border-right-color: #222222;
}
#nav.wvcsd .navbar-inverse .nav li.dropdown.open > .dropdown-toggle,
#header.wvcsd .navbar-inverse .nav li.dropdown.open > .dropdown-toggle,
#nav.wvcsd .navbar-inverse .nav li.dropdown.active > .dropdown-toggle,
#header.wvcsd .navbar-inverse .nav li.dropdown.active > .dropdown-toggle,
#nav.wvcsd .navbar-inverse .nav li.dropdown.open.active > .dropdown-toggle,
#header.wvcsd .navbar-inverse .nav li.dropdown.open.active > .dropdown-toggle {
  background-color: #111111;
  color: #ffffff;
}
#nav.wvcsd .navbar-inverse .nav li.dropdown > a:hover .caret,
#header.wvcsd .navbar-inverse .nav li.dropdown > a:hover .caret,
#nav.wvcsd .navbar-inverse .nav li.dropdown > a:focus .caret,
#header.wvcsd .navbar-inverse .nav li.dropdown > a:focus .caret {
  border-top-color: #ffffff;
  border-bottom-color: #ffffff;
}
#nav.wvcsd .navbar-inverse .nav li.dropdown > .dropdown-toggle .caret,
#header.wvcsd .navbar-inverse .nav li.dropdown > .dropdown-toggle .caret {
  border-top-color: #999999;
  border-bottom-color: #999999;
}
#nav.wvcsd .navbar-inverse .nav li.dropdown.open > .dropdown-toggle .caret,
#header.wvcsd .navbar-inverse .nav li.dropdown.open > .dropdown-toggle .caret,
#nav.wvcsd .navbar-inverse .nav li.dropdown.active > .dropdown-toggle .caret,
#header.wvcsd .navbar-inverse .nav li.dropdown.active > .dropdown-toggle .caret,
#nav.wvcsd .navbar-inverse .nav li.dropdown.open.active > .dropdown-toggle .caret,
#header.wvcsd .navbar-inverse .nav li.dropdown.open.active > .dropdown-toggle .caret {
  border-top-color: #ffffff;
  border-bottom-color: #ffffff;
}
#nav.wvcsd .navbar-inverse .navbar-search .search-query,
#header.wvcsd .navbar-inverse .navbar-search .search-query {
  color: #ffffff;
  background-color: #515151;
  border-color: #111111;
  -webkit-box-shadow: inset 0 1px 2px rgba(0,0,0,.1), 0 1px 0 rgba(255,255,255,.15);
  -moz-box-shadow: inset 0 1px 2px rgba(0,0,0,.1), 0 1px 0 rgba(255,255,255,.15);
  box-shadow: inset 0 1px 2px rgba(0,0,0,.1), 0 1px 0 rgba(255,255,255,.15);
  -webkit-transition: none;
  -moz-transition: none;
  -o-transition: none;
  transition: none;
}
#nav.wvcsd .navbar-inverse .navbar-search .search-query:-moz-placeholder,
#header.wvcsd .navbar-inverse .navbar-search .search-query:-moz-placeholder {
  color: #cccccc;
}
#nav.wvcsd .navbar-inverse .navbar-search .search-query:-ms-input-placeholder,
#header.wvcsd .navbar-inverse .navbar-search .search-query:-ms-input-placeholder {
  color: #cccccc;
}
#nav.wvcsd .navbar-inverse .navbar-search .search-query::-webkit-input-placeholder,
#header.wvcsd .navbar-inverse .navbar-search .search-query::-webkit-input-placeholder {
  color: #cccccc;
}
#nav.wvcsd .navbar-inverse .navbar-search .search-query:focus,
#header.wvcsd .navbar-inverse .navbar-search .search-query:focus,
#nav.wvcsd .navbar-inverse .navbar-search .search-query.focused,
#header.wvcsd .navbar-inverse .navbar-search .search-query.focused {
  padding: 5px 15px;
  color: #333333;
  text-shadow: 0 1px 0 #ffffff;
  background-color: #ffffff;
  border: 0;
  -webkit-box-shadow: 0 0 3px rgba(0, 0, 0, 0.15);
  -moz-box-shadow: 0 0 3px rgba(0, 0, 0, 0.15);
  box-shadow: 0 0 3px rgba(0, 0, 0, 0.15);
  outline: 0;
}
#nav.wvcsd .navbar-inverse .btn-navbar,
#header.wvcsd .navbar-inverse .btn-navbar {
  color: #ffffff;
  text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25);
  background-color: #0e0e0e;
  background-image: -moz-linear-gradient(top, #151515, #040404);
  background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#151515), to(#040404));
  background-image: -webkit-linear-gradient(top, #151515, #040404);
  background-image: -o-linear-gradient(top, #151515, #040404);
  background-image: linear-gradient(to bottom, #151515, #040404);
  background-repeat: repeat-x;
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ff151515', endColorstr='#ff040404', GradientType=0);
  border-color: #040404 #040404 #000000;
  border-color: rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.25);
  *background-color: #040404;
  /* Darken IE7 buttons by default so they stand out more given they won't have borders */
  filter: progid:DXImageTransform.Microsoft.gradient(enabled = false);
}
#nav.wvcsd .navbar-inverse .btn-navbar:hover,
#header.wvcsd .navbar-inverse .btn-navbar:hover,
#nav.wvcsd .navbar-inverse .btn-navbar:focus,
#header.wvcsd .navbar-inverse .btn-navbar:focus,
#nav.wvcsd .navbar-inverse .btn-navbar:active,
#header.wvcsd .navbar-inverse .btn-navbar:active,
#nav.wvcsd .navbar-inverse .btn-navbar.active,
#header.wvcsd .navbar-inverse .btn-navbar.active,
#nav.wvcsd .navbar-inverse .btn-navbar.disabled,
#header.wvcsd .navbar-inverse .btn-navbar.disabled,
#nav.wvcsd .navbar-inverse .btn-navbar[disabled],
#header.wvcsd .navbar-inverse .btn-navbar[disabled] {
  color: #ffffff;
  background-color: #040404;
  *background-color: #000000;
}
#nav.wvcsd .navbar-inverse .btn-navbar:active,
#header.wvcsd .navbar-inverse .btn-navbar:active,
#nav.wvcsd .navbar-inverse .btn-navbar.active,
#header.wvcsd .navbar-inverse .btn-navbar.active {
  background-color: #000000 \9;
}
#nav.wvcsd .nav,
#header.wvcsd .nav {
  margin-left: 0;
  margin-bottom: 20px;
  list-style: none;
}
#nav.wvcsd .nav > li > a,
#header.wvcsd .nav > li > a {
  display: block;
}
#nav.wvcsd .nav > li > a:hover,
#header.wvcsd .nav > li > a:hover,
#nav.wvcsd .nav > li > a:focus,
#header.wvcsd .nav > li > a:focus {
  text-decoration: none;
  background-color: #eeeeee;
}
#nav.wvcsd .nav > li > a > img,
#header.wvcsd .nav > li > a > img {
  max-width: none;
}
#nav.wvcsd .nav > .pull-right,
#header.wvcsd .nav > .pull-right {
  float: right;
}
#nav.wvcsd .nav-header,
#header.wvcsd .nav-header {
  display: block;
  padding: 3px 15px;
  font-size: 11px;
  font-weight: bold;
  line-height: 20px;
  color: #999999;
  text-shadow: 0 1px 0 rgba(255, 255, 255, 0.5);
  text-transform: uppercase;
}
#nav.wvcsd .nav li + .nav-header,
#header.wvcsd .nav li + .nav-header {
  margin-top: 9px;
}
#nav.wvcsd .nav-list,
#header.wvcsd .nav-list {
  padding-left: 15px;
  padding-right: 15px;
  margin-bottom: 0;
}
#nav.wvcsd .nav-list > li > a,
#header.wvcsd .nav-list > li > a,
#nav.wvcsd .nav-list .nav-header,
#header.wvcsd .nav-list .nav-header {
  margin-left: -15px;
  margin-right: -15px;
  text-shadow: 0 1px 0 rgba(255, 255, 255, 0.5);
}
#nav.wvcsd .nav-list > li > a,
#header.wvcsd .nav-list > li > a {
  padding: 3px 15px;
}
#nav.wvcsd .nav-list > .active > a,
#header.wvcsd .nav-list > .active > a,
#nav.wvcsd .nav-list > .active > a:hover,
#header.wvcsd .nav-list > .active > a:hover,
#nav.wvcsd .nav-list > .active > a:focus,
#header.wvcsd .nav-list > .active > a:focus {
  color: #ffffff;
  text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.2);
  background-color: #0088cc;
}
#nav.wvcsd .nav-list [class^="icon-"],
#header.wvcsd .nav-list [class^="icon-"],
#nav.wvcsd .nav-list [class*=" icon-"],
#header.wvcsd .nav-list [class*=" icon-"] {
  margin-right: 2px;
}
#nav.wvcsd .nav-list .divider,
#header.wvcsd .nav-list .divider {
  *width: 100%;
  height: 1px;
  margin: 9px 1px;
  *margin: -5px 0 5px;
  overflow: hidden;
  background-color: #e5e5e5;
  border-bottom: 1px solid #ffffff;
}
#nav.wvcsd .nav-tabs,
#header.wvcsd .nav-tabs,
#nav.wvcsd .nav-pills,
#header.wvcsd .nav-pills {
  *zoom: 1;
}
#nav.wvcsd .nav-tabs:before,
#header.wvcsd .nav-tabs:before,
#nav.wvcsd .nav-pills:before,
#header.wvcsd .nav-pills:before,
#nav.wvcsd .nav-tabs:after,
#header.wvcsd .nav-tabs:after,
#nav.wvcsd .nav-pills:after,
#header.wvcsd .nav-pills:after {
  display: table;
  content: "";
  line-height: 0;
}
#nav.wvcsd .nav-tabs:after,
#header.wvcsd .nav-tabs:after,
#nav.wvcsd .nav-pills:after,
#header.wvcsd .nav-pills:after {
  clear: both;
}
#nav.wvcsd .nav-tabs > li,
#header.wvcsd .nav-tabs > li,
#nav.wvcsd .nav-pills > li,
#header.wvcsd .nav-pills > li {
  float: left;
}
#nav.wvcsd .nav-tabs > li > a,
#header.wvcsd .nav-tabs > li > a,
#nav.wvcsd .nav-pills > li > a,
#header.wvcsd .nav-pills > li > a {
  padding-right: 12px;
  padding-left: 12px;
  margin-right: 2px;
  line-height: 14px;
}
#nav.wvcsd .nav-tabs,
#header.wvcsd .nav-tabs {
  border-bottom: 1px solid #ddd;
}
#nav.wvcsd .nav-tabs > li,
#header.wvcsd .nav-tabs > li {
  margin-bottom: -1px;
}
#nav.wvcsd .nav-tabs > li > a,
#header.wvcsd .nav-tabs > li > a {
  padding-top: 8px;
  padding-bottom: 8px;
  line-height: 20px;
  border: 1px solid transparent;
  -webkit-border-radius: 4px 4px 0 0;
  -moz-border-radius: 4px 4px 0 0;
  border-radius: 4px 4px 0 0;
}
#nav.wvcsd .nav-tabs > li > a:hover,
#header.wvcsd .nav-tabs > li > a:hover,
#nav.wvcsd .nav-tabs > li > a:focus,
#header.wvcsd .nav-tabs > li > a:focus {
  border-color: #eeeeee #eeeeee #dddddd;
}
#nav.wvcsd .nav-tabs > .active > a,
#header.wvcsd .nav-tabs > .active > a,
#nav.wvcsd .nav-tabs > .active > a:hover,
#header.wvcsd .nav-tabs > .active > a:hover,
#nav.wvcsd .nav-tabs > .active > a:focus,
#header.wvcsd .nav-tabs > .active > a:focus {
  color: #555555;
  background-color: #ffffff;
  border: 1px solid #ddd;
  border-bottom-color: transparent;
  cursor: default;
}
#nav.wvcsd .nav-pills > li > a,
#header.wvcsd .nav-pills > li > a {
  padding-top: 8px;
  padding-bottom: 8px;
  margin-top: 2px;
  margin-bottom: 2px;
  -webkit-border-radius: 5px;
  -moz-border-radius: 5px;
  border-radius: 5px;
}
#nav.wvcsd .nav-pills > .active > a,
#header.wvcsd .nav-pills > .active > a,
#nav.wvcsd .nav-pills > .active > a:hover,
#header.wvcsd .nav-pills > .active > a:hover,
#nav.wvcsd .nav-pills > .active > a:focus,
#header.wvcsd .nav-pills > .active > a:focus {
  color: #ffffff;
  background-color: #0088cc;
}
#nav.wvcsd .nav-stacked > li,
#header.wvcsd .nav-stacked > li {
  float: none;
}
#nav.wvcsd .nav-stacked > li > a,
#header.wvcsd .nav-stacked > li > a {
  margin-right: 0;
}
#nav.wvcsd .nav-tabs.nav-stacked,
#header.wvcsd .nav-tabs.nav-stacked {
  border-bottom: 0;
}
#nav.wvcsd .nav-tabs.nav-stacked > li > a,
#header.wvcsd .nav-tabs.nav-stacked > li > a {
  border: 1px solid #ddd;
  -webkit-border-radius: 0;
  -moz-border-radius: 0;
  border-radius: 0;
}
#nav.wvcsd .nav-tabs.nav-stacked > li:first-child > a,
#header.wvcsd .nav-tabs.nav-stacked > li:first-child > a {
  -webkit-border-top-right-radius: 4px;
  -moz-border-radius-topright: 4px;
  border-top-right-radius: 4px;
  -webkit-border-top-left-radius: 4px;
  -moz-border-radius-topleft: 4px;
  border-top-left-radius: 4px;
}
#nav.wvcsd .nav-tabs.nav-stacked > li:last-child > a,
#header.wvcsd .nav-tabs.nav-stacked > li:last-child > a {
  -webkit-border-bottom-right-radius: 4px;
  -moz-border-radius-bottomright: 4px;
  border-bottom-right-radius: 4px;
  -webkit-border-bottom-left-radius: 4px;
  -moz-border-radius-bottomleft: 4px;
  border-bottom-left-radius: 4px;
}
#nav.wvcsd .nav-tabs.nav-stacked > li > a:hover,
#header.wvcsd .nav-tabs.nav-stacked > li > a:hover,
#nav.wvcsd .nav-tabs.nav-stacked > li > a:focus,
#header.wvcsd .nav-tabs.nav-stacked > li > a:focus {
  border-color: #ddd;
  z-index: 2;
}
#nav.wvcsd .nav-pills.nav-stacked > li > a,
#header.wvcsd .nav-pills.nav-stacked > li > a {
  margin-bottom: 3px;
}
#nav.wvcsd .nav-pills.nav-stacked > li:last-child > a,
#header.wvcsd .nav-pills.nav-stacked > li:last-child > a {
  margin-bottom: 1px;
}
#nav.wvcsd .nav-tabs .dropdown-menu,
#header.wvcsd .nav-tabs .dropdown-menu {
  -webkit-border-radius: 0 0 6px 6px;
  -moz-border-radius: 0 0 6px 6px;
  border-radius: 0 0 6px 6px;
}
#nav.wvcsd .nav-pills .dropdown-menu,
#header.wvcsd .nav-pills .dropdown-menu {
  -webkit-border-radius: 6px;
  -moz-border-radius: 6px;
  border-radius: 6px;
}
#nav.wvcsd .nav .dropdown-toggle .caret,
#header.wvcsd .nav .dropdown-toggle .caret {
  border-top-color: #0088cc;
  border-bottom-color: #0088cc;
  margin-top: 6px;
}
#nav.wvcsd .nav .dropdown-toggle:hover .caret,
#header.wvcsd .nav .dropdown-toggle:hover .caret,
#nav.wvcsd .nav .dropdown-toggle:focus .caret,
#header.wvcsd .nav .dropdown-toggle:focus .caret {
  border-top-color: #005580;
  border-bottom-color: #005580;
}
#nav.wvcsd .nav-tabs .dropdown-toggle .caret,
#header.wvcsd .nav-tabs .dropdown-toggle .caret {
  margin-top: 8px;
}
#nav.wvcsd .nav .active .dropdown-toggle .caret,
#header.wvcsd .nav .active .dropdown-toggle .caret {
  border-top-color: #fff;
  border-bottom-color: #fff;
}
#nav.wvcsd .nav-tabs .active .dropdown-toggle .caret,
#header.wvcsd .nav-tabs .active .dropdown-toggle .caret {
  border-top-color: #555555;
  border-bottom-color: #555555;
}
#nav.wvcsd .nav > .dropdown.active > a:hover,
#header.wvcsd .nav > .dropdown.active > a:hover,
#nav.wvcsd .nav > .dropdown.active > a:focus,
#header.wvcsd .nav > .dropdown.active > a:focus {
  cursor: pointer;
}
#nav.wvcsd .nav-tabs .open .dropdown-toggle,
#header.wvcsd .nav-tabs .open .dropdown-toggle,
#nav.wvcsd .nav-pills .open .dropdown-toggle,
#header.wvcsd .nav-pills .open .dropdown-toggle,
#nav.wvcsd .nav > li.dropdown.open.active > a:hover,
#header.wvcsd .nav > li.dropdown.open.active > a:hover,
#nav.wvcsd .nav > li.dropdown.open.active > a:focus,
#header.wvcsd .nav > li.dropdown.open.active > a:focus {
  color: #ffffff;
  background-color: #999999;
  border-color: #999999;
}
#nav.wvcsd .nav li.dropdown.open .caret,
#header.wvcsd .nav li.dropdown.open .caret,
#nav.wvcsd .nav li.dropdown.open.active .caret,
#header.wvcsd .nav li.dropdown.open.active .caret,
#nav.wvcsd .nav li.dropdown.open a:hover .caret,
#header.wvcsd .nav li.dropdown.open a:hover .caret,
#nav.wvcsd .nav li.dropdown.open a:focus .caret,
#header.wvcsd .nav li.dropdown.open a:focus .caret {
  border-top-color: #ffffff;
  border-bottom-color: #ffffff;
  opacity: 1;
  filter: alpha(opacity=100);
}
#nav.wvcsd .tabs-stacked .open > a:hover,
#header.wvcsd .tabs-stacked .open > a:hover,
#nav.wvcsd .tabs-stacked .open > a:focus,
#header.wvcsd .tabs-stacked .open > a:focus {
  border-color: #999999;
}
#nav.wvcsd .tabbable,
#header.wvcsd .tabbable {
  *zoom: 1;
}
#nav.wvcsd .tabbable:before,
#header.wvcsd .tabbable:before,
#nav.wvcsd .tabbable:after,
#header.wvcsd .tabbable:after {
  display: table;
  content: "";
  line-height: 0;
}
#nav.wvcsd .tabbable:after,
#header.wvcsd .tabbable:after {
  clear: both;
}
#nav.wvcsd .tab-content,
#header.wvcsd .tab-content {
  overflow: auto;
}
#nav.wvcsd .tabs-below > .nav-tabs,
#header.wvcsd .tabs-below > .nav-tabs,
#nav.wvcsd .tabs-right > .nav-tabs,
#header.wvcsd .tabs-right > .nav-tabs,
#nav.wvcsd .tabs-left > .nav-tabs,
#header.wvcsd .tabs-left > .nav-tabs {
  border-bottom: 0;
}
#nav.wvcsd .tab-content > .tab-pane,
#header.wvcsd .tab-content > .tab-pane,
#nav.wvcsd .pill-content > .pill-pane,
#header.wvcsd .pill-content > .pill-pane {
  display: none;
}
#nav.wvcsd .tab-content > .active,
#header.wvcsd .tab-content > .active,
#nav.wvcsd .pill-content > .active,
#header.wvcsd .pill-content > .active {
  display: block;
}
#nav.wvcsd .tabs-below > .nav-tabs,
#header.wvcsd .tabs-below > .nav-tabs {
  border-top: 1px solid #ddd;
}
#nav.wvcsd .tabs-below > .nav-tabs > li,
#header.wvcsd .tabs-below > .nav-tabs > li {
  margin-top: -1px;
  margin-bottom: 0;
}
#nav.wvcsd .tabs-below > .nav-tabs > li > a,
#header.wvcsd .tabs-below > .nav-tabs > li > a {
  -webkit-border-radius: 0 0 4px 4px;
  -moz-border-radius: 0 0 4px 4px;
  border-radius: 0 0 4px 4px;
}
#nav.wvcsd .tabs-below > .nav-tabs > li > a:hover,
#header.wvcsd .tabs-below > .nav-tabs > li > a:hover,
#nav.wvcsd .tabs-below > .nav-tabs > li > a:focus,
#header.wvcsd .tabs-below > .nav-tabs > li > a:focus {
  border-bottom-color: transparent;
  border-top-color: #ddd;
}
#nav.wvcsd .tabs-below > .nav-tabs > .active > a,
#header.wvcsd .tabs-below > .nav-tabs > .active > a,
#nav.wvcsd .tabs-below > .nav-tabs > .active > a:hover,
#header.wvcsd .tabs-below > .nav-tabs > .active > a:hover,
#nav.wvcsd .tabs-below > .nav-tabs > .active > a:focus,
#header.wvcsd .tabs-below > .nav-tabs > .active > a:focus {
  border-color: transparent #ddd #ddd #ddd;
}
#nav.wvcsd .tabs-left > .nav-tabs > li,
#header.wvcsd .tabs-left > .nav-tabs > li,
#nav.wvcsd .tabs-right > .nav-tabs > li,
#header.wvcsd .tabs-right > .nav-tabs > li {
  float: none;
}
#nav.wvcsd .tabs-left > .nav-tabs > li > a,
#header.wvcsd .tabs-left > .nav-tabs > li > a,
#nav.wvcsd .tabs-right > .nav-tabs > li > a,
#header.wvcsd .tabs-right > .nav-tabs > li > a {
  min-width: 74px;
  margin-right: 0;
  margin-bottom: 3px;
}
#nav.wvcsd .tabs-left > .nav-tabs,
#header.wvcsd .tabs-left > .nav-tabs {
  float: left;
  margin-right: 19px;
  border-right: 1px solid #ddd;
}
#nav.wvcsd .tabs-left > .nav-tabs > li > a,
#header.wvcsd .tabs-left > .nav-tabs > li > a {
  margin-right: -1px;
  -webkit-border-radius: 4px 0 0 4px;
  -moz-border-radius: 4px 0 0 4px;
  border-radius: 4px 0 0 4px;
}
#nav.wvcsd .tabs-left > .nav-tabs > li > a:hover,
#header.wvcsd .tabs-left > .nav-tabs > li > a:hover,
#nav.wvcsd .tabs-left > .nav-tabs > li > a:focus,
#header.wvcsd .tabs-left > .nav-tabs > li > a:focus {
  border-color: #eeeeee #dddddd #eeeeee #eeeeee;
}
#nav.wvcsd .tabs-left > .nav-tabs .active > a,
#header.wvcsd .tabs-left > .nav-tabs .active > a,
#nav.wvcsd .tabs-left > .nav-tabs .active > a:hover,
#header.wvcsd .tabs-left > .nav-tabs .active > a:hover,
#nav.wvcsd .tabs-left > .nav-tabs .active > a:focus,
#header.wvcsd .tabs-left > .nav-tabs .active > a:focus {
  border-color: #ddd transparent #ddd #ddd;
  *border-right-color: #ffffff;
}
#nav.wvcsd .tabs-right > .nav-tabs,
#header.wvcsd .tabs-right > .nav-tabs {
  float: right;
  margin-left: 19px;
  border-left: 1px solid #ddd;
}
#nav.wvcsd .tabs-right > .nav-tabs > li > a,
#header.wvcsd .tabs-right > .nav-tabs > li > a {
  margin-left: -1px;
  -webkit-border-radius: 0 4px 4px 0;
  -moz-border-radius: 0 4px 4px 0;
  border-radius: 0 4px 4px 0;
}
#nav.wvcsd .tabs-right > .nav-tabs > li > a:hover,
#header.wvcsd .tabs-right > .nav-tabs > li > a:hover,
#nav.wvcsd .tabs-right > .nav-tabs > li > a:focus,
#header.wvcsd .tabs-right > .nav-tabs > li > a:focus {
  border-color: #eeeeee #eeeeee #eeeeee #dddddd;
}
#nav.wvcsd .tabs-right > .nav-tabs .active > a,
#header.wvcsd .tabs-right > .nav-tabs .active > a,
#nav.wvcsd .tabs-right > .nav-tabs .active > a:hover,
#header.wvcsd .tabs-right > .nav-tabs .active > a:hover,
#nav.wvcsd .tabs-right > .nav-tabs .active > a:focus,
#header.wvcsd .tabs-right > .nav-tabs .active > a:focus {
  border-color: #ddd #ddd #ddd transparent;
  *border-left-color: #ffffff;
}
#nav.wvcsd .nav > .disabled > a,
#header.wvcsd .nav > .disabled > a {
  color: #999999;
}
#nav.wvcsd .nav > .disabled > a:hover,
#header.wvcsd .nav > .disabled > a:hover,
#nav.wvcsd .nav > .disabled > a:focus,
#header.wvcsd .nav > .disabled > a:focus {
  text-decoration: none;
  background-color: transparent;
  cursor: default;
}
#nav.wvcsd .pager,
#header.wvcsd .pager {
  margin: 20px 0;
  list-style: none;
  text-align: center;
  *zoom: 1;
}
#nav.wvcsd .pager:before,
#header.wvcsd .pager:before,
#nav.wvcsd .pager:after,
#header.wvcsd .pager:after {
  display: table;
  content: "";
  line-height: 0;
}
#nav.wvcsd .pager:after,
#header.wvcsd .pager:after {
  clear: both;
}
#nav.wvcsd .pager li,
#header.wvcsd .pager li {
  display: inline;
}
#nav.wvcsd .pager li > a,
#header.wvcsd .pager li > a,
#nav.wvcsd .pager li > span,
#header.wvcsd .pager li > span {
  display: inline-block;
  padding: 5px 14px;
  background-color: #fff;
  border: 1px solid #ddd;
  -webkit-border-radius: 15px;
  -moz-border-radius: 15px;
  border-radius: 15px;
}
#nav.wvcsd .pager li > a:hover,
#header.wvcsd .pager li > a:hover,
#nav.wvcsd .pager li > a:focus,
#header.wvcsd .pager li > a:focus {
  text-decoration: none;
  background-color: #f5f5f5;
}
#nav.wvcsd .pager .next > a,
#header.wvcsd .pager .next > a,
#nav.wvcsd .pager .next > span,
#header.wvcsd .pager .next > span {
  float: right;
}
#nav.wvcsd .pager .previous > a,
#header.wvcsd .pager .previous > a,
#nav.wvcsd .pager .previous > span,
#header.wvcsd .pager .previous > span {
  float: left;
}
#nav.wvcsd .pager .disabled > a,
#header.wvcsd .pager .disabled > a,
#nav.wvcsd .pager .disabled > a:hover,
#header.wvcsd .pager .disabled > a:hover,
#nav.wvcsd .pager .disabled > a:focus,
#header.wvcsd .pager .disabled > a:focus,
#nav.wvcsd .pager .disabled > span,
#header.wvcsd .pager .disabled > span {
  color: #999999;
  background-color: #fff;
  cursor: default;
}
#nav.wvcsd .pagination,
#header.wvcsd .pagination {
  margin: 20px 0;
}
#nav.wvcsd .pagination ul,
#header.wvcsd .pagination ul {
  display: inline-block;
  *display: inline;
  /* IE7 inline-block hack */
  *zoom: 1;
  margin-left: 0;
  margin-bottom: 0;
  -webkit-border-radius: 4px;
  -moz-border-radius: 4px;
  border-radius: 4px;
  -webkit-box-shadow: 0 1px 2px rgba(0, 0, 0, 0.05);
  -moz-box-shadow: 0 1px 2px rgba(0, 0, 0, 0.05);
  box-shadow: 0 1px 2px rgba(0, 0, 0, 0.05);
}
#nav.wvcsd .pagination ul > li,
#header.wvcsd .pagination ul > li {
  display: inline;
}
#nav.wvcsd .pagination ul > li > a,
#header.wvcsd .pagination ul > li > a,
#nav.wvcsd .pagination ul > li > span,
#header.wvcsd .pagination ul > li > span {
  float: left;
  padding: 4px 12px;
  line-height: 20px;
  text-decoration: none;
  background-color: #ffffff;
  border: 1px solid #dddddd;
  border-left-width: 0;
}
#nav.wvcsd .pagination ul > li > a:hover,
#header.wvcsd .pagination ul > li > a:hover,
#nav.wvcsd .pagination ul > li > a:focus,
#header.wvcsd .pagination ul > li > a:focus,
#nav.wvcsd .pagination ul > .active > a,
#header.wvcsd .pagination ul > .active > a,
#nav.wvcsd .pagination ul > .active > span,
#header.wvcsd .pagination ul > .active > span {
  background-color: #f5f5f5;
}
#nav.wvcsd .pagination ul > .active > a,
#header.wvcsd .pagination ul > .active > a,
#nav.wvcsd .pagination ul > .active > span,
#header.wvcsd .pagination ul > .active > span {
  color: #999999;
  cursor: default;
}
#nav.wvcsd .pagination ul > .disabled > span,
#header.wvcsd .pagination ul > .disabled > span,
#nav.wvcsd .pagination ul > .disabled > a,
#header.wvcsd .pagination ul > .disabled > a,
#nav.wvcsd .pagination ul > .disabled > a:hover,
#header.wvcsd .pagination ul > .disabled > a:hover,
#nav.wvcsd .pagination ul > .disabled > a:focus,
#header.wvcsd .pagination ul > .disabled > a:focus {
  color: #999999;
  background-color: transparent;
  cursor: default;
}
#nav.wvcsd .pagination ul > li:first-child > a,
#header.wvcsd .pagination ul > li:first-child > a,
#nav.wvcsd .pagination ul > li:first-child > span,
#header.wvcsd .pagination ul > li:first-child > span {
  border-left-width: 1px;
  -webkit-border-top-left-radius: 4px;
  -moz-border-radius-topleft: 4px;
  border-top-left-radius: 4px;
  -webkit-border-bottom-left-radius: 4px;
  -moz-border-radius-bottomleft: 4px;
  border-bottom-left-radius: 4px;
}
#nav.wvcsd .pagination ul > li:last-child > a,
#header.wvcsd .pagination ul > li:last-child > a,
#nav.wvcsd .pagination ul > li:last-child > span,
#header.wvcsd .pagination ul > li:last-child > span {
  -webkit-border-top-right-radius: 4px;
  -moz-border-radius-topright: 4px;
  border-top-right-radius: 4px;
  -webkit-border-bottom-right-radius: 4px;
  -moz-border-radius-bottomright: 4px;
  border-bottom-right-radius: 4px;
}
#nav.wvcsd .pagination-centered,
#header.wvcsd .pagination-centered {
  text-align: center;
}
#nav.wvcsd .pagination-right,
#header.wvcsd .pagination-right {
  text-align: right;
}
#nav.wvcsd .pagination-large ul > li > a,
#header.wvcsd .pagination-large ul > li > a,
#nav.wvcsd .pagination-large ul > li > span,
#header.wvcsd .pagination-large ul > li > span {
  padding: 11px 19px;
  font-size: 17.5px;
}
#nav.wvcsd .pagination-large ul > li:first-child > a,
#header.wvcsd .pagination-large ul > li:first-child > a,
#nav.wvcsd .pagination-large ul > li:first-child > span,
#header.wvcsd .pagination-large ul > li:first-child > span {
  -webkit-border-top-left-radius: 6px;
  -moz-border-radius-topleft: 6px;
  border-top-left-radius: 6px;
  -webkit-border-bottom-left-radius: 6px;
  -moz-border-radius-bottomleft: 6px;
  border-bottom-left-radius: 6px;
}
#nav.wvcsd .pagination-large ul > li:last-child > a,
#header.wvcsd .pagination-large ul > li:last-child > a,
#nav.wvcsd .pagination-large ul > li:last-child > span,
#header.wvcsd .pagination-large ul > li:last-child > span {
  -webkit-border-top-right-radius: 6px;
  -moz-border-radius-topright: 6px;
  border-top-right-radius: 6px;
  -webkit-border-bottom-right-radius: 6px;
  -moz-border-radius-bottomright: 6px;
  border-bottom-right-radius: 6px;
}
#nav.wvcsd .pagination-mini ul > li:first-child > a,
#header.wvcsd .pagination-mini ul > li:first-child > a,
#nav.wvcsd .pagination-small ul > li:first-child > a,
#header.wvcsd .pagination-small ul > li:first-child > a,
#nav.wvcsd .pagination-mini ul > li:first-child > span,
#header.wvcsd .pagination-mini ul > li:first-child > span,
#nav.wvcsd .pagination-small ul > li:first-child > span,
#header.wvcsd .pagination-small ul > li:first-child > span {
  -webkit-border-top-left-radius: 3px;
  -moz-border-radius-topleft: 3px;
  border-top-left-radius: 3px;
  -webkit-border-bottom-left-radius: 3px;
  -moz-border-radius-bottomleft: 3px;
  border-bottom-left-radius: 3px;
}
#nav.wvcsd .pagination-mini ul > li:last-child > a,
#header.wvcsd .pagination-mini ul > li:last-child > a,
#nav.wvcsd .pagination-small ul > li:last-child > a,
#header.wvcsd .pagination-small ul > li:last-child > a,
#nav.wvcsd .pagination-mini ul > li:last-child > span,
#header.wvcsd .pagination-mini ul > li:last-child > span,
#nav.wvcsd .pagination-small ul > li:last-child > span,
#header.wvcsd .pagination-small ul > li:last-child > span {
  -webkit-border-top-right-radius: 3px;
  -moz-border-radius-topright: 3px;
  border-top-right-radius: 3px;
  -webkit-border-bottom-right-radius: 3px;
  -moz-border-radius-bottomright: 3px;
  border-bottom-right-radius: 3px;
}
#nav.wvcsd .pagination-small ul > li > a,
#header.wvcsd .pagination-small ul > li > a,
#nav.wvcsd .pagination-small ul > li > span,
#header.wvcsd .pagination-small ul > li > span {
  padding: 2px 10px;
  font-size: 11.9px;
}
#nav.wvcsd .pagination-mini ul > li > a,
#header.wvcsd .pagination-mini ul > li > a,
#nav.wvcsd .pagination-mini ul > li > span,
#header.wvcsd .pagination-mini ul > li > span {
  padding: 0 6px;
  font-size: 10.5px;
}
#nav.wvcsd .popover,
#header.wvcsd .popover {
  position: absolute;
  top: 0;
  left: 0;
  z-index: 1010;
  display: none;
  max-width: 276px;
  padding: 1px;
  text-align: left;
  background-color: #ffffff;
  -webkit-background-clip: padding-box;
  -moz-background-clip: padding;
  background-clip: padding-box;
  border: 1px solid #ccc;
  border: 1px solid rgba(0, 0, 0, 0.2);
  -webkit-border-radius: 6px;
  -moz-border-radius: 6px;
  border-radius: 6px;
  -webkit-box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
  -moz-box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
  box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
  white-space: normal;
}
#nav.wvcsd .popover.top,
#header.wvcsd .popover.top {
  margin-top: -10px;
}
#nav.wvcsd .popover.right,
#header.wvcsd .popover.right {
  margin-left: 10px;
}
#nav.wvcsd .popover.bottom,
#header.wvcsd .popover.bottom {
  margin-top: 10px;
}
#nav.wvcsd .popover.left,
#header.wvcsd .popover.left {
  margin-left: -10px;
}
#nav.wvcsd .popover-title,
#header.wvcsd .popover-title {
  margin: 0;
  padding: 8px 14px;
  font-size: 14px;
  font-weight: normal;
  line-height: 18px;
  background-color: #f7f7f7;
  border-bottom: 1px solid #ebebeb;
  -webkit-border-radius: 5px 5px 0 0;
  -moz-border-radius: 5px 5px 0 0;
  border-radius: 5px 5px 0 0;
}
#nav.wvcsd .popover-title:empty,
#header.wvcsd .popover-title:empty {
  display: none;
}
#nav.wvcsd .popover-content,
#header.wvcsd .popover-content {
  padding: 9px 14px;
}
#nav.wvcsd .popover .arrow,
#header.wvcsd .popover .arrow,
#nav.wvcsd .popover .arrow:after,
#header.wvcsd .popover .arrow:after {
  position: absolute;
  display: block;
  width: 0;
  height: 0;
  border-color: transparent;
  border-style: solid;
}
#nav.wvcsd .popover .arrow,
#header.wvcsd .popover .arrow {
  border-width: 11px;
}
#nav.wvcsd .popover .arrow:after,
#header.wvcsd .popover .arrow:after {
  border-width: 10px;
  content: "";
}
#nav.wvcsd .popover.top .arrow,
#header.wvcsd .popover.top .arrow {
  left: 50%;
  margin-left: -11px;
  border-bottom-width: 0;
  border-top-color: #999;
  border-top-color: rgba(0, 0, 0, 0.25);
  bottom: -11px;
}
#nav.wvcsd .popover.top .arrow:after,
#header.wvcsd .popover.top .arrow:after {
  bottom: 1px;
  margin-left: -10px;
  border-bottom-width: 0;
  border-top-color: #ffffff;
}
#nav.wvcsd .popover.right .arrow,
#header.wvcsd .popover.right .arrow {
  top: 50%;
  left: -11px;
  margin-top: -11px;
  border-left-width: 0;
  border-right-color: #999;
  border-right-color: rgba(0, 0, 0, 0.25);
}
#nav.wvcsd .popover.right .arrow:after,
#header.wvcsd .popover.right .arrow:after {
  left: 1px;
  bottom: -10px;
  border-left-width: 0;
  border-right-color: #ffffff;
}
#nav.wvcsd .popover.bottom .arrow,
#header.wvcsd .popover.bottom .arrow {
  left: 50%;
  margin-left: -11px;
  border-top-width: 0;
  border-bottom-color: #999;
  border-bottom-color: rgba(0, 0, 0, 0.25);
  top: -11px;
}
#nav.wvcsd .popover.bottom .arrow:after,
#header.wvcsd .popover.bottom .arrow:after {
  top: 1px;
  margin-left: -10px;
  border-top-width: 0;
  border-bottom-color: #ffffff;
}
#nav.wvcsd .popover.left .arrow,
#header.wvcsd .popover.left .arrow {
  top: 50%;
  right: -11px;
  margin-top: -11px;
  border-right-width: 0;
  border-left-color: #999;
  border-left-color: rgba(0, 0, 0, 0.25);
}
#nav.wvcsd .popover.left .arrow:after,
#header.wvcsd .popover.left .arrow:after {
  right: 1px;
  border-right-width: 0;
  border-left-color: #ffffff;
  bottom: -10px;
}
@-webkit-keyframes progress-bar-stripes {
  from {
    background-position: 40px 0;
  }
  to {
    background-position: 0 0;
  }
}
@-moz-keyframes progress-bar-stripes {
  from {
    background-position: 40px 0;
  }
  to {
    background-position: 0 0;
  }
}
@-ms-keyframes progress-bar-stripes {
  from {
    background-position: 40px 0;
  }
  to {
    background-position: 0 0;
  }
}
@-o-keyframes progress-bar-stripes {
  from {
    background-position: 0 0;
  }
  to {
    background-position: 40px 0;
  }
}
@keyframes progress-bar-stripes {
  from {
    background-position: 40px 0;
  }
  to {
    background-position: 0 0;
  }
}
#nav.wvcsd .progress,
#header.wvcsd .progress {
  overflow: hidden;
  height: 20px;
  margin-bottom: 20px;
  background-color: #f7f7f7;
  background-image: -moz-linear-gradient(top, #f5f5f5, #f9f9f9);
  background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#f5f5f5), to(#f9f9f9));
  background-image: -webkit-linear-gradient(top, #f5f5f5, #f9f9f9);
  background-image: -o-linear-gradient(top, #f5f5f5, #f9f9f9);
  background-image: linear-gradient(to bottom, #f5f5f5, #f9f9f9);
  background-repeat: repeat-x;
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#fff5f5f5', endColorstr='#fff9f9f9', GradientType=0);
  -webkit-box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.1);
  -moz-box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.1);
  box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.1);
  -webkit-border-radius: 4px;
  -moz-border-radius: 4px;
  border-radius: 4px;
}
#nav.wvcsd .progress .bar,
#header.wvcsd .progress .bar {
  width: 0%;
  height: 100%;
  color: #ffffff;
  float: left;
  font-size: 12px;
  text-align: center;
  text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25);
  background-color: #0e90d2;
  background-image: -moz-linear-gradient(top, #149bdf, #0480be);
  background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#149bdf), to(#0480be));
  background-image: -webkit-linear-gradient(top, #149bdf, #0480be);
  background-image: -o-linear-gradient(top, #149bdf, #0480be);
  background-image: linear-gradient(to bottom, #149bdf, #0480be);
  background-repeat: repeat-x;
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ff149bdf', endColorstr='#ff0480be', GradientType=0);
  -webkit-box-shadow: inset 0 -1px 0 rgba(0, 0, 0, 0.15);
  -moz-box-shadow: inset 0 -1px 0 rgba(0, 0, 0, 0.15);
  box-shadow: inset 0 -1px 0 rgba(0, 0, 0, 0.15);
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
  -webkit-transition: width 0.6s ease;
  -moz-transition: width 0.6s ease;
  -o-transition: width 0.6s ease;
  transition: width 0.6s ease;
}
#nav.wvcsd .progress .bar + .bar,
#header.wvcsd .progress .bar + .bar {
  -webkit-box-shadow: inset 1px 0 0 rgba(0,0,0,.15), inset 0 -1px 0 rgba(0,0,0,.15);
  -moz-box-shadow: inset 1px 0 0 rgba(0,0,0,.15), inset 0 -1px 0 rgba(0,0,0,.15);
  box-shadow: inset 1px 0 0 rgba(0,0,0,.15), inset 0 -1px 0 rgba(0,0,0,.15);
}
#nav.wvcsd .progress-striped .bar,
#header.wvcsd .progress-striped .bar {
  background-color: #149bdf;
  background-image: -webkit-gradient(linear, 0 100%, 100% 0, color-stop(0.25, rgba(255, 255, 255, 0.15)), color-stop(0.25, transparent), color-stop(0.5, transparent), color-stop(0.5, rgba(255, 255, 255, 0.15)), color-stop(0.75, rgba(255, 255, 255, 0.15)), color-stop(0.75, transparent), to(transparent));
  background-image: -webkit-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-image: -moz-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-image: -o-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-image: linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  -webkit-background-size: 40px 40px;
  -moz-background-size: 40px 40px;
  -o-background-size: 40px 40px;
  background-size: 40px 40px;
}
#nav.wvcsd .progress.active .bar,
#header.wvcsd .progress.active .bar {
  -webkit-animation: progress-bar-stripes 2s linear infinite;
  -moz-animation: progress-bar-stripes 2s linear infinite;
  -ms-animation: progress-bar-stripes 2s linear infinite;
  -o-animation: progress-bar-stripes 2s linear infinite;
  animation: progress-bar-stripes 2s linear infinite;
}
#nav.wvcsd .progress-danger .bar,
#header.wvcsd .progress-danger .bar,
#nav.wvcsd .progress .bar-danger,
#header.wvcsd .progress .bar-danger {
  background-color: #dd514c;
  background-image: -moz-linear-gradient(top, #ee5f5b, #c43c35);
  background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#ee5f5b), to(#c43c35));
  background-image: -webkit-linear-gradient(top, #ee5f5b, #c43c35);
  background-image: -o-linear-gradient(top, #ee5f5b, #c43c35);
  background-image: linear-gradient(to bottom, #ee5f5b, #c43c35);
  background-repeat: repeat-x;
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffee5f5b', endColorstr='#ffc43c35', GradientType=0);
}
#nav.wvcsd .progress-danger.progress-striped .bar,
#header.wvcsd .progress-danger.progress-striped .bar,
#nav.wvcsd .progress-striped .bar-danger,
#header.wvcsd .progress-striped .bar-danger {
  background-color: #ee5f5b;
  background-image: -webkit-gradient(linear, 0 100%, 100% 0, color-stop(0.25, rgba(255, 255, 255, 0.15)), color-stop(0.25, transparent), color-stop(0.5, transparent), color-stop(0.5, rgba(255, 255, 255, 0.15)), color-stop(0.75, rgba(255, 255, 255, 0.15)), color-stop(0.75, transparent), to(transparent));
  background-image: -webkit-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-image: -moz-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-image: -o-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-image: linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
}
#nav.wvcsd .progress-success .bar,
#header.wvcsd .progress-success .bar,
#nav.wvcsd .progress .bar-success,
#header.wvcsd .progress .bar-success {
  background-color: #5eb95e;
  background-image: -moz-linear-gradient(top, #62c462, #57a957);
  background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#62c462), to(#57a957));
  background-image: -webkit-linear-gradient(top, #62c462, #57a957);
  background-image: -o-linear-gradient(top, #62c462, #57a957);
  background-image: linear-gradient(to bottom, #62c462, #57a957);
  background-repeat: repeat-x;
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ff62c462', endColorstr='#ff57a957', GradientType=0);
}
#nav.wvcsd .progress-success.progress-striped .bar,
#header.wvcsd .progress-success.progress-striped .bar,
#nav.wvcsd .progress-striped .bar-success,
#header.wvcsd .progress-striped .bar-success {
  background-color: #62c462;
  background-image: -webkit-gradient(linear, 0 100%, 100% 0, color-stop(0.25, rgba(255, 255, 255, 0.15)), color-stop(0.25, transparent), color-stop(0.5, transparent), color-stop(0.5, rgba(255, 255, 255, 0.15)), color-stop(0.75, rgba(255, 255, 255, 0.15)), color-stop(0.75, transparent), to(transparent));
  background-image: -webkit-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-image: -moz-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-image: -o-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-image: linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
}
#nav.wvcsd .progress-info .bar,
#header.wvcsd .progress-info .bar,
#nav.wvcsd .progress .bar-info,
#header.wvcsd .progress .bar-info {
  background-color: #4bb1cf;
  background-image: -moz-linear-gradient(top, #5bc0de, #339bb9);
  background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#5bc0de), to(#339bb9));
  background-image: -webkit-linear-gradient(top, #5bc0de, #339bb9);
  background-image: -o-linear-gradient(top, #5bc0de, #339bb9);
  background-image: linear-gradient(to bottom, #5bc0de, #339bb9);
  background-repeat: repeat-x;
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ff5bc0de', endColorstr='#ff339bb9', GradientType=0);
}
#nav.wvcsd .progress-info.progress-striped .bar,
#header.wvcsd .progress-info.progress-striped .bar,
#nav.wvcsd .progress-striped .bar-info,
#header.wvcsd .progress-striped .bar-info {
  background-color: #5bc0de;
  background-image: -webkit-gradient(linear, 0 100%, 100% 0, color-stop(0.25, rgba(255, 255, 255, 0.15)), color-stop(0.25, transparent), color-stop(0.5, transparent), color-stop(0.5, rgba(255, 255, 255, 0.15)), color-stop(0.75, rgba(255, 255, 255, 0.15)), color-stop(0.75, transparent), to(transparent));
  background-image: -webkit-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-image: -moz-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-image: -o-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-image: linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
}
#nav.wvcsd .progress-warning .bar,
#header.wvcsd .progress-warning .bar,
#nav.wvcsd .progress .bar-warning,
#header.wvcsd .progress .bar-warning {
  background-color: #faa732;
  background-image: -moz-linear-gradient(top, #fbb450, #f89406);
  background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#fbb450), to(#f89406));
  background-image: -webkit-linear-gradient(top, #fbb450, #f89406);
  background-image: -o-linear-gradient(top, #fbb450, #f89406);
  background-image: linear-gradient(to bottom, #fbb450, #f89406);
  background-repeat: repeat-x;
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#fffbb450', endColorstr='#fff89406', GradientType=0);
}
#nav.wvcsd .progress-warning.progress-striped .bar,
#header.wvcsd .progress-warning.progress-striped .bar,
#nav.wvcsd .progress-striped .bar-warning,
#header.wvcsd .progress-striped .bar-warning {
  background-color: #fbb450;
  background-image: -webkit-gradient(linear, 0 100%, 100% 0, color-stop(0.25, rgba(255, 255, 255, 0.15)), color-stop(0.25, transparent), color-stop(0.5, transparent), color-stop(0.5, rgba(255, 255, 255, 0.15)), color-stop(0.75, rgba(255, 255, 255, 0.15)), color-stop(0.75, transparent), to(transparent));
  background-image: -webkit-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-image: -moz-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-image: -o-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-image: linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
}
#nav.wvcsd article,
#header.wvcsd article,
#nav.wvcsd aside,
#header.wvcsd aside,
#nav.wvcsd details,
#header.wvcsd details,
#nav.wvcsd figcaption,
#header.wvcsd figcaption,
#nav.wvcsd figure,
#header.wvcsd figure,
#nav.wvcsd footer,
#header.wvcsd footer,
#nav.wvcsd header,
#header.wvcsd header,
#nav.wvcsd hgroup,
#header.wvcsd hgroup,
#nav.wvcsd nav,
#header.wvcsd nav,
#nav.wvcsd section,
#header.wvcsd section {
  display: block;
}
#nav.wvcsd audio,
#header.wvcsd audio,
#nav.wvcsd canvas,
#header.wvcsd canvas,
#nav.wvcsd video,
#header.wvcsd video {
  display: inline-block;
  *display: inline;
  *zoom: 1;
}
#nav.wvcsd audio:not([controls]),
#header.wvcsd audio:not([controls]) {
  display: none;
}
#nav.wvcsd html,
#header.wvcsd html {
  font-size: 100%;
  -webkit-text-size-adjust: 100%;
  -ms-text-size-adjust: 100%;
}
#nav.wvcsd a:focus,
#header.wvcsd a:focus {
  outline: thin dotted #333;
  outline: 5px auto -webkit-focus-ring-color;
  outline-offset: -2px;
}
#nav.wvcsd a:hover,
#header.wvcsd a:hover,
#nav.wvcsd a:active,
#header.wvcsd a:active {
  outline: 0;
}
#nav.wvcsd sub,
#header.wvcsd sub,
#nav.wvcsd sup,
#header.wvcsd sup {
  position: relative;
  font-size: 75%;
  line-height: 0;
  vertical-align: baseline;
}
#nav.wvcsd sup,
#header.wvcsd sup {
  top: -0.5em;
}
#nav.wvcsd sub,
#header.wvcsd sub {
  bottom: -0.25em;
}
#nav.wvcsd img,
#header.wvcsd img {
  /* Responsive images (ensure images don't scale beyond their parents) */
  max-width: 100%;
  /* Part 1: Set a maxium relative to the parent */
  width: auto\9;
  /* IE7-8 need help adjusting responsive images */
  height: auto;
  /* Part 2: Scale the height according to the width, otherwise you get stretching */
  vertical-align: middle;
  border: 0;
  -ms-interpolation-mode: bicubic;
}
#nav.wvcsd #map_canvas img,
#header.wvcsd #map_canvas img,
#nav.wvcsd .google-maps img,
#header.wvcsd .google-maps img {
  max-width: none;
}
#nav.wvcsd button,
#header.wvcsd button,
#nav.wvcsd input,
#header.wvcsd input,
#nav.wvcsd select,
#header.wvcsd select,
#nav.wvcsd textarea,
#header.wvcsd textarea {
  margin: 0;
  font-size: 100%;
  vertical-align: middle;
}
#nav.wvcsd button,
#header.wvcsd button,
#nav.wvcsd input,
#header.wvcsd input {
  *overflow: visible;
  line-height: normal;
}
#nav.wvcsd button::-moz-focus-inner,
#header.wvcsd button::-moz-focus-inner,
#nav.wvcsd input::-moz-focus-inner,
#header.wvcsd input::-moz-focus-inner {
  padding: 0;
  border: 0;
}
#nav.wvcsd button,
#header.wvcsd button,
#nav.wvcsd html input[type="button"],
#header.wvcsd html input[type="button"],
#nav.wvcsd input[type="reset"],
#header.wvcsd input[type="reset"],
#nav.wvcsd input[type="submit"],
#header.wvcsd input[type="submit"] {
  -webkit-appearance: button;
  cursor: pointer;
}
#nav.wvcsd label,
#header.wvcsd label,
#nav.wvcsd select,
#header.wvcsd select,
#nav.wvcsd button,
#header.wvcsd button,
#nav.wvcsd input[type="button"],
#header.wvcsd input[type="button"],
#nav.wvcsd input[type="reset"],
#header.wvcsd input[type="reset"],
#nav.wvcsd input[type="submit"],
#header.wvcsd input[type="submit"],
#nav.wvcsd input[type="radio"],
#header.wvcsd input[type="radio"],
#nav.wvcsd input[type="checkbox"],
#header.wvcsd input[type="checkbox"] {
  cursor: pointer;
}
#nav.wvcsd input[type="search"],
#header.wvcsd input[type="search"] {
  -webkit-box-sizing: content-box;
  -moz-box-sizing: content-box;
  box-sizing: content-box;
  -webkit-appearance: textfield;
}
#nav.wvcsd input[type="search"]::-webkit-search-decoration,
#header.wvcsd input[type="search"]::-webkit-search-decoration,
#nav.wvcsd input[type="search"]::-webkit-search-cancel-button,
#header.wvcsd input[type="search"]::-webkit-search-cancel-button {
  -webkit-appearance: none;
}
#nav.wvcsd textarea,
#header.wvcsd textarea {
  overflow: auto;
  vertical-align: top;
}
@media print {
  #nav.wvcsd *,
  #header.wvcsd * {
    text-shadow: none !important;
    color: #000 !important;
    background: transparent !important;
    box-shadow: none !important;
  }
  #nav.wvcsd a,
  #header.wvcsd a,
  #nav.wvcsd a:visited,
  #header.wvcsd a:visited {
    text-decoration: underline;
  }
  #nav.wvcsd a[href]:after,
  #header.wvcsd a[href]:after {
    content: " (" attr(href) ")";
  }
  #nav.wvcsd abbr[title]:after,
  #header.wvcsd abbr[title]:after {
    content: " (" attr(title) ")";
  }
  #nav.wvcsd .ir a:after,
  #header.wvcsd .ir a:after,
  #nav.wvcsd a[href^="javascript:"]:after,
  #header.wvcsd a[href^="javascript:"]:after,
  #nav.wvcsd a[href^="#"]:after,
  #header.wvcsd a[href^="#"]:after {
    content: "";
  }
  #nav.wvcsd pre,
  #header.wvcsd pre,
  #nav.wvcsd blockquote,
  #header.wvcsd blockquote {
    border: 1px solid #999;
    page-break-inside: avoid;
  }
  #nav.wvcsd thead,
  #header.wvcsd thead {
    display: table-header-group;
  }
  #nav.wvcsd tr,
  #header.wvcsd tr,
  #nav.wvcsd img,
  #header.wvcsd img {
    page-break-inside: avoid;
  }
  #nav.wvcsd img,
  #header.wvcsd img {
    max-width: 100% !important;
  }
  @page {
    margin: 0.5cm;
  }
  #nav.wvcsd p,
  #header.wvcsd p,
  #nav.wvcsd h2,
  #header.wvcsd h2,
  #nav.wvcsd h3,
  #header.wvcsd h3 {
    orphans: 3;
    widows: 3;
  }
  #nav.wvcsd h2,
  #header.wvcsd h2,
  #nav.wvcsd h3,
  #header.wvcsd h3 {
    page-break-after: avoid;
  }
}
#nav.wvcsd body,
#header.wvcsd body {
  margin: 0;
  font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
  font-size: 14px;
  line-height: 20px;
  color: #333333;
  /*background-color: @bodyBackground;*/
}
#nav.wvcsd a,
#header.wvcsd a {
  color: #0088cc;
  text-decoration: none;
}
#nav.wvcsd a:hover,
#header.wvcsd a:hover,
#nav.wvcsd a:focus,
#header.wvcsd a:focus {
  color: #005580;
  text-decoration: underline;
}
#nav.wvcsd .img-rounded,
#header.wvcsd .img-rounded {
  -webkit-border-radius: 6px;
  -moz-border-radius: 6px;
  border-radius: 6px;
}
#nav.wvcsd .img-polaroid,
#header.wvcsd .img-polaroid {
  padding: 4px;
  background-color: #fff;
  border: 1px solid #ccc;
  border: 1px solid rgba(0, 0, 0, 0.2);
  -webkit-box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1);
  -moz-box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1);
  box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1);
}
#nav.wvcsd .img-circle,
#header.wvcsd .img-circle {
  -webkit-border-radius: 500px;
  -moz-border-radius: 500px;
  border-radius: 500px;
}
#nav.wvcsd [class^="icon-"],
#header.wvcsd [class^="icon-"],
#nav.wvcsd [class*=" icon-"],
#header.wvcsd [class*=" icon-"] {
  display: inline-block;
  width: 14px;
  height: 14px;
  *margin-right: .3em;
  line-height: 14px;
  vertical-align: text-top;
  background-image: url("../img/glyphicons-halflings.png");
  background-position: 14px 14px;
  background-repeat: no-repeat;
  margin-top: 1px;
}
#nav.wvcsd .icon-white,
#header.wvcsd .icon-white,
#nav.wvcsd .nav-pills > .active > a > [class^="icon-"],
#header.wvcsd .nav-pills > .active > a > [class^="icon-"],
#nav.wvcsd .nav-pills > .active > a > [class*=" icon-"],
#header.wvcsd .nav-pills > .active > a > [class*=" icon-"],
#nav.wvcsd .nav-list > .active > a > [class^="icon-"],
#header.wvcsd .nav-list > .active > a > [class^="icon-"],
#nav.wvcsd .nav-list > .active > a > [class*=" icon-"],
#header.wvcsd .nav-list > .active > a > [class*=" icon-"],
#nav.wvcsd .navbar-inverse .nav > .active > a > [class^="icon-"],
#header.wvcsd .navbar-inverse .nav > .active > a > [class^="icon-"],
#nav.wvcsd .navbar-inverse .nav > .active > a > [class*=" icon-"],
#header.wvcsd .navbar-inverse .nav > .active > a > [class*=" icon-"],
#nav.wvcsd .dropdown-menu > li > a:hover > [class^="icon-"],
#header.wvcsd .dropdown-menu > li > a:hover > [class^="icon-"],
#nav.wvcsd .dropdown-menu > li > a:focus > [class^="icon-"],
#header.wvcsd .dropdown-menu > li > a:focus > [class^="icon-"],
#nav.wvcsd .dropdown-menu > li > a:hover > [class*=" icon-"],
#header.wvcsd .dropdown-menu > li > a:hover > [class*=" icon-"],
#nav.wvcsd .dropdown-menu > li > a:focus > [class*=" icon-"],
#header.wvcsd .dropdown-menu > li > a:focus > [class*=" icon-"],
#nav.wvcsd .dropdown-menu > .active > a > [class^="icon-"],
#header.wvcsd .dropdown-menu > .active > a > [class^="icon-"],
#nav.wvcsd .dropdown-menu > .active > a > [class*=" icon-"],
#header.wvcsd .dropdown-menu > .active > a > [class*=" icon-"],
#nav.wvcsd .dropdown-submenu:hover > a > [class^="icon-"],
#header.wvcsd .dropdown-submenu:hover > a > [class^="icon-"],
#nav.wvcsd .dropdown-submenu:focus > a > [class^="icon-"],
#header.wvcsd .dropdown-submenu:focus > a > [class^="icon-"],
#nav.wvcsd .dropdown-submenu:hover > a > [class*=" icon-"],
#header.wvcsd .dropdown-submenu:hover > a > [class*=" icon-"],
#nav.wvcsd .dropdown-submenu:focus > a > [class*=" icon-"],
#header.wvcsd .dropdown-submenu:focus > a > [class*=" icon-"] {
  background-image: url("../img/glyphicons-halflings-white.png");
}
#nav.wvcsd .icon-glass,
#header.wvcsd .icon-glass {
  background-position: 0      0;
}
#nav.wvcsd .icon-music,
#header.wvcsd .icon-music {
  background-position: -24px 0;
}
#nav.wvcsd .icon-search,
#header.wvcsd .icon-search {
  background-position: -48px 0;
}
#nav.wvcsd .icon-envelope,
#header.wvcsd .icon-envelope {
  background-position: -72px 0;
}
#nav.wvcsd .icon-heart,
#header.wvcsd .icon-heart {
  background-position: -96px 0;
}
#nav.wvcsd .icon-star,
#header.wvcsd .icon-star {
  background-position: -120px 0;
}
#nav.wvcsd .icon-star-empty,
#header.wvcsd .icon-star-empty {
  background-position: -144px 0;
}
#nav.wvcsd .icon-user,
#header.wvcsd .icon-user {
  background-position: -168px 0;
}
#nav.wvcsd .icon-film,
#header.wvcsd .icon-film {
  background-position: -192px 0;
}
#nav.wvcsd .icon-th-large,
#header.wvcsd .icon-th-large {
  background-position: -216px 0;
}
#nav.wvcsd .icon-th,
#header.wvcsd .icon-th {
  background-position: -240px 0;
}
#nav.wvcsd .icon-th-list,
#header.wvcsd .icon-th-list {
  background-position: -264px 0;
}
#nav.wvcsd .icon-ok,
#header.wvcsd .icon-ok {
  background-position: -288px 0;
}
#nav.wvcsd .icon-remove,
#header.wvcsd .icon-remove {
  background-position: -312px 0;
}
#nav.wvcsd .icon-zoom-in,
#header.wvcsd .icon-zoom-in {
  background-position: -336px 0;
}
#nav.wvcsd .icon-zoom-out,
#header.wvcsd .icon-zoom-out {
  background-position: -360px 0;
}
#nav.wvcsd .icon-off,
#header.wvcsd .icon-off {
  background-position: -384px 0;
}
#nav.wvcsd .icon-signal,
#header.wvcsd .icon-signal {
  background-position: -408px 0;
}
#nav.wvcsd .icon-cog,
#header.wvcsd .icon-cog {
  background-position: -432px 0;
}
#nav.wvcsd .icon-trash,
#header.wvcsd .icon-trash {
  background-position: -456px 0;
}
#nav.wvcsd .icon-home,
#header.wvcsd .icon-home {
  background-position: 0 -24px;
}
#nav.wvcsd .icon-file,
#header.wvcsd .icon-file {
  background-position: -24px -24px;
}
#nav.wvcsd .icon-time,
#header.wvcsd .icon-time {
  background-position: -48px -24px;
}
#nav.wvcsd .icon-road,
#header.wvcsd .icon-road {
  background-position: -72px -24px;
}
#nav.wvcsd .icon-download-alt,
#header.wvcsd .icon-download-alt {
  background-position: -96px -24px;
}
#nav.wvcsd .icon-download,
#header.wvcsd .icon-download {
  background-position: -120px -24px;
}
#nav.wvcsd .icon-upload,
#header.wvcsd .icon-upload {
  background-position: -144px -24px;
}
#nav.wvcsd .icon-inbox,
#header.wvcsd .icon-inbox {
  background-position: -168px -24px;
}
#nav.wvcsd .icon-play-circle,
#header.wvcsd .icon-play-circle {
  background-position: -192px -24px;
}
#nav.wvcsd .icon-repeat,
#header.wvcsd .icon-repeat {
  background-position: -216px -24px;
}
#nav.wvcsd .icon-refresh,
#header.wvcsd .icon-refresh {
  background-position: -240px -24px;
}
#nav.wvcsd .icon-list-alt,
#header.wvcsd .icon-list-alt {
  background-position: -264px -24px;
}
#nav.wvcsd .icon-lock,
#header.wvcsd .icon-lock {
  background-position: -287px -24px;
}
#nav.wvcsd .icon-flag,
#header.wvcsd .icon-flag {
  background-position: -312px -24px;
}
#nav.wvcsd .icon-headphones,
#header.wvcsd .icon-headphones {
  background-position: -336px -24px;
}
#nav.wvcsd .icon-volume-off,
#header.wvcsd .icon-volume-off {
  background-position: -360px -24px;
}
#nav.wvcsd .icon-volume-down,
#header.wvcsd .icon-volume-down {
  background-position: -384px -24px;
}
#nav.wvcsd .icon-volume-up,
#header.wvcsd .icon-volume-up {
  background-position: -408px -24px;
}
#nav.wvcsd .icon-qrcode,
#header.wvcsd .icon-qrcode {
  background-position: -432px -24px;
}
#nav.wvcsd .icon-barcode,
#header.wvcsd .icon-barcode {
  background-position: -456px -24px;
}
#nav.wvcsd .icon-tag,
#header.wvcsd .icon-tag {
  background-position: 0 -48px;
}
#nav.wvcsd .icon-tags,
#header.wvcsd .icon-tags {
  background-position: -25px -48px;
}
#nav.wvcsd .icon-book,
#header.wvcsd .icon-book {
  background-position: -48px -48px;
}
#nav.wvcsd .icon-bookmark,
#header.wvcsd .icon-bookmark {
  background-position: -72px -48px;
}
#nav.wvcsd .icon-print,
#header.wvcsd .icon-print {
  background-position: -96px -48px;
}
#nav.wvcsd .icon-camera,
#header.wvcsd .icon-camera {
  background-position: -120px -48px;
}
#nav.wvcsd .icon-font,
#header.wvcsd .icon-font {
  background-position: -144px -48px;
}
#nav.wvcsd .icon-bold,
#header.wvcsd .icon-bold {
  background-position: -167px -48px;
}
#nav.wvcsd .icon-italic,
#header.wvcsd .icon-italic {
  background-position: -192px -48px;
}
#nav.wvcsd .icon-text-height,
#header.wvcsd .icon-text-height {
  background-position: -216px -48px;
}
#nav.wvcsd .icon-text-width,
#header.wvcsd .icon-text-width {
  background-position: -240px -48px;
}
#nav.wvcsd .icon-align-left,
#header.wvcsd .icon-align-left {
  background-position: -264px -48px;
}
#nav.wvcsd .icon-align-center,
#header.wvcsd .icon-align-center {
  background-position: -288px -48px;
}
#nav.wvcsd .icon-align-right,
#header.wvcsd .icon-align-right {
  background-position: -312px -48px;
}
#nav.wvcsd .icon-align-justify,
#header.wvcsd .icon-align-justify {
  background-position: -336px -48px;
}
#nav.wvcsd .icon-list,
#header.wvcsd .icon-list {
  background-position: -360px -48px;
}
#nav.wvcsd .icon-indent-left,
#header.wvcsd .icon-indent-left {
  background-position: -384px -48px;
}
#nav.wvcsd .icon-indent-right,
#header.wvcsd .icon-indent-right {
  background-position: -408px -48px;
}
#nav.wvcsd .icon-facetime-video,
#header.wvcsd .icon-facetime-video {
  background-position: -432px -48px;
}
#nav.wvcsd .icon-picture,
#header.wvcsd .icon-picture {
  background-position: -456px -48px;
}
#nav.wvcsd .icon-pencil,
#header.wvcsd .icon-pencil {
  background-position: 0 -72px;
}
#nav.wvcsd .icon-map-marker,
#header.wvcsd .icon-map-marker {
  background-position: -24px -72px;
}
#nav.wvcsd .icon-adjust,
#header.wvcsd .icon-adjust {
  background-position: -48px -72px;
}
#nav.wvcsd .icon-tint,
#header.wvcsd .icon-tint {
  background-position: -72px -72px;
}
#nav.wvcsd .icon-edit,
#header.wvcsd .icon-edit {
  background-position: -96px -72px;
}
#nav.wvcsd .icon-share,
#header.wvcsd .icon-share {
  background-position: -120px -72px;
}
#nav.wvcsd .icon-check,
#header.wvcsd .icon-check {
  background-position: -144px -72px;
}
#nav.wvcsd .icon-move,
#header.wvcsd .icon-move {
  background-position: -168px -72px;
}
#nav.wvcsd .icon-step-backward,
#header.wvcsd .icon-step-backward {
  background-position: -192px -72px;
}
#nav.wvcsd .icon-fast-backward,
#header.wvcsd .icon-fast-backward {
  background-position: -216px -72px;
}
#nav.wvcsd .icon-backward,
#header.wvcsd .icon-backward {
  background-position: -240px -72px;
}
#nav.wvcsd .icon-play,
#header.wvcsd .icon-play {
  background-position: -264px -72px;
}
#nav.wvcsd .icon-pause,
#header.wvcsd .icon-pause {
  background-position: -288px -72px;
}
#nav.wvcsd .icon-stop,
#header.wvcsd .icon-stop {
  background-position: -312px -72px;
}
#nav.wvcsd .icon-forward,
#header.wvcsd .icon-forward {
  background-position: -336px -72px;
}
#nav.wvcsd .icon-fast-forward,
#header.wvcsd .icon-fast-forward {
  background-position: -360px -72px;
}
#nav.wvcsd .icon-step-forward,
#header.wvcsd .icon-step-forward {
  background-position: -384px -72px;
}
#nav.wvcsd .icon-eject,
#header.wvcsd .icon-eject {
  background-position: -408px -72px;
}
#nav.wvcsd .icon-chevron-left,
#header.wvcsd .icon-chevron-left {
  background-position: -432px -72px;
}
#nav.wvcsd .icon-chevron-right,
#header.wvcsd .icon-chevron-right {
  background-position: -456px -72px;
}
#nav.wvcsd .icon-plus-sign,
#header.wvcsd .icon-plus-sign {
  background-position: 0 -96px;
}
#nav.wvcsd .icon-minus-sign,
#header.wvcsd .icon-minus-sign {
  background-position: -24px -96px;
}
#nav.wvcsd .icon-remove-sign,
#header.wvcsd .icon-remove-sign {
  background-position: -48px -96px;
}
#nav.wvcsd .icon-ok-sign,
#header.wvcsd .icon-ok-sign {
  background-position: -72px -96px;
}
#nav.wvcsd .icon-question-sign,
#header.wvcsd .icon-question-sign {
  background-position: -96px -96px;
}
#nav.wvcsd .icon-info-sign,
#header.wvcsd .icon-info-sign {
  background-position: -120px -96px;
}
#nav.wvcsd .icon-screenshot,
#header.wvcsd .icon-screenshot {
  background-position: -144px -96px;
}
#nav.wvcsd .icon-remove-circle,
#header.wvcsd .icon-remove-circle {
  background-position: -168px -96px;
}
#nav.wvcsd .icon-ok-circle,
#header.wvcsd .icon-ok-circle {
  background-position: -192px -96px;
}
#nav.wvcsd .icon-ban-circle,
#header.wvcsd .icon-ban-circle {
  background-position: -216px -96px;
}
#nav.wvcsd .icon-arrow-left,
#header.wvcsd .icon-arrow-left {
  background-position: -240px -96px;
}
#nav.wvcsd .icon-arrow-right,
#header.wvcsd .icon-arrow-right {
  background-position: -264px -96px;
}
#nav.wvcsd .icon-arrow-up,
#header.wvcsd .icon-arrow-up {
  background-position: -289px -96px;
}
#nav.wvcsd .icon-arrow-down,
#header.wvcsd .icon-arrow-down {
  background-position: -312px -96px;
}
#nav.wvcsd .icon-share-alt,
#header.wvcsd .icon-share-alt {
  background-position: -336px -96px;
}
#nav.wvcsd .icon-resize-full,
#header.wvcsd .icon-resize-full {
  background-position: -360px -96px;
}
#nav.wvcsd .icon-resize-small,
#header.wvcsd .icon-resize-small {
  background-position: -384px -96px;
}
#nav.wvcsd .icon-plus,
#header.wvcsd .icon-plus {
  background-position: -408px -96px;
}
#nav.wvcsd .icon-minus,
#header.wvcsd .icon-minus {
  background-position: -433px -96px;
}
#nav.wvcsd .icon-asterisk,
#header.wvcsd .icon-asterisk {
  background-position: -456px -96px;
}
#nav.wvcsd .icon-exclamation-sign,
#header.wvcsd .icon-exclamation-sign {
  background-position: 0 -120px;
}
#nav.wvcsd .icon-gift,
#header.wvcsd .icon-gift {
  background-position: -24px -120px;
}
#nav.wvcsd .icon-leaf,
#header.wvcsd .icon-leaf {
  background-position: -48px -120px;
}
#nav.wvcsd .icon-fire,
#header.wvcsd .icon-fire {
  background-position: -72px -120px;
}
#nav.wvcsd .icon-eye-open,
#header.wvcsd .icon-eye-open {
  background-position: -96px -120px;
}
#nav.wvcsd .icon-eye-close,
#header.wvcsd .icon-eye-close {
  background-position: -120px -120px;
}
#nav.wvcsd .icon-warning-sign,
#header.wvcsd .icon-warning-sign {
  background-position: -144px -120px;
}
#nav.wvcsd .icon-plane,
#header.wvcsd .icon-plane {
  background-position: -168px -120px;
}
#nav.wvcsd .icon-calendar,
#header.wvcsd .icon-calendar {
  background-position: -192px -120px;
}
#nav.wvcsd .icon-random,
#header.wvcsd .icon-random {
  background-position: -216px -120px;
  width: 16px;
}
#nav.wvcsd .icon-comment,
#header.wvcsd .icon-comment {
  background-position: -240px -120px;
}
#nav.wvcsd .icon-magnet,
#header.wvcsd .icon-magnet {
  background-position: -264px -120px;
}
#nav.wvcsd .icon-chevron-up,
#header.wvcsd .icon-chevron-up {
  background-position: -288px -120px;
}
#nav.wvcsd .icon-chevron-down,
#header.wvcsd .icon-chevron-down {
  background-position: -313px -119px;
}
#nav.wvcsd .icon-retweet,
#header.wvcsd .icon-retweet {
  background-position: -336px -120px;
}
#nav.wvcsd .icon-shopping-cart,
#header.wvcsd .icon-shopping-cart {
  background-position: -360px -120px;
}
#nav.wvcsd .icon-folder-close,
#header.wvcsd .icon-folder-close {
  background-position: -384px -120px;
  width: 16px;
}
#nav.wvcsd .icon-folder-open,
#header.wvcsd .icon-folder-open {
  background-position: -408px -120px;
  width: 16px;
}
#nav.wvcsd .icon-resize-vertical,
#header.wvcsd .icon-resize-vertical {
  background-position: -432px -119px;
}
#nav.wvcsd .icon-resize-horizontal,
#header.wvcsd .icon-resize-horizontal {
  background-position: -456px -118px;
}
#nav.wvcsd .icon-hdd,
#header.wvcsd .icon-hdd {
  background-position: 0 -144px;
}
#nav.wvcsd .icon-bullhorn,
#header.wvcsd .icon-bullhorn {
  background-position: -24px -144px;
}
#nav.wvcsd .icon-bell,
#header.wvcsd .icon-bell {
  background-position: -48px -144px;
}
#nav.wvcsd .icon-certificate,
#header.wvcsd .icon-certificate {
  background-position: -72px -144px;
}
#nav.wvcsd .icon-thumbs-up,
#header.wvcsd .icon-thumbs-up {
  background-position: -96px -144px;
}
#nav.wvcsd .icon-thumbs-down,
#header.wvcsd .icon-thumbs-down {
  background-position: -120px -144px;
}
#nav.wvcsd .icon-hand-right,
#header.wvcsd .icon-hand-right {
  background-position: -144px -144px;
}
#nav.wvcsd .icon-hand-left,
#header.wvcsd .icon-hand-left {
  background-position: -168px -144px;
}
#nav.wvcsd .icon-hand-up,
#header.wvcsd .icon-hand-up {
  background-position: -192px -144px;
}
#nav.wvcsd .icon-hand-down,
#header.wvcsd .icon-hand-down {
  background-position: -216px -144px;
}
#nav.wvcsd .icon-circle-arrow-right,
#header.wvcsd .icon-circle-arrow-right {
  background-position: -240px -144px;
}
#nav.wvcsd .icon-circle-arrow-left,
#header.wvcsd .icon-circle-arrow-left {
  background-position: -264px -144px;
}
#nav.wvcsd .icon-circle-arrow-up,
#header.wvcsd .icon-circle-arrow-up {
  background-position: -288px -144px;
}
#nav.wvcsd .icon-circle-arrow-down,
#header.wvcsd .icon-circle-arrow-down {
  background-position: -312px -144px;
}
#nav.wvcsd .icon-globe,
#header.wvcsd .icon-globe {
  background-position: -336px -144px;
}
#nav.wvcsd .icon-wrench,
#header.wvcsd .icon-wrench {
  background-position: -360px -144px;
}
#nav.wvcsd .icon-tasks,
#header.wvcsd .icon-tasks {
  background-position: -384px -144px;
}
#nav.wvcsd .icon-filter,
#header.wvcsd .icon-filter {
  background-position: -408px -144px;
}
#nav.wvcsd .icon-briefcase,
#header.wvcsd .icon-briefcase {
  background-position: -432px -144px;
}
#nav.wvcsd .icon-fullscreen,
#header.wvcsd .icon-fullscreen {
  background-position: -456px -144px;
}
#nav.wvcsd table,
#header.wvcsd table {
  max-width: 100%;
  background-color: transparent;
  border-collapse: collapse;
  border-spacing: 0;
}
#nav.wvcsd .table,
#header.wvcsd .table {
  width: 100%;
  margin-bottom: 20px;
}
#nav.wvcsd .table th,
#header.wvcsd .table th,
#nav.wvcsd .table td,
#header.wvcsd .table td {
  padding: 8px;
  line-height: 20px;
  text-align: left;
  vertical-align: top;
  border-top: 1px solid #dddddd;
}
#nav.wvcsd .table th,
#header.wvcsd .table th {
  font-weight: bold;
}
#nav.wvcsd .table thead th,
#header.wvcsd .table thead th {
  vertical-align: bottom;
}
#nav.wvcsd .table caption + thead tr:first-child th,
#header.wvcsd .table caption + thead tr:first-child th,
#nav.wvcsd .table caption + thead tr:first-child td,
#header.wvcsd .table caption + thead tr:first-child td,
#nav.wvcsd .table colgroup + thead tr:first-child th,
#header.wvcsd .table colgroup + thead tr:first-child th,
#nav.wvcsd .table colgroup + thead tr:first-child td,
#header.wvcsd .table colgroup + thead tr:first-child td,
#nav.wvcsd .table thead:first-child tr:first-child th,
#header.wvcsd .table thead:first-child tr:first-child th,
#nav.wvcsd .table thead:first-child tr:first-child td,
#header.wvcsd .table thead:first-child tr:first-child td {
  border-top: 0;
}
#nav.wvcsd .table tbody + tbody,
#header.wvcsd .table tbody + tbody {
  border-top: 2px solid #dddddd;
}
#nav.wvcsd .table .table,
#header.wvcsd .table .table {
  background-color: #ffffff;
}
#nav.wvcsd .table-condensed th,
#header.wvcsd .table-condensed th,
#nav.wvcsd .table-condensed td,
#header.wvcsd .table-condensed td {
  padding: 4px 5px;
}
#nav.wvcsd .table-bordered,
#header.wvcsd .table-bordered {
  border: 1px solid #dddddd;
  border-collapse: separate;
  *border-collapse: collapse;
  border-left: 0;
  -webkit-border-radius: 4px;
  -moz-border-radius: 4px;
  border-radius: 4px;
}
#nav.wvcsd .table-bordered th,
#header.wvcsd .table-bordered th,
#nav.wvcsd .table-bordered td,
#header.wvcsd .table-bordered td {
  border-left: 1px solid #dddddd;
}
#nav.wvcsd .table-bordered caption + thead tr:first-child th,
#header.wvcsd .table-bordered caption + thead tr:first-child th,
#nav.wvcsd .table-bordered caption + tbody tr:first-child th,
#header.wvcsd .table-bordered caption + tbody tr:first-child th,
#nav.wvcsd .table-bordered caption + tbody tr:first-child td,
#header.wvcsd .table-bordered caption + tbody tr:first-child td,
#nav.wvcsd .table-bordered colgroup + thead tr:first-child th,
#header.wvcsd .table-bordered colgroup + thead tr:first-child th,
#nav.wvcsd .table-bordered colgroup + tbody tr:first-child th,
#header.wvcsd .table-bordered colgroup + tbody tr:first-child th,
#nav.wvcsd .table-bordered colgroup + tbody tr:first-child td,
#header.wvcsd .table-bordered colgroup + tbody tr:first-child td,
#nav.wvcsd .table-bordered thead:first-child tr:first-child th,
#header.wvcsd .table-bordered thead:first-child tr:first-child th,
#nav.wvcsd .table-bordered tbody:first-child tr:first-child th,
#header.wvcsd .table-bordered tbody:first-child tr:first-child th,
#nav.wvcsd .table-bordered tbody:first-child tr:first-child td,
#header.wvcsd .table-bordered tbody:first-child tr:first-child td {
  border-top: 0;
}
#nav.wvcsd .table-bordered thead:first-child tr:first-child > th:first-child,
#header.wvcsd .table-bordered thead:first-child tr:first-child > th:first-child,
#nav.wvcsd .table-bordered tbody:first-child tr:first-child > td:first-child,
#header.wvcsd .table-bordered tbody:first-child tr:first-child > td:first-child,
#nav.wvcsd .table-bordered tbody:first-child tr:first-child > th:first-child,
#header.wvcsd .table-bordered tbody:first-child tr:first-child > th:first-child {
  -webkit-border-top-left-radius: 4px;
  -moz-border-radius-topleft: 4px;
  border-top-left-radius: 4px;
}
#nav.wvcsd .table-bordered thead:first-child tr:first-child > th:last-child,
#header.wvcsd .table-bordered thead:first-child tr:first-child > th:last-child,
#nav.wvcsd .table-bordered tbody:first-child tr:first-child > td:last-child,
#header.wvcsd .table-bordered tbody:first-child tr:first-child > td:last-child,
#nav.wvcsd .table-bordered tbody:first-child tr:first-child > th:last-child,
#header.wvcsd .table-bordered tbody:first-child tr:first-child > th:last-child {
  -webkit-border-top-right-radius: 4px;
  -moz-border-radius-topright: 4px;
  border-top-right-radius: 4px;
}
#nav.wvcsd .table-bordered thead:last-child tr:last-child > th:first-child,
#header.wvcsd .table-bordered thead:last-child tr:last-child > th:first-child,
#nav.wvcsd .table-bordered tbody:last-child tr:last-child > td:first-child,
#header.wvcsd .table-bordered tbody:last-child tr:last-child > td:first-child,
#nav.wvcsd .table-bordered tbody:last-child tr:last-child > th:first-child,
#header.wvcsd .table-bordered tbody:last-child tr:last-child > th:first-child,
#nav.wvcsd .table-bordered tfoot:last-child tr:last-child > td:first-child,
#header.wvcsd .table-bordered tfoot:last-child tr:last-child > td:first-child,
#nav.wvcsd .table-bordered tfoot:last-child tr:last-child > th:first-child,
#header.wvcsd .table-bordered tfoot:last-child tr:last-child > th:first-child {
  -webkit-border-bottom-left-radius: 4px;
  -moz-border-radius-bottomleft: 4px;
  border-bottom-left-radius: 4px;
}
#nav.wvcsd .table-bordered thead:last-child tr:last-child > th:last-child,
#header.wvcsd .table-bordered thead:last-child tr:last-child > th:last-child,
#nav.wvcsd .table-bordered tbody:last-child tr:last-child > td:last-child,
#header.wvcsd .table-bordered tbody:last-child tr:last-child > td:last-child,
#nav.wvcsd .table-bordered tbody:last-child tr:last-child > th:last-child,
#header.wvcsd .table-bordered tbody:last-child tr:last-child > th:last-child,
#nav.wvcsd .table-bordered tfoot:last-child tr:last-child > td:last-child,
#header.wvcsd .table-bordered tfoot:last-child tr:last-child > td:last-child,
#nav.wvcsd .table-bordered tfoot:last-child tr:last-child > th:last-child,
#header.wvcsd .table-bordered tfoot:last-child tr:last-child > th:last-child {
  -webkit-border-bottom-right-radius: 4px;
  -moz-border-radius-bottomright: 4px;
  border-bottom-right-radius: 4px;
}
#nav.wvcsd .table-bordered tfoot + tbody:last-child tr:last-child td:first-child,
#header.wvcsd .table-bordered tfoot + tbody:last-child tr:last-child td:first-child {
  -webkit-border-bottom-left-radius: 0;
  -moz-border-radius-bottomleft: 0;
  border-bottom-left-radius: 0;
}
#nav.wvcsd .table-bordered tfoot + tbody:last-child tr:last-child td:last-child,
#header.wvcsd .table-bordered tfoot + tbody:last-child tr:last-child td:last-child {
  -webkit-border-bottom-right-radius: 0;
  -moz-border-radius-bottomright: 0;
  border-bottom-right-radius: 0;
}
#nav.wvcsd .table-bordered caption + thead tr:first-child th:first-child,
#header.wvcsd .table-bordered caption + thead tr:first-child th:first-child,
#nav.wvcsd .table-bordered caption + tbody tr:first-child td:first-child,
#header.wvcsd .table-bordered caption + tbody tr:first-child td:first-child,
#nav.wvcsd .table-bordered colgroup + thead tr:first-child th:first-child,
#header.wvcsd .table-bordered colgroup + thead tr:first-child th:first-child,
#nav.wvcsd .table-bordered colgroup + tbody tr:first-child td:first-child,
#header.wvcsd .table-bordered colgroup + tbody tr:first-child td:first-child {
  -webkit-border-top-left-radius: 4px;
  -moz-border-radius-topleft: 4px;
  border-top-left-radius: 4px;
}
#nav.wvcsd .table-bordered caption + thead tr:first-child th:last-child,
#header.wvcsd .table-bordered caption + thead tr:first-child th:last-child,
#nav.wvcsd .table-bordered caption + tbody tr:first-child td:last-child,
#header.wvcsd .table-bordered caption + tbody tr:first-child td:last-child,
#nav.wvcsd .table-bordered colgroup + thead tr:first-child th:last-child,
#header.wvcsd .table-bordered colgroup + thead tr:first-child th:last-child,
#nav.wvcsd .table-bordered colgroup + tbody tr:first-child td:last-child,
#header.wvcsd .table-bordered colgroup + tbody tr:first-child td:last-child {
  -webkit-border-top-right-radius: 4px;
  -moz-border-radius-topright: 4px;
  border-top-right-radius: 4px;
}
#nav.wvcsd .table-striped tbody > tr:nth-child(odd) > td,
#header.wvcsd .table-striped tbody > tr:nth-child(odd) > td,
#nav.wvcsd .table-striped tbody > tr:nth-child(odd) > th,
#header.wvcsd .table-striped tbody > tr:nth-child(odd) > th {
  background-color: #f9f9f9;
}
#nav.wvcsd .table-hover tbody tr:hover > td,
#header.wvcsd .table-hover tbody tr:hover > td,
#nav.wvcsd .table-hover tbody tr:hover > th,
#header.wvcsd .table-hover tbody tr:hover > th {
  background-color: #f5f5f5;
}
#nav.wvcsd table td[class*="span"],
#header.wvcsd table td[class*="span"],
#nav.wvcsd table th[class*="span"],
#header.wvcsd table th[class*="span"],
#nav.wvcsd .row-fluid table td[class*="span"],
#header.wvcsd .row-fluid table td[class*="span"],
#nav.wvcsd .row-fluid table th[class*="span"],
#header.wvcsd .row-fluid table th[class*="span"] {
  display: table-cell;
  float: none;
  margin-left: 0;
}
#nav.wvcsd .table td.span1,
#header.wvcsd .table td.span1,
#nav.wvcsd .table th.span1,
#header.wvcsd .table th.span1 {
  float: none;
  width: 44px;
  margin-left: 0;
}
#nav.wvcsd .table td.span2,
#header.wvcsd .table td.span2,
#nav.wvcsd .table th.span2,
#header.wvcsd .table th.span2 {
  float: none;
  width: 124px;
  margin-left: 0;
}
#nav.wvcsd .table td.span3,
#header.wvcsd .table td.span3,
#nav.wvcsd .table th.span3,
#header.wvcsd .table th.span3 {
  float: none;
  width: 204px;
  margin-left: 0;
}
#nav.wvcsd .table td.span4,
#header.wvcsd .table td.span4,
#nav.wvcsd .table th.span4,
#header.wvcsd .table th.span4 {
  float: none;
  width: 284px;
  margin-left: 0;
}
#nav.wvcsd .table td.span5,
#header.wvcsd .table td.span5,
#nav.wvcsd .table th.span5,
#header.wvcsd .table th.span5 {
  float: none;
  width: 364px;
  margin-left: 0;
}
#nav.wvcsd .table td.span6,
#header.wvcsd .table td.span6,
#nav.wvcsd .table th.span6,
#header.wvcsd .table th.span6 {
  float: none;
  width: 444px;
  margin-left: 0;
}
#nav.wvcsd .table td.span7,
#header.wvcsd .table td.span7,
#nav.wvcsd .table th.span7,
#header.wvcsd .table th.span7 {
  float: none;
  width: 524px;
  margin-left: 0;
}
#nav.wvcsd .table td.span8,
#header.wvcsd .table td.span8,
#nav.wvcsd .table th.span8,
#header.wvcsd .table th.span8 {
  float: none;
  width: 604px;
  margin-left: 0;
}
#nav.wvcsd .table td.span9,
#header.wvcsd .table td.span9,
#nav.wvcsd .table th.span9,
#header.wvcsd .table th.span9 {
  float: none;
  width: 684px;
  margin-left: 0;
}
#nav.wvcsd .table td.span10,
#header.wvcsd .table td.span10,
#nav.wvcsd .table th.span10,
#header.wvcsd .table th.span10 {
  float: none;
  width: 764px;
  margin-left: 0;
}
#nav.wvcsd .table td.span11,
#header.wvcsd .table td.span11,
#nav.wvcsd .table th.span11,
#header.wvcsd .table th.span11 {
  float: none;
  width: 844px;
  margin-left: 0;
}
#nav.wvcsd .table td.span12,
#header.wvcsd .table td.span12,
#nav.wvcsd .table th.span12,
#header.wvcsd .table th.span12 {
  float: none;
  width: 924px;
  margin-left: 0;
}
#nav.wvcsd .table tbody tr.success > td,
#header.wvcsd .table tbody tr.success > td {
  background-color: #dff0d8;
}
#nav.wvcsd .table tbody tr.error > td,
#header.wvcsd .table tbody tr.error > td {
  background-color: #f2dede;
}
#nav.wvcsd .table tbody tr.warning > td,
#header.wvcsd .table tbody tr.warning > td {
  background-color: #fcf8e3;
}
#nav.wvcsd .table tbody tr.info > td,
#header.wvcsd .table tbody tr.info > td {
  background-color: #d9edf7;
}
#nav.wvcsd .table-hover tbody tr.success:hover > td,
#header.wvcsd .table-hover tbody tr.success:hover > td {
  background-color: #d0e9c6;
}
#nav.wvcsd .table-hover tbody tr.error:hover > td,
#header.wvcsd .table-hover tbody tr.error:hover > td {
  background-color: #ebcccc;
}
#nav.wvcsd .table-hover tbody tr.warning:hover > td,
#header.wvcsd .table-hover tbody tr.warning:hover > td {
  background-color: #faf2cc;
}
#nav.wvcsd .table-hover tbody tr.info:hover > td,
#header.wvcsd .table-hover tbody tr.info:hover > td {
  background-color: #c4e3f3;
}
#nav.wvcsd .thumbnails,
#header.wvcsd .thumbnails {
  margin-left: -20px;
  list-style: none;
  *zoom: 1;
}
#nav.wvcsd .thumbnails:before,
#header.wvcsd .thumbnails:before,
#nav.wvcsd .thumbnails:after,
#header.wvcsd .thumbnails:after {
  display: table;
  content: "";
  line-height: 0;
}
#nav.wvcsd .thumbnails:after,
#header.wvcsd .thumbnails:after {
  clear: both;
}
#nav.wvcsd .row-fluid .thumbnails,
#header.wvcsd .row-fluid .thumbnails {
  margin-left: 0;
}
#nav.wvcsd .thumbnails > li,
#header.wvcsd .thumbnails > li {
  float: left;
  margin-bottom: 20px;
  margin-left: 20px;
}
#nav.wvcsd .thumbnail,
#header.wvcsd .thumbnail {
  display: block;
  padding: 4px;
  line-height: 20px;
  border: 1px solid #ddd;
  -webkit-border-radius: 4px;
  -moz-border-radius: 4px;
  border-radius: 4px;
  -webkit-box-shadow: 0 1px 3px rgba(0, 0, 0, 0.055);
  -moz-box-shadow: 0 1px 3px rgba(0, 0, 0, 0.055);
  box-shadow: 0 1px 3px rgba(0, 0, 0, 0.055);
  -webkit-transition: all 0.2s ease-in-out;
  -moz-transition: all 0.2s ease-in-out;
  -o-transition: all 0.2s ease-in-out;
  transition: all 0.2s ease-in-out;
}
#nav.wvcsd a.thumbnail:hover,
#header.wvcsd a.thumbnail:hover,
#nav.wvcsd a.thumbnail:focus,
#header.wvcsd a.thumbnail:focus {
  border-color: #0088cc;
  -webkit-box-shadow: 0 1px 4px rgba(0, 105, 214, 0.25);
  -moz-box-shadow: 0 1px 4px rgba(0, 105, 214, 0.25);
  box-shadow: 0 1px 4px rgba(0, 105, 214, 0.25);
}
#nav.wvcsd .thumbnail > img,
#header.wvcsd .thumbnail > img {
  display: block;
  max-width: 100%;
  margin-left: auto;
  margin-right: auto;
}
#nav.wvcsd .thumbnail .caption,
#header.wvcsd .thumbnail .caption {
  padding: 9px;
  color: #555555;
}
#nav.wvcsd .tooltip,
#header.wvcsd .tooltip {
  position: absolute;
  z-index: 1030;
  display: block;
  visibility: visible;
  font-size: 11px;
  line-height: 1.4;
  opacity: 0;
  filter: alpha(opacity=0);
}
#nav.wvcsd .tooltip.in,
#header.wvcsd .tooltip.in {
  opacity: 0.8;
  filter: alpha(opacity=80);
}
#nav.wvcsd .tooltip.top,
#header.wvcsd .tooltip.top {
  margin-top: -3px;
  padding: 5px 0;
}
#nav.wvcsd .tooltip.right,
#header.wvcsd .tooltip.right {
  margin-left: 3px;
  padding: 0 5px;
}
#nav.wvcsd .tooltip.bottom,
#header.wvcsd .tooltip.bottom {
  margin-top: 3px;
  padding: 5px 0;
}
#nav.wvcsd .tooltip.left,
#header.wvcsd .tooltip.left {
  margin-left: -3px;
  padding: 0 5px;
}
#nav.wvcsd .tooltip-inner,
#header.wvcsd .tooltip-inner {
  max-width: 200px;
  padding: 8px;
  color: #ffffff;
  text-align: center;
  text-decoration: none;
  background-color: #000000;
  -webkit-border-radius: 4px;
  -moz-border-radius: 4px;
  border-radius: 4px;
}
#nav.wvcsd .tooltip-arrow,
#header.wvcsd .tooltip-arrow {
  position: absolute;
  width: 0;
  height: 0;
  border-color: transparent;
  border-style: solid;
}
#nav.wvcsd .tooltip.top .tooltip-arrow,
#header.wvcsd .tooltip.top .tooltip-arrow {
  bottom: 0;
  left: 50%;
  margin-left: -5px;
  border-width: 5px 5px 0;
  border-top-color: #000000;
}
#nav.wvcsd .tooltip.right .tooltip-arrow,
#header.wvcsd .tooltip.right .tooltip-arrow {
  top: 50%;
  left: 0;
  margin-top: -5px;
  border-width: 5px 5px 5px 0;
  border-right-color: #000000;
}
#nav.wvcsd .tooltip.left .tooltip-arrow,
#header.wvcsd .tooltip.left .tooltip-arrow {
  top: 50%;
  right: 0;
  margin-top: -5px;
  border-width: 5px 0 5px 5px;
  border-left-color: #000000;
}
#nav.wvcsd .tooltip.bottom .tooltip-arrow,
#header.wvcsd .tooltip.bottom .tooltip-arrow {
  top: 0;
  left: 50%;
  margin-left: -5px;
  border-width: 0 5px 5px;
  border-bottom-color: #000000;
}
#nav.wvcsd p,
#header.wvcsd p {
  margin: 0 0 10px;
}
#nav.wvcsd .lead,
#header.wvcsd .lead {
  margin-bottom: 20px;
  font-size: 21px;
  font-weight: 200;
  line-height: 30px;
}
#nav.wvcsd small,
#header.wvcsd small {
  font-size: 85%;
}
#nav.wvcsd strong,
#header.wvcsd strong {
  font-weight: bold;
}
#nav.wvcsd em,
#header.wvcsd em {
  font-style: italic;
}
#nav.wvcsd cite,
#header.wvcsd cite {
  font-style: normal;
}
#nav.wvcsd .muted,
#header.wvcsd .muted {
  color: #999999;
}
#nav.wvcsd a.muted:hover,
#header.wvcsd a.muted:hover,
#nav.wvcsd a.muted:focus,
#header.wvcsd a.muted:focus {
  color: #808080;
}
#nav.wvcsd .text-warning,
#header.wvcsd .text-warning {
  color: #c09853;
}
#nav.wvcsd a.text-warning:hover,
#header.wvcsd a.text-warning:hover,
#nav.wvcsd a.text-warning:focus,
#header.wvcsd a.text-warning:focus {
  color: #a47e3c;
}
#nav.wvcsd .text-error,
#header.wvcsd .text-error {
  color: #b94a48;
}
#nav.wvcsd a.text-error:hover,
#header.wvcsd a.text-error:hover,
#nav.wvcsd a.text-error:focus,
#header.wvcsd a.text-error:focus {
  color: #953b39;
}
#nav.wvcsd .text-info,
#header.wvcsd .text-info {
  color: #3a87ad;
}
#nav.wvcsd a.text-info:hover,
#header.wvcsd a.text-info:hover,
#nav.wvcsd a.text-info:focus,
#header.wvcsd a.text-info:focus {
  color: #2d6987;
}
#nav.wvcsd .text-success,
#header.wvcsd .text-success {
  color: #468847;
}
#nav.wvcsd a.text-success:hover,
#header.wvcsd a.text-success:hover,
#nav.wvcsd a.text-success:focus,
#header.wvcsd a.text-success:focus {
  color: #356635;
}
#nav.wvcsd .text-left,
#header.wvcsd .text-left {
  text-align: left;
}
#nav.wvcsd .text-right,
#header.wvcsd .text-right {
  text-align: right;
}
#nav.wvcsd .text-center,
#header.wvcsd .text-center {
  text-align: center;
}
#nav.wvcsd h1,
#header.wvcsd h1,
#nav.wvcsd h2,
#header.wvcsd h2,
#nav.wvcsd h3,
#header.wvcsd h3,
#nav.wvcsd h4,
#header.wvcsd h4,
#nav.wvcsd h5,
#header.wvcsd h5,
#nav.wvcsd h6,
#header.wvcsd h6 {
  margin: 10px 0;
  font-family: inherit;
  font-weight: bold;
  line-height: 20px;
  color: inherit;
  text-rendering: optimizelegibility;
}
#nav.wvcsd h1 small,
#header.wvcsd h1 small,
#nav.wvcsd h2 small,
#header.wvcsd h2 small,
#nav.wvcsd h3 small,
#header.wvcsd h3 small,
#nav.wvcsd h4 small,
#header.wvcsd h4 small,
#nav.wvcsd h5 small,
#header.wvcsd h5 small,
#nav.wvcsd h6 small,
#header.wvcsd h6 small {
  font-weight: normal;
  line-height: 1;
  color: #999999;
}
#nav.wvcsd h1,
#header.wvcsd h1,
#nav.wvcsd h2,
#header.wvcsd h2,
#nav.wvcsd h3,
#header.wvcsd h3 {
  line-height: 40px;
}
#nav.wvcsd h1,
#header.wvcsd h1 {
  font-size: 38.5px;
}
#nav.wvcsd h2,
#header.wvcsd h2 {
  font-size: 31.5px;
}
#nav.wvcsd h3,
#header.wvcsd h3 {
  font-size: 24.5px;
}
#nav.wvcsd h4,
#header.wvcsd h4 {
  font-size: 17.5px;
}
#nav.wvcsd h5,
#header.wvcsd h5 {
  font-size: 14px;
}
#nav.wvcsd h6,
#header.wvcsd h6 {
  font-size: 11.9px;
}
#nav.wvcsd h1 small,
#header.wvcsd h1 small {
  font-size: 24.5px;
}
#nav.wvcsd h2 small,
#header.wvcsd h2 small {
  font-size: 17.5px;
}
#nav.wvcsd h3 small,
#header.wvcsd h3 small {
  font-size: 14px;
}
#nav.wvcsd h4 small,
#header.wvcsd h4 small {
  font-size: 14px;
}
#nav.wvcsd .page-header,
#header.wvcsd .page-header {
  padding-bottom: 9px;
  margin: 20px 0 30px;
  border-bottom: 1px solid #eeeeee;
}
#nav.wvcsd ul,
#header.wvcsd ul,
#nav.wvcsd ol,
#header.wvcsd ol {
  padding: 0;
  margin: 0 0 10px 25px;
}
#nav.wvcsd ul ul,
#header.wvcsd ul ul,
#nav.wvcsd ul ol,
#header.wvcsd ul ol,
#nav.wvcsd ol ol,
#header.wvcsd ol ol,
#nav.wvcsd ol ul,
#header.wvcsd ol ul {
  margin-bottom: 0;
}
#nav.wvcsd li,
#header.wvcsd li {
  line-height: 20px;
}
#nav.wvcsd ul.unstyled,
#header.wvcsd ul.unstyled,
#nav.wvcsd ol.unstyled,
#header.wvcsd ol.unstyled {
  margin-left: 0;
  list-style: none;
}
#nav.wvcsd ul.inline,
#header.wvcsd ul.inline,
#nav.wvcsd ol.inline,
#header.wvcsd ol.inline {
  margin-left: 0;
  list-style: none;
}
#nav.wvcsd ul.inline > li,
#header.wvcsd ul.inline > li,
#nav.wvcsd ol.inline > li,
#header.wvcsd ol.inline > li {
  display: inline-block;
  *display: inline;
  /* IE7 inline-block hack */
  *zoom: 1;
  padding-left: 5px;
  padding-right: 5px;
}
#nav.wvcsd dl,
#header.wvcsd dl {
  margin-bottom: 20px;
}
#nav.wvcsd dt,
#header.wvcsd dt,
#nav.wvcsd dd,
#header.wvcsd dd {
  line-height: 20px;
}
#nav.wvcsd dt,
#header.wvcsd dt {
  font-weight: bold;
}
#nav.wvcsd dd,
#header.wvcsd dd {
  margin-left: 10px;
}
#nav.wvcsd .dl-horizontal,
#header.wvcsd .dl-horizontal {
  *zoom: 1;
}
#nav.wvcsd .dl-horizontal:before,
#header.wvcsd .dl-horizontal:before,
#nav.wvcsd .dl-horizontal:after,
#header.wvcsd .dl-horizontal:after {
  display: table;
  content: "";
  line-height: 0;
}
#nav.wvcsd .dl-horizontal:after,
#header.wvcsd .dl-horizontal:after {
  clear: both;
}
#nav.wvcsd .dl-horizontal dt,
#header.wvcsd .dl-horizontal dt {
  float: left;
  width: 160px;
  clear: left;
  text-align: right;
  overflow: hidden;
  text-overflow: ellipsis;
  white-space: nowrap;
}
#nav.wvcsd .dl-horizontal dd,
#header.wvcsd .dl-horizontal dd {
  margin-left: 180px;
}
#nav.wvcsd hr,
#header.wvcsd hr {
  margin: 20px 0;
  border: 0;
  border-top: 1px solid #eeeeee;
  border-bottom: 1px solid #ffffff;
}
#nav.wvcsd abbr[title],
#header.wvcsd abbr[title],
#nav.wvcsd abbr[data-original-title],
#header.wvcsd abbr[data-original-title] {
  cursor: help;
  border-bottom: 1px dotted #999999;
}
#nav.wvcsd abbr.initialism,
#header.wvcsd abbr.initialism {
  font-size: 90%;
  text-transform: uppercase;
}
#nav.wvcsd blockquote,
#header.wvcsd blockquote {
  padding: 0 0 0 15px;
  margin: 0 0 20px;
  border-left: 5px solid #eeeeee;
}
#nav.wvcsd blockquote p,
#header.wvcsd blockquote p {
  margin-bottom: 0;
  font-size: 17.5px;
  font-weight: 300;
  line-height: 1.25;
}
#nav.wvcsd blockquote small,
#header.wvcsd blockquote small {
  display: block;
  line-height: 20px;
  color: #999999;
}
#nav.wvcsd blockquote small:before,
#header.wvcsd blockquote small:before {
  content: '\2014 \00A0';
}
#nav.wvcsd blockquote.pull-right,
#header.wvcsd blockquote.pull-right {
  float: right;
  padding-right: 15px;
  padding-left: 0;
  border-right: 5px solid #eeeeee;
  border-left: 0;
}
#nav.wvcsd blockquote.pull-right p,
#header.wvcsd blockquote.pull-right p,
#nav.wvcsd blockquote.pull-right small,
#header.wvcsd blockquote.pull-right small {
  text-align: right;
}
#nav.wvcsd blockquote.pull-right small:before,
#header.wvcsd blockquote.pull-right small:before {
  content: '';
}
#nav.wvcsd blockquote.pull-right small:after,
#header.wvcsd blockquote.pull-right small:after {
  content: '\00A0 \2014';
}
#nav.wvcsd q:before,
#header.wvcsd q:before,
#nav.wvcsd q:after,
#header.wvcsd q:after,
#nav.wvcsd blockquote:before,
#header.wvcsd blockquote:before,
#nav.wvcsd blockquote:after,
#header.wvcsd blockquote:after {
  content: "";
}
#nav.wvcsd address,
#header.wvcsd address {
  display: block;
  margin-bottom: 20px;
  font-style: normal;
  line-height: 20px;
}
#nav.wvcsd .pull-right,
#header.wvcsd .pull-right {
  float: right;
}
#nav.wvcsd .pull-left,
#header.wvcsd .pull-left {
  float: left;
}
#nav.wvcsd .hide,
#header.wvcsd .hide {
  display: none;
}
#nav.wvcsd .show,
#header.wvcsd .show {
  display: block;
}
#nav.wvcsd .invisible,
#header.wvcsd .invisible {
  visibility: hidden;
}
#nav.wvcsd .affix,
#header.wvcsd .affix {
  position: fixed;
}
#nav.wvcsd .well,
#header.wvcsd .well {
  min-height: 20px;
  padding: 19px;
  margin-bottom: 20px;
  background-color: #f5f5f5;
  border: 1px solid #e3e3e3;
  -webkit-border-radius: 4px;
  -moz-border-radius: 4px;
  border-radius: 4px;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.05);
  -moz-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.05);
  box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.05);
}
#nav.wvcsd .well blockquote,
#header.wvcsd .well blockquote {
  border-color: #ddd;
  border-color: rgba(0, 0, 0, 0.15);
}
#nav.wvcsd .well-large,
#header.wvcsd .well-large {
  padding: 24px;
  -webkit-border-radius: 6px;
  -moz-border-radius: 6px;
  border-radius: 6px;
}
#nav.wvcsd .well-small,
#header.wvcsd .well-small {
  padding: 9px;
  -webkit-border-radius: 3px;
  -moz-border-radius: 3px;
  border-radius: 3px;
}
#nav.wvcsd .navbar,
#header.wvcsd .navbar {
  margin-bottom: 0;
  font-size: 14px;
}
#nav.wvcsd .global-nav-text,
#header.wvcsd .global-nav-text {
  color: #fff;
  text-shadow: 2px 0 2px #ff6600;
  text-transform: uppercase;
  padding: 15px 0;
}
#nav.wvcsd .global-nav-text:hover,
#header.wvcsd .global-nav-text:hover {
  color: #ff6600;
  text-shadow: none;
  background-color: #fff3e2;
  background-image: -moz-linear-gradient(top, #ffebcf, #ffffff);
  background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#ffebcf), to(#ffffff));
  background-image: -webkit-linear-gradient(top, #ffebcf, #ffffff);
  background-image: -o-linear-gradient(top, #ffebcf, #ffffff);
  background-image: linear-gradient(to bottom, #ffebcf, #ffffff);
  background-repeat: repeat-x;
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffffebcf', endColorstr='#ffffffff', GradientType=0);
}
#nav.wvcsd .icon-down-arrow,
#header.wvcsd .icon-down-arrow {
  background: url(../img/icon_down_v2.png) 0 0 no-repeat;
  display: inline-block;
  width: 11px;
  height: 7px;
  position: relative;
  top: 4px;
  margin-left: 5px;
}
#nav.wvcsd .navbar .navbar-inner,
#header.wvcsd .navbar .navbar-inner {
  padding: 0;
  width: 940px;
  margin: 0 auto;
  background-image: none;
  background-color: transparent;
  filter: -;
  border: none;
  box-shadow: none;
}
#nav.wvcsd .navbar .nav,
#header.wvcsd .navbar .nav {
  margin: 0;
  width: 100%;
  padding: 0;
}
#nav.wvcsd .navbar .nav > li,
#header.wvcsd .navbar .nav > li {
  padding: 0;
}
#nav.wvcsd .navbar .nav > li > a,
#header.wvcsd .navbar .nav > li > a {
  font-weight: bold;
  text-align: center;
  border-right: 1px solid #fed190;
  color: #fff;
  text-shadow: 2px 0 2px #ff6600;
  text-transform: uppercase;
  padding: 15px 0;
}
#nav.wvcsd .navbar .nav > li > a:hover,
#header.wvcsd .navbar .nav > li > a:hover {
  color: #ff6600;
  text-shadow: none;
  background-color: #fff3e2;
  background-image: -moz-linear-gradient(top, #ffebcf, #ffffff);
  background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#ffebcf), to(#ffffff));
  background-image: -webkit-linear-gradient(top, #ffebcf, #ffffff);
  background-image: -o-linear-gradient(top, #ffebcf, #ffffff);
  background-image: linear-gradient(to bottom, #ffebcf, #ffffff);
  background-repeat: repeat-x;
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffffebcf', endColorstr='#ffffffff', GradientType=0);
}
#nav.wvcsd .navbar .nav > li > a:hover .icon-down-arrow,
#header.wvcsd .navbar .nav > li > a:hover .icon-down-arrow,
#nav.wvcsd .navbar .nav > li > a.active-trail .icon-down-arrow,
#header.wvcsd .navbar .nav > li > a.active-trail .icon-down-arrow {
  background-position: left bottom;
}
#nav.wvcsd .navbar .nav > li > a:focus,
#header.wvcsd .navbar .nav > li > a:focus {
  color: #ffffff;
}
#nav.wvcsd .navbar .nav > li > a:focus:hover,
#header.wvcsd .navbar .nav > li > a:focus:hover {
  color: #ff6600;
  text-shadow: none;
}
#nav.wvcsd .navbar .nav > li:first-child > a,
#header.wvcsd .navbar .nav > li:first-child > a {
  border-left: 1px solid #fed190;
}
#nav.wvcsd .navbar .nav > .active > a,
#header.wvcsd .navbar .nav > .active > a,
#nav.wvcsd .navbar .nav > .active-trail > a,
#header.wvcsd .navbar .nav > .active-trail > a {
  box-shadow: none;
  color: #ff6600;
  text-shadow: none;
  background-color: #fff3e2;
  background-image: -moz-linear-gradient(top, #ffebcf, #ffffff);
  background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#ffebcf), to(#ffffff));
  background-image: -webkit-linear-gradient(top, #ffebcf, #ffffff);
  background-image: -o-linear-gradient(top, #ffebcf, #ffffff);
  background-image: linear-gradient(to bottom, #ffebcf, #ffffff);
  background-repeat: repeat-x;
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffffebcf', endColorstr='#ffffffff', GradientType=0);
  filter: -;
}
#nav.wvcsd ul.nav > li.dropdown,
#header.wvcsd ul.nav > li.dropdown {
  background: none;
  font-family: 'Gill Sans W01 Book', Arial, sans-serif;
}
#nav.wvcsd .navbar .nav li.dropdown.open > .dropdown-toggle,
#header.wvcsd .navbar .nav li.dropdown.open > .dropdown-toggle,
#nav.wvcsd .navbar .nav li.dropdown.active > .dropdown-toggle,
#header.wvcsd .navbar .nav li.dropdown.active > .dropdown-toggle,
#nav.wvcsd .navbar .nav li.dropdown.open.active > .dropdown-toggle,
#header.wvcsd .navbar .nav li.dropdown.open.active > .dropdown-toggle {
  z-index: 1001;
  position: relative;
  color: #ff6600;
  text-shadow: none;
  background-color: #fff3e2;
  background-image: -moz-linear-gradient(top, #ffebcf, #ffffff);
  background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#ffebcf), to(#ffffff));
  background-image: -webkit-linear-gradient(top, #ffebcf, #ffffff);
  background-image: -o-linear-gradient(top, #ffebcf, #ffffff);
  background-image: linear-gradient(to bottom, #ffebcf, #ffffff);
  background-repeat: repeat-x;
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffffebcf', endColorstr='#ffffffff', GradientType=0);
}
#nav.wvcsd .navbar .nav li.dropdown.open > .dropdown-toggle .icon-down-arrow,
#header.wvcsd .navbar .nav li.dropdown.open > .dropdown-toggle .icon-down-arrow,
#nav.wvcsd .navbar .nav li.dropdown.active > .dropdown-toggle .icon-down-arrow,
#header.wvcsd .navbar .nav li.dropdown.active > .dropdown-toggle .icon-down-arrow,
#nav.wvcsd .navbar .nav li.dropdown.open.active > .dropdown-toggle .icon-down-arrow,
#header.wvcsd .navbar .nav li.dropdown.open.active > .dropdown-toggle .icon-down-arrow {
  background-position: left bottom;
}
.ie8 #nav.wvcsd .navbar .nav li.dropdown.active > .dropdown-toggle,
.ie8 #header.wvcsd .navbar .nav li.dropdown.active > .dropdown-toggle {
  filter: -;
}
#nav.wvcsd .navbar .nav > .active > a,
#header.wvcsd .navbar .nav > .active > a,
#nav.wvcsd .navbar .nav > .active > a:hover,
#header.wvcsd .navbar .nav > .active > a:hover,
#nav.wvcsd .navbar .nav > .active > a:focus,
#header.wvcsd .navbar .nav > .active > a:focus {
  box-shadow: none;
}
#nav.wvcsd .navbar .nav > .active > a:hover,
#header.wvcsd .navbar .nav > .active > a:hover {
  border-right: 1px solid rgba(255, 255, 255, 0.75) !important;
}
#nav.wvcsd .navbar .nav > li:first-child.active > a:hover,
#header.wvcsd .navbar .nav > li:first-child.active > a:hover {
  border-left: 1px solid rgba(255, 255, 255, 0.75) !important;
}
#nav.wvcsd .navbar .nav .dropdown-menu,
#header.wvcsd .navbar .nav .dropdown-menu {
  padding: 20px;
  margin: 0;
  -webkit-border-radius: 0;
  -moz-border-radius: 0;
  border-radius: 0;
  border: none;
  border-top: none;
  -webkit-box-shadow: 5px 0 9px rgba(0, 0, 0, 0.35);
  -moz-box-shadow: 5px 0 9px rgba(0, 0, 0, 0.35);
  box-shadow: 5px 0 9px rgba(0, 0, 0, 0.35);
  /* IE 8 support for drop shadow */
  -ms-filter: "progid:DXImageTransform.Microsoft.Shadow(Strength=4, Direction=135, Color='#000000')";
}
#nav.wvcsd .navbar .nav .dropdown-menu > li,
#header.wvcsd .navbar .nav .dropdown-menu > li {
  padding: 0 0 10px 0;
  font-size: 15px;
  list-style-image: none;
  display: block;
}
#nav.wvcsd .navbar .nav .dropdown-menu > li > a,
#header.wvcsd .navbar .nav .dropdown-menu > li > a {
  padding: 0;
  color: #2d78ab;
  display: inline;
}
#nav.wvcsd .navbar .nav .dropdown-menu > li > a:hover,
#header.wvcsd .navbar .nav .dropdown-menu > li > a:hover {
  text-decoration: underline;
}
#nav.wvcsd .navbar .nav .dropdown-menu > .dropdown-title,
#header.wvcsd .navbar .nav .dropdown-menu > .dropdown-title {
  font-size: 17px;
  font-family: 'Gill Sans W01 Bold', Arial, sans-serif;
  color: #2d78ab;
}
#nav.wvcsd .navbar .nav .dropdown-menu .dropdown-image,
#header.wvcsd .navbar .nav .dropdown-menu .dropdown-image {
  position: absolute;
  right: 0;
  bottom: 0;
  padding-bottom: 0;
}
#nav.wvcsd .navbar .nav .dropdown-menu .dropdown-image a,
#header.wvcsd .navbar .nav .dropdown-menu .dropdown-image a {
  overflow: hidden;
  text-indent: -999px;
  display: block;
}
#nav.wvcsd .navbar .nav .dropdown-menu .dropdown-image a:hover,
#header.wvcsd .navbar .nav .dropdown-menu .dropdown-image a:hover {
  background: #f60 !important;
  display: block !important;
  opacity: 0;
  filter: alpha(opacity=0);
}
#nav.wvcsd .navbar ul li.expanded,
#header.wvcsd .navbar ul li.expanded {
  list-style-image: none;
  list-style-type: none;
}
#nav.wvcsd .get-involved-lists ul.unstyled li,
#header.wvcsd .get-involved-lists ul.unstyled li {
  padding: 0;
  font-size: 14px;
}
#nav.wvcsd .dropdown-menu > li > a:hover,
#header.wvcsd .dropdown-menu > li > a:hover,
#nav.wvcsd .dropdown-menu > li > a:focus,
#header.wvcsd .dropdown-menu > li > a:focus,
#nav.wvcsd .dropdown-submenu:hover > a,
#header.wvcsd .dropdown-submenu:hover > a,
#nav.wvcsd .dropdown-submenu:focus > a,
#header.wvcsd .dropdown-submenu:focus > a {
  background: none;
  color: inherit;
}
#nav.wvcsd .dropdown-menu > .active > a,
#header.wvcsd .dropdown-menu > .active > a,
#nav.wvcsd .dropdown-menu > .active > a:hover,
#header.wvcsd .dropdown-menu > .active > a:hover,
#nav.wvcsd .dropdown-menu > .active > a:focus,
#header.wvcsd .dropdown-menu > .active > a:focus {
  background: none;
}
#nav.wvcsd .navbar .nav > li > .dropdown-menu:before,
#header.wvcsd .navbar .nav > li > .dropdown-menu:before,
#nav.wvcsd .navbar .nav > li > .dropdown-menu:after,
#header.wvcsd .navbar .nav > li > .dropdown-menu:after {
  display: none;
}
#nav.wvcsd .navbar .nav,
#header.wvcsd .navbar .nav {
  /* Our Impact */
  /* Sponsor A Child */
  /* Ways to Give */
  /* Get Involved */
  /* About Us */
  /* My World Vision */
}
#nav.wvcsd .navbar .nav .menu-mlid-2283,
#header.wvcsd .navbar .nav .menu-mlid-2283 {
  width: 144px;
}
#nav.wvcsd .navbar .nav .menu-mlid-2283 .dropdown-menu,
#header.wvcsd .navbar .nav .menu-mlid-2283 .dropdown-menu {
  width: 284px;
  min-height: 290px;
  background: #ffffff url(../img/drop_bkgd_our_impact_v1.jpg) right bottom no-repeat;
}
#nav.wvcsd .navbar .nav .menu-mlid-2283 .menu-mlid-2525,
#header.wvcsd .navbar .nav .menu-mlid-2283 .menu-mlid-2525 {
  position: absolute;
  left: 190px;
  top: 50px;
}
#nav.wvcsd .navbar .nav .menu-mlid-2283 .menu-mlid-2539,
#header.wvcsd .navbar .nav .menu-mlid-2283 .menu-mlid-2539 {
  position: absolute;
  left: 190px;
  top: 80px;
}
#nav.wvcsd .navbar .nav .menu-mlid-2283 .dropdown-image a,
#header.wvcsd .navbar .nav .menu-mlid-2283 .dropdown-image a {
  width: 184px;
  height: 125px;
}
#nav.wvcsd .navbar .nav .menu-mlid-2640,
#header.wvcsd .navbar .nav .menu-mlid-2640 {
  width: 180px;
}
#nav.wvcsd .navbar .nav .menu-mlid-2640 .dropdown-menu,
#header.wvcsd .navbar .nav .menu-mlid-2640 .dropdown-menu {
  width: 290px;
  min-height: 170px;
  background: #ffffff url(../img/drop_bkgd_sponsor_child_v1.jpg) right bottom no-repeat;
}
#nav.wvcsd .navbar .nav .menu-mlid-2640 .dropdown-image a,
#header.wvcsd .navbar .nav .menu-mlid-2640 .dropdown-image a {
  width: 330px;
  height: 125px;
}
#nav.wvcsd .navbar .nav .menu-mlid-2369,
#header.wvcsd .navbar .nav .menu-mlid-2369 {
  width: 150px;
}
#nav.wvcsd .navbar .nav .menu-mlid-2369 .dropdown-menu,
#header.wvcsd .navbar .nav .menu-mlid-2369 .dropdown-menu {
  width: 392px;
  min-height: 170px;
  background: #ffffff url(../img/drop_bkgd_ways_to_give_v1.jpg) right bottom no-repeat;
}
#nav.wvcsd .navbar .nav .menu-mlid-2369 .dropdown-menu > li,
#header.wvcsd .navbar .nav .menu-mlid-2369 .dropdown-menu > li {
  float: left;
  width: 170px;
}
#nav.wvcsd .navbar .nav .menu-mlid-2369 .dropdown-menu > .dropdown-title,
#header.wvcsd .navbar .nav .menu-mlid-2369 .dropdown-menu > .dropdown-title {
  width: 100%;
}
#nav.wvcsd .navbar .nav .menu-mlid-2369 .dropdown-image,
#header.wvcsd .navbar .nav .menu-mlid-2369 .dropdown-image {
  right: -38px;
}
#nav.wvcsd .navbar .nav .menu-mlid-2369 .dropdown-image a,
#header.wvcsd .navbar .nav .menu-mlid-2369 .dropdown-image a {
  width: 130px;
  height: 140px;
}
#nav.wvcsd .navbar .nav .menu-mlid-2365,
#header.wvcsd .navbar .nav .menu-mlid-2365 {
  width: 156px;
}
#nav.wvcsd .navbar .nav .menu-mlid-2365 .dropdown-menu,
#header.wvcsd .navbar .nav .menu-mlid-2365 .dropdown-menu {
  width: 242px;
  padding-bottom: 150px;
  background: #ffffff url(../img/drop_bkgd_get_involved_v2.jpg) right bottom no-repeat;
}
#nav.wvcsd .navbar .nav .menu-mlid-2365 .dropdown-image a,
#header.wvcsd .navbar .nav .menu-mlid-2365 .dropdown-image a {
  width: 280px;
  height: 150px;
}
#nav.wvcsd .navbar .nav .menu-mlid-2281,
#header.wvcsd .navbar .nav .menu-mlid-2281 {
  width: 126px;
}
#nav.wvcsd .navbar .nav .menu-mlid-2281 .dropdown-menu,
#header.wvcsd .navbar .nav .menu-mlid-2281 .dropdown-menu {
  width: 393px;
  margin-left: -307px;
  min-height: 190px;
  background: #ffffff url(../img/drop_bkgd_about_us_v2.jpg) right bottom no-repeat;
}
#nav.wvcsd .navbar .nav .menu-mlid-2281 .dropdown-menu > li,
#header.wvcsd .navbar .nav .menu-mlid-2281 .dropdown-menu > li {
  float: left;
  width: 170px;
}
#nav.wvcsd .navbar .nav .menu-mlid-2281 .dropdown-menu > .dropdown-title,
#header.wvcsd .navbar .nav .menu-mlid-2281 .dropdown-menu > .dropdown-title {
  width: 100%;
}
#nav.wvcsd .navbar .nav .menu-mlid-2281 .dropdown-image,
#header.wvcsd .navbar .nav .menu-mlid-2281 .dropdown-image {
  right: -78px;
}
#nav.wvcsd .navbar .nav .menu-mlid-2281 .dropdown-image a,
#header.wvcsd .navbar .nav .menu-mlid-2281 .dropdown-image a {
  width: 85px;
  height: 172px;
}
#nav.wvcsd .navbar .nav .menu-mlid-2367,
#header.wvcsd .navbar .nav .menu-mlid-2367 {
  width: 184px;
}
#nav.wvcsd .navbar .nav .menu-mlid-2367 .dropdown-menu,
#header.wvcsd .navbar .nav .menu-mlid-2367 .dropdown-menu {
  width: 271px;
  padding-bottom: 164px;
  margin-left: -127px;
  background: #ffffff url(../img/drop_bkgd_my_wv_v1.jpg) right bottom no-repeat;
}
#nav.wvcsd .navbar .nav .menu-mlid-2367 .dropdown-image a,
#header.wvcsd .navbar .nav .menu-mlid-2367 .dropdown-image a {
  width: 180px;
  height: 170px;
}
#nav.wvcsd .navbar .nav li.dropdown.active > .dropdown-toggle,
#header.wvcsd .navbar .nav li.dropdown.active > .dropdown-toggle,
#nav.wvcsd .navbar .nav > .active-trail > a.active-trail,
#header.wvcsd .navbar .nav > .active-trail > a.active-trail {
  background-color: #e55c00;
  color: #ffffff;
  text-shadow: 2px 0 2px #ff6600;
  background-image: none;
}
#nav.wvcsd .navbar .nav li.dropdown.active > .dropdown-toggle .icon-down-arrow,
#header.wvcsd .navbar .nav li.dropdown.active > .dropdown-toggle .icon-down-arrow,
#nav.wvcsd .navbar .nav > .active-trail > a.active-trail .icon-down-arrow,
#header.wvcsd .navbar .nav > .active-trail > a.active-trail .icon-down-arrow {
  background-position: 0 0;
}
/*
// Global Nav Alerts
// ====================
*/
#block-disaster-alerts.eoy {
  background: #006599;
}
#block-disaster-alerts.eoy .disaster-alert .alert-call-to-action h2 {
  color: white;
}
#block-disaster-alerts.eoy .disaster-alert .alert-call-to-action .disaster-alert-learn-more-link a {
  color: #fa802d;
}
#block-disaster-alerts.eoy .disaster-alert .disaster-alert-donate-widget .donations-submit-wrapper-left {
  background-image: url('../img/alert-button-rounded-orange.png');
}
#block-disaster-alerts.eoy .disaster-alert .disaster-alert-donate-widget .donations-submit-wrapper-left .donations-submit-wrapper-right {
  background-image: url('../img/alert-button-rounded-orange.png');
}
#block-disaster-alerts.eoy .disaster-alert .disaster-alert-donate-widget .donations-submit-wrapper-left .donations-submit-wrapper-right .donations-submit-wrapper {
  background-color: #f36f18;
}
#block-disaster-alerts.eoy .disaster-alert .disaster-alert-donate-widget .donations-submit-wrapper-left .donations-submit-wrapper-right .donations-submit-wrapper:hover {
  background-color: #f69352;
}
#block-disaster-alerts {
  background: #000;
  color: #fff;
  position: relative;
}
#block-disaster-alerts .external-link {
  position: relative;
  top: 2px;
  background-position: -21px -36px;
}
#block-disaster-alerts .container {
  position: relative;
}
#block-disaster-alerts .disaster-alert-wrapper {
  border-top: 1px solid #efefef;
}
#block-disaster-alerts .disaster-alert-wrapper:first-child {
  border-top: none;
}
#block-disaster-alerts .disaster-alert {
  margin-right: auto;
  margin-left: auto;
  *zoom: 1;
  width: 940px;
  padding: 12px 0;
}
#block-disaster-alerts .disaster-alert:before,
#block-disaster-alerts .disaster-alert:after {
  display: table;
  content: "";
  line-height: 0;
}
#block-disaster-alerts .disaster-alert:after {
  clear: both;
}
#block-disaster-alerts .disaster-alert .alert-call-to-action {
  display: inline;
  float: left;
  width: 515px;
  padding-left: 100px;
  background: url(../img/alert-general.png) 8px 0 no-repeat;
  min-height: 78px;
}
#block-disaster-alerts .disaster-alert .alert-call-to-action.none {
  width: 615px;
  padding-left: 0px;
  background: none;
}
#block-disaster-alerts .disaster-alert .alert-call-to-action.eoy {
  background-image: url(../img/alert-clock.png);
}
#block-disaster-alerts .disaster-alert .alert-call-to-action.tornado {
  background-image: url(../img/alert-tornado.png);
}
#block-disaster-alerts .disaster-alert .alert-call-to-action.flood {
  background-image: url(../img/alert-flood.png);
}
#block-disaster-alerts .disaster-alert .alert-call-to-action.hurricane-tsunami {
  background-image: url(../img/alert-hurricane-tsunami.png);
}
#block-disaster-alerts .disaster-alert .alert-call-to-action.earthquake {
  background-image: url(../img/alert-earthquake.png);
}
#block-disaster-alerts .disaster-alert .alert-call-to-action.famine-drought {
  background-image: url(../img/alert-famine-drought.png);
}
#block-disaster-alerts .disaster-alert .alert-call-to-action h2 {
  color: #ff0000;
  font-size: 18px;
  text-transform: uppercase;
  font-family: 'Gill Sans W01 Bold', Arial, sans-serif;
  margin: 0;
  line-height: 1.2em;
  text-align: left;
}
#block-disaster-alerts .disaster-alert .alert-call-to-action p {
  margin: 0;
  font-size: 15px;
}
#block-disaster-alerts .disaster-alert .alert-call-to-action .disaster-alert-learn-more-link a {
  color: #ff0000;
  font-family: 'Gill Sans W01 Bold', Arial, sans-serif;
}
#block-disaster-alerts .disaster-alert .disaster-alert-donate-widget {
  width: 333px;
  position: absolute;
  top: 50%;
  right: 0;
  margin-top: -20px;
}
#block-disaster-alerts .disaster-alert .disaster-alert-donate-widget form {
  margin-bottom: 0;
}
#block-disaster-alerts .disaster-alert .disaster-alert-donate-widget #clientsidevalidation-wvcsd-alert-donate-form-errors {
  margin: 0;
}
#block-disaster-alerts .disaster-alert .disaster-alert-donate-widget .form-item {
  margin: 0;
}
#block-disaster-alerts .disaster-alert .disaster-alert-donate-widget .form-item-xxwvotheramt {
  width: 58px;
  padding: 4px 8px 4px 16px;
  display: inline;
  float: left;
  margin-bottom: 0;
  margin-left: 70px;
  -webkit-border-radius: 0;
  -moz-border-radius: 0;
  border-radius: 0;
  border: 2px solid #8a8076;
  background: #ffffff url(../img/alert-dollar.png) 4px 9px no-repeat;
}
#block-disaster-alerts .disaster-alert .disaster-alert-donate-widget .form-item-xxwvotheramt .form-text {
  font-family: 'Gill Sans W01 Book', Arial, sans-serif;
  width: 58px;
  font-size: 16px;
  line-height: 26px;
  height: 26px;
  border: none;
  background: none;
  margin: 0;
  padding: 0;
  -webkit-box-shadow: 0 0 0;
  -moz-box-shadow: 0 0 0;
  box-shadow: 0 0 0;
  outline: none;
}
#block-disaster-alerts .disaster-alert .disaster-alert-donate-widget .form-item-xxwvotheramt .form-text:focus {
  border: none;
  -webkit-box-shadow: 0 0 0;
  -moz-box-shadow: 0 0 0;
  box-shadow: 0 0 0;
}
#block-disaster-alerts .disaster-alert .disaster-alert-donate-widget .donations-submit-wrapper-left {
  display: inline;
  float: right;
  margin-left: 15px;
  padding-left: 16px;
  background: url(../img/alert-button-rounded.png) 0 0 no-repeat;
  cursor: pointer;
}
#block-disaster-alerts .disaster-alert .disaster-alert-donate-widget .donations-submit-wrapper-left .donations-submit-wrapper-right {
  padding-right: 16px;
  background: url(../img/alert-button-rounded.png) right 0 no-repeat;
}
#block-disaster-alerts .disaster-alert .disaster-alert-donate-widget .donations-submit-wrapper-left .donations-submit-wrapper-right .donations-submit-wrapper {
  background: #ff0000;
}
#block-disaster-alerts .disaster-alert .disaster-alert-donate-widget .donations-submit-wrapper-left .donations-submit-wrapper-right .donations-submit-wrapper .form-submit {
  background: none !important;
  color: #fff;
  border: none;
  -webkit-border-radius: 0 !important;
  -moz-border-radius: 0 !important;
  border-radius: 0 !important;
  font-family: 'Gill Sans W01 Bold', Arial, sans-serif;
  font-size: 15px;
  text-shadow: 2px 0 2px rgba(0, 0, 0, 0.75);
  padding: 9px 4px;
  height: 37px;
  margin: 0;
  text-transform: uppercase;
}
#block-disaster-alerts .disaster-alert .disaster-alert-donate-widget .donations-submit-wrapper-left:hover {
  background-position: 0 -37px;
}
#block-disaster-alerts .disaster-alert .disaster-alert-donate-widget .donations-submit-wrapper-left:hover .donations-submit-wrapper-right {
  background-position: right -37px;
}
#block-disaster-alerts .disaster-alert .disaster-alert-donate-widget .donations-submit-wrapper-left:hover .donations-submit-wrapper {
  background: #ff4040;
}
#block-disaster-alerts #alert-modal p {
  font-size: 17px;
  line-height: 20px;
}
.ie7 #block-disaster-alerts .disaster-alert .alert-call-to-action p {
  font-size: 14px;
}
#header.wvcsd {
  background: #fff !important;
  filter: none;
}
.hasPlaceholder {
  color: #777;
}
.ie7 #nav.wvcsd .navbar .nav li.dropdown.active > .dropdown-toggle,
.ie9 #nav.wvcsd .navbar .nav li.dropdown.active > .dropdown-toggle {
  filter: -;
}
.ie7 #nav.wvcsd .navbar .nav li.dropdown.active.open > .dropdown-toggle,
.ie8 #nav.wvcsd .navbar .nav li.dropdown.active.open > .dropdown-toggle,
.ie9 #nav.wvcsd .navbar .nav li.dropdown.active.open > .dropdown-toggle {
  background-color: #fff3e2;
  background-image: -moz-linear-gradient(top, #ffebcf, #ffffff);
  background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#ffebcf), to(#ffffff));
  background-image: -webkit-linear-gradient(top, #ffebcf, #ffffff);
  background-image: -o-linear-gradient(top, #ffebcf, #ffffff);
  background-image: linear-gradient(to bottom, #ffebcf, #ffffff);
  background-repeat: repeat-x;
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffffebcf', endColorstr='#ffffffff', GradientType=0);
}
.ie7 #nav.wvcsd .navbar .nav .dropdown-menu > li {
  list-style: none;
}
.ie7 #nav.wvcsd .navbar .nav > li > a {
  height: 20px;
}
.ie7 #nav.wvcsd .dropdown-menu {
  top: 50px;
}
.ie7 #nav.wvcsd .navbar .nav .dropdown-menu > .dropdown-title a,
.ie8 #nav.wvcsd .navbar .nav .dropdown-menu > .dropdown-title a {
  font-weight: bold;
}
.ie7 #header.wvcsd .interact .links {
  clear: right;
  width: 350px;
}
.ie7 #header.wvcsd .interact .links ul li {
  float: left;
  display: block;
}
.ie7 #header.wvcsd .interact .links .text {
  float: left;
  display: block;
}
.ie7 #header.wvcsd .interact .links .text li:first-child {
  padding-left: 0;
}
.ie7 #header.wvcsd .interact .links .text .icon-shopping-cart {
  float: left;
  display: block;
}
.ie7 #header.wvcsd .interact .links .social {
  float: right;
  display: block;
}
#nav.wvcsd .navbar .nav .menu-mlid-2367 .dropdown-menu {
  background: #ffffff url(../img/drop_bkgd_my_wv_v3.jpg) right bottom no-repeat;
}
.modal-backdrop {
  position: fixed;
  top: 0;
  right: 0;
  bottom: 0;
  left: 0;
  z-index: 1040;
  background-color: #000000;
}
.modal-backdrop.fade {
  opacity: 0;
}
.fade.in {
  opacity: 1;
  filter: alpha(opacity=100);
}
/*
.modal-backdrop,
.modal-backdrop.fade.in {
  .opacity(80);
}
*/
.fade {
  opacity: 0;
  -webkit-transition: opacity .15s linear;
  -moz-transition: opacity .15s linear;
  -o-transition: opacity .15s linear;
  transition: opacity .15s linear;
}
.modal {
  position: fixed;
  top: 10%;
  left: 50%;
  z-index: 1050;
  width: 560px;
  margin-left: -280px;
  background-color: #ffffff;
  border: 1px solid #999;
  border: 1px solid rgba(0, 0, 0, 0.3);
  *border: 1px solid #999;
  /* IE6-7 */
  -webkit-border-radius: 6px;
  -moz-border-radius: 6px;
  border-radius: 6px;
  -webkit-box-shadow: 0 3px 7px rgba(0, 0, 0, 0.3);
  -moz-box-shadow: 0 3px 7px rgba(0, 0, 0, 0.3);
  box-shadow: 0 3px 7px rgba(0, 0, 0, 0.3);
  -webkit-background-clip: padding-box;
  -moz-background-clip: padding-box;
  background-clip: padding-box;
  outline: none;
}
.modal.fade {
  -webkit-transition: opacity .3s linear, top .3s ease-out;
  -moz-transition: opacity .3s linear, top .3s ease-out;
  -o-transition: opacity .3s linear, top .3s ease-out;
  transition: opacity .3s linear, top .3s ease-out;
  top: -25%;
}
.modal.fade.in {
  top: 10%;
}
.modal-header {
  padding: 9px 15px;
  border-bottom: 1px solid #eee;
}
.modal-header .close {
  margin-top: 2px;
}
.modal-header h3 {
  margin: 0;
  line-height: 30px;
}
.modal-body {
  position: relative;
  overflow-y: auto;
  max-height: 400px;
  padding: 15px;
}
.modal-form {
  margin-bottom: 0;
}
.modal-footer {
  padding: 14px 15px 15px;
  margin-bottom: 0;
  text-align: right;
  background-color: #f5f5f5;
  border-top: 1px solid #ddd;
  -webkit-border-radius: 0 0 6px 6px;
  -moz-border-radius: 0 0 6px 6px;
  border-radius: 0 0 6px 6px;
  -webkit-box-shadow: inset 0 1px 0 #ffffff;
  -moz-box-shadow: inset 0 1px 0 #ffffff;
  box-shadow: inset 0 1px 0 #ffffff;
  *zoom: 1;
}
.modal-footer:before,
.modal-footer:after {
  display: table;
  content: "";
  line-height: 0;
}
.modal-footer:after {
  clear: both;
}
.modal-footer .btn + .btn {
  margin-left: 5px;
  margin-bottom: 0;
}
.modal-footer .btn-group .btn + .btn {
  margin-left: -1px;
}
.modal-footer .btn-block + .btn-block {
  margin-left: 0;
}
.hide {
  display: none;
}
.modal .btn {
  text-decoration: none;
  -webkit-border-radius: 20px;
  -moz-border-radius: 20px;
  border-radius: 20px;
  font-size: 16px;
  line-height: 22px;
  padding: 9px 15px;
  text-transform: uppercase;
  font-family: 'Gill Sans W01 Medium', Arial, sans-serif;
  font-weight: normal;
  display: inline-block;
  margin-bottom: 0;
  color: #333;
  text-align: center;
  text-shadow: 0 1px 1px rgba(255, 255, 255, 0.75);
  vertical-align: middle;
  cursor: pointer;
  background-color: #f5f5f5;
  background-image: linear-gradient(to bottom, #ffffff, #e6e6e6);
  background-repeat: repeat-x;
  border: 1px solid #ccc;
  border-color: rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.25);
  border-bottom-color: #b3b3b3;
  filter: progid:DXImageTransform.Microsoft.gradient(enabled=false);
  -webkit-box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px rgba(0, 0, 0, 0.05);
  -moz-box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px rgba(0, 0, 0, 0.05);
  box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px rgba(0, 0, 0, 0.05);
}
.close {
  float: right;
  font-size: 20px;
  font-weight: bold;
  line-height: 20px;
  color: #000;
  text-shadow: 0 1px 0 #fff;
  opacity: .2;
  filter: alpha(opacity=20);
  cursor: pointer;
}

/*
// World Vision Core Site Development
// WVCSD Header Related Rules
// v1.0
// ==========================================
*/
.clearfix {
  *zoom: 1;
}
.clearfix:before,
.clearfix:after {
  display: table;
  content: "";
  line-height: 0;
}
.clearfix:after {
  clear: both;
}
.hide-text {
  font: 0/0 a;
  color: transparent;
  text-shadow: none;
  background-color: transparent;
  border: 0;
}
.input-block-level {
  display: block;
  width: 100%;
  min-height: 30px;
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
}
/*
// Color Variables & Helper Classes
// ==================================
*/
.ir {
  overflow: hidden;
  text-indent: -999px;
}
.regular-text {
  font-family: 'Gill Sans W01 Book', Arial, sans-serif;
}
.light-text {
  font-family: 'Gill Sans W01 Light', Arial, sans-serif;
}
.heavy-text {
  font-family: 'Gill Sans W01 Bold', Arial, sans-serif;
}
body.wvcsd {
  background: #efefef;
  font-family: 'Gill Sans W01 Book', Arial, sans-serif;
  margin: 0;
}
/*
// External links.
// ======
*/
.external-link {
  display: inline-block;
  background: url(../img/ext_link.png) -21px -18px no-repeat;
  width: 12px;
  height: 18px;
  text-indent: -999em;
  padding-left: 5px;
}
.container {
  position: relative;
  width: 940px;
  margin: 0 auto;
}
/*
// Header
// ======
*/
#header.wvcsd {
  background: #fff !important;
  height: 60px !important;
  padding: 15px 0 25px;
}
#header.wvcsd .brand a {
  display: inline-block;
  float: left;
}
#header.wvcsd .logo {
  width: 149px;
  height: 58px;
  background: url(../img/logo_world_vision_v2.png) 0 0 no-repeat;
  overflow: hidden;
  text-indent: -999px;
}
#header.wvcsd .logo:hover {
  background-position: left bottom;
}
#header.wvcsd .tagline {
  position: relative;
  top: 30px;
  left: 20px;
  font-size: 18px;
  font-family: 'Gill Sans W01 Light', Arial, sans-serif;
  color: #000000;
}
#header.wvcsd .tagline:hover {
  text-decoration: none;
}
#header.wvcsd .interact div {
  float: right;
}
#header.wvcsd .interact form {
  margin-bottom: 0;
}
#header.wvcsd .interact input[type="text"] {
  margin-right: 4px;
  -webkit-box-shadow: 0 0 5px rgba(199, 199, 199, 0.35);
  -moz-box-shadow: 0 0 5px rgba(199, 199, 199, 0.35);
  box-shadow: 0 0 5px rgba(199, 199, 199, 0.35);
}
#header.wvcsd .interact i:hover {
  background-position: left bottom;
}
#header.wvcsd .interact .icon-search {
  background: url(../img/icon_magnifying_glass_v1.png) 0 0 no-repeat;
  width: 28px;
  height: 28px;
  position: relative;
  top: -10px;
  cursor: pointer;
  border: none;
}
#header.wvcsd .interact .icon-search:hover {
  background-position: left bottom;
}
#header.wvcsd .interact .icon-shopping-cart {
  background: url(../img/icon_shopping_cart_v1.png) 0 0 no-repeat;
  width: 20px;
  height: 15px;
  margin-right: 5px;
  margin-top: -1px;
}
#header.wvcsd .interact .text:hover > .icon-shopping-cart {
  background-position: left bottom;
}
#header.wvcsd .interact ul.inline {
  float: left;
}
#header.wvcsd .interact .links {
  text-transform: uppercase;
  margin-right: -6px;
  margin-top: 2px;
}
#header.wvcsd .interact .links .text {
  padding-right: 10px;
}
#header.wvcsd .interact .links .text a {
  color: #000000;
  font-size: 13px;
  padding-right: 0;
}
#header.wvcsd .interact .links .text li {
  border-right: 1px solid #efefef;
  padding: 0 10px;
}
#header.wvcsd .interact .social li {
  padding: 0 6px 0 0 !important;
}
#header.wvcsd .interact .social li.icon {
  overflow: hidden;
  text-indent: -999px;
}
#header.wvcsd .interact .social li.icon a {
  width: 19px;
  height: 19px;
  display: block;
  background: url(../img/icons_social_19_v2.png) no-repeat;
}
#header.wvcsd .interact .social li.icon .icon_fb {
  background-position: 0 0;
}
#header.wvcsd .interact .social li.icon .icon_fb:hover {
  background-position: 0 -19px;
}
#header.wvcsd .interact .social li.icon .icon_tw {
  background-position: -19px 0;
}
#header.wvcsd .interact .social li.icon .icon_tw:hover {
  background-position: -19px -19px;
}
#header.wvcsd .interact .social li.icon .icon_yt {
  background-position: -38px 0;
}
#header.wvcsd .interact .social li.icon .icon_yt:hover {
  background-position: -38px -19px;
}
#header.wvcsd .interact .social .no_icon_blog {
  overflow: hidden;
  text-indent: -999px;
  display: block;
  width: 46px;
  height: 19px;
  padding-right: 0;
  background: url(../img/icon_blog_header_v2.png) no-repeat;
}
#header.wvcsd .interact .social .no_icon_blog:hover {
  background-position: 0 -19px;
}
/*
// Global Nav Bar Rules
// ====================
*/
#nav.wvcsd,
#header.wvcsd {
  height: 50px;
  background-color: #fe8b16;
  background-image: -moz-linear-gradient(top, #fda425, #ff6600);
  background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#fda425), to(#ff6600));
  background-image: -webkit-linear-gradient(top, #fda425, #ff6600);
  background-image: -o-linear-gradient(top, #fda425, #ff6600);
  background-image: linear-gradient(to bottom, #fda425, #ff6600);
  background-repeat: repeat-x;
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#fffda425', endColorstr='#ffff6600', GradientType=0);
  /*!
 * Bootstrap v2.3.2
 *
 * Copyright 2012 Twitter, Inc
 * Licensed under the Apache License v2.0
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Designed and built with all the love in the world @twitter by @mdo and @fat.
 */
  /* Allow for input prepend/append in search forms */
  /* move down carets for tabs */
  /*
@import "../src/lib/bootstrap/less/responsive-767px-max.less";
@import "../src/lib/bootstrap/less/responsive-768px-979px.less";
@import "../src/lib/bootstrap/less/responsive-1200px-min.less";
@import "../src/lib/bootstrap/less/responsive-navbar.less";
@import "../src/lib/bootstrap/less/responsive-utilities.less";
@import "../src/lib/bootstrap/less/responsive.less";
*/
  /* White icons with optional class, or on hover/focus/active states of certain elements */
  /* The Active Link  */
  /* override uikit */
  /* Dropdown */
}
#nav.wvcsd .accordion,
#header.wvcsd .accordion {
  margin-bottom: 20px;
}
#nav.wvcsd .accordion-group,
#header.wvcsd .accordion-group {
  margin-bottom: 2px;
  border: 1px solid #e5e5e5;
  -webkit-border-radius: 4px;
  -moz-border-radius: 4px;
  border-radius: 4px;
}
#nav.wvcsd .accordion-heading,
#header.wvcsd .accordion-heading {
  border-bottom: 0;
}
#nav.wvcsd .accordion-heading .accordion-toggle,
#header.wvcsd .accordion-heading .accordion-toggle {
  display: block;
  padding: 8px 15px;
}
#nav.wvcsd .accordion-toggle,
#header.wvcsd .accordion-toggle {
  cursor: pointer;
}
#nav.wvcsd .accordion-inner,
#header.wvcsd .accordion-inner {
  padding: 9px 15px;
  border-top: 1px solid #e5e5e5;
}
#nav.wvcsd .alert,
#header.wvcsd .alert {
  padding: 8px 35px 8px 14px;
  margin-bottom: 20px;
  text-shadow: 0 1px 0 rgba(255, 255, 255, 0.5);
  background-color: #fcf8e3;
  border: 1px solid #fbeed5;
  -webkit-border-radius: 4px;
  -moz-border-radius: 4px;
  border-radius: 4px;
}
#nav.wvcsd .alert,
#header.wvcsd .alert,
#nav.wvcsd .alert h4,
#header.wvcsd .alert h4 {
  color: #c09853;
}
#nav.wvcsd .alert h4,
#header.wvcsd .alert h4 {
  margin: 0;
}
#nav.wvcsd .alert .close,
#header.wvcsd .alert .close {
  position: relative;
  top: -2px;
  right: -21px;
  line-height: 20px;
}
#nav.wvcsd .alert-success,
#header.wvcsd .alert-success {
  background-color: #dff0d8;
  border-color: #d6e9c6;
  color: #468847;
}
#nav.wvcsd .alert-success h4,
#header.wvcsd .alert-success h4 {
  color: #468847;
}
#nav.wvcsd .alert-danger,
#header.wvcsd .alert-danger,
#nav.wvcsd .alert-error,
#header.wvcsd .alert-error {
  background-color: #f2dede;
  border-color: #eed3d7;
  color: #b94a48;
}
#nav.wvcsd .alert-danger h4,
#header.wvcsd .alert-danger h4,
#nav.wvcsd .alert-error h4,
#header.wvcsd .alert-error h4 {
  color: #b94a48;
}
#nav.wvcsd .alert-info,
#header.wvcsd .alert-info {
  background-color: #d9edf7;
  border-color: #bce8f1;
  color: #3a87ad;
}
#nav.wvcsd .alert-info h4,
#header.wvcsd .alert-info h4 {
  color: #3a87ad;
}
#nav.wvcsd .alert-block,
#header.wvcsd .alert-block {
  padding-top: 14px;
  padding-bottom: 14px;
}
#nav.wvcsd .alert-block > p,
#header.wvcsd .alert-block > p,
#nav.wvcsd .alert-block > ul,
#header.wvcsd .alert-block > ul {
  margin-bottom: 0;
}
#nav.wvcsd .alert-block p + p,
#header.wvcsd .alert-block p + p {
  margin-top: 5px;
}
#nav.wvcsd .breadcrumb,
#header.wvcsd .breadcrumb {
  padding: 8px 15px;
  margin: 0 0 20px;
  list-style: none;
  background-color: #f5f5f5;
  -webkit-border-radius: 4px;
  -moz-border-radius: 4px;
  border-radius: 4px;
}
#nav.wvcsd .breadcrumb > li,
#header.wvcsd .breadcrumb > li {
  display: inline-block;
  *display: inline;
  /* IE7 inline-block hack */
  *zoom: 1;
  text-shadow: 0 1px 0 #ffffff;
}
#nav.wvcsd .breadcrumb > li > .divider,
#header.wvcsd .breadcrumb > li > .divider {
  padding: 0 5px;
  color: #ccc;
}
#nav.wvcsd .breadcrumb > .active,
#header.wvcsd .breadcrumb > .active {
  color: #999999;
}
#nav.wvcsd .btn-group,
#header.wvcsd .btn-group {
  position: relative;
  display: inline-block;
  *display: inline;
  /* IE7 inline-block hack */
  *zoom: 1;
  font-size: 0;
  vertical-align: middle;
  white-space: nowrap;
  *margin-left: .3em;
}
#nav.wvcsd .btn-group:first-child,
#header.wvcsd .btn-group:first-child {
  *margin-left: 0;
}
#nav.wvcsd .btn-group + .btn-group,
#header.wvcsd .btn-group + .btn-group {
  margin-left: 5px;
}
#nav.wvcsd .btn-toolbar,
#header.wvcsd .btn-toolbar {
  font-size: 0;
  margin-top: 10px;
  margin-bottom: 10px;
}
#nav.wvcsd .btn-toolbar > .btn + .btn,
#header.wvcsd .btn-toolbar > .btn + .btn,
#nav.wvcsd .btn-toolbar > .btn-group + .btn,
#header.wvcsd .btn-toolbar > .btn-group + .btn,
#nav.wvcsd .btn-toolbar > .btn + .btn-group,
#header.wvcsd .btn-toolbar > .btn + .btn-group {
  margin-left: 5px;
}
#nav.wvcsd .btn-group > .btn,
#header.wvcsd .btn-group > .btn {
  position: relative;
  -webkit-border-radius: 0;
  -moz-border-radius: 0;
  border-radius: 0;
}
#nav.wvcsd .btn-group > .btn + .btn,
#header.wvcsd .btn-group > .btn + .btn {
  margin-left: -1px;
}
#nav.wvcsd .btn-group > .btn,
#header.wvcsd .btn-group > .btn,
#nav.wvcsd .btn-group > .dropdown-menu,
#header.wvcsd .btn-group > .dropdown-menu,
#nav.wvcsd .btn-group > .popover,
#header.wvcsd .btn-group > .popover {
  font-size: 14px;
}
#nav.wvcsd .btn-group > .btn-mini,
#header.wvcsd .btn-group > .btn-mini {
  font-size: 10.5px;
}
#nav.wvcsd .btn-group > .btn-small,
#header.wvcsd .btn-group > .btn-small {
  font-size: 11.9px;
}
#nav.wvcsd .btn-group > .btn-large,
#header.wvcsd .btn-group > .btn-large {
  font-size: 17.5px;
}
#nav.wvcsd .btn-group > .btn:first-child,
#header.wvcsd .btn-group > .btn:first-child {
  margin-left: 0;
  -webkit-border-top-left-radius: 4px;
  -moz-border-radius-topleft: 4px;
  border-top-left-radius: 4px;
  -webkit-border-bottom-left-radius: 4px;
  -moz-border-radius-bottomleft: 4px;
  border-bottom-left-radius: 4px;
}
#nav.wvcsd .btn-group > .btn:last-child,
#header.wvcsd .btn-group > .btn:last-child,
#nav.wvcsd .btn-group > .dropdown-toggle,
#header.wvcsd .btn-group > .dropdown-toggle {
  -webkit-border-top-right-radius: 4px;
  -moz-border-radius-topright: 4px;
  border-top-right-radius: 4px;
  -webkit-border-bottom-right-radius: 4px;
  -moz-border-radius-bottomright: 4px;
  border-bottom-right-radius: 4px;
}
#nav.wvcsd .btn-group > .btn.large:first-child,
#header.wvcsd .btn-group > .btn.large:first-child {
  margin-left: 0;
  -webkit-border-top-left-radius: 6px;
  -moz-border-radius-topleft: 6px;
  border-top-left-radius: 6px;
  -webkit-border-bottom-left-radius: 6px;
  -moz-border-radius-bottomleft: 6px;
  border-bottom-left-radius: 6px;
}
#nav.wvcsd .btn-group > .btn.large:last-child,
#header.wvcsd .btn-group > .btn.large:last-child,
#nav.wvcsd .btn-group > .large.dropdown-toggle,
#header.wvcsd .btn-group > .large.dropdown-toggle {
  -webkit-border-top-right-radius: 6px;
  -moz-border-radius-topright: 6px;
  border-top-right-radius: 6px;
  -webkit-border-bottom-right-radius: 6px;
  -moz-border-radius-bottomright: 6px;
  border-bottom-right-radius: 6px;
}
#nav.wvcsd .btn-group > .btn:hover,
#header.wvcsd .btn-group > .btn:hover,
#nav.wvcsd .btn-group > .btn:focus,
#header.wvcsd .btn-group > .btn:focus,
#nav.wvcsd .btn-group > .btn:active,
#header.wvcsd .btn-group > .btn:active,
#nav.wvcsd .btn-group > .btn.active,
#header.wvcsd .btn-group > .btn.active {
  z-index: 2;
}
#nav.wvcsd .btn-group .dropdown-toggle:active,
#header.wvcsd .btn-group .dropdown-toggle:active,
#nav.wvcsd .btn-group.open .dropdown-toggle,
#header.wvcsd .btn-group.open .dropdown-toggle {
  outline: 0;
}
#nav.wvcsd .btn-group > .btn + .dropdown-toggle,
#header.wvcsd .btn-group > .btn + .dropdown-toggle {
  padding-left: 8px;
  padding-right: 8px;
  -webkit-box-shadow: inset 1px 0 0 rgba(255,255,255,.125), inset 0 1px 0 rgba(255,255,255,.2), 0 1px 2px rgba(0,0,0,.05);
  -moz-box-shadow: inset 1px 0 0 rgba(255,255,255,.125), inset 0 1px 0 rgba(255,255,255,.2), 0 1px 2px rgba(0,0,0,.05);
  box-shadow: inset 1px 0 0 rgba(255,255,255,.125), inset 0 1px 0 rgba(255,255,255,.2), 0 1px 2px rgba(0,0,0,.05);
  *padding-top: 5px;
  *padding-bottom: 5px;
}
#nav.wvcsd .btn-group > .btn-mini + .dropdown-toggle,
#header.wvcsd .btn-group > .btn-mini + .dropdown-toggle {
  padding-left: 5px;
  padding-right: 5px;
  *padding-top: 2px;
  *padding-bottom: 2px;
}
#nav.wvcsd .btn-group > .btn-small + .dropdown-toggle,
#header.wvcsd .btn-group > .btn-small + .dropdown-toggle {
  *padding-top: 5px;
  *padding-bottom: 4px;
}
#nav.wvcsd .btn-group > .btn-large + .dropdown-toggle,
#header.wvcsd .btn-group > .btn-large + .dropdown-toggle {
  padding-left: 12px;
  padding-right: 12px;
  *padding-top: 7px;
  *padding-bottom: 7px;
}
#nav.wvcsd .btn-group.open .dropdown-toggle,
#header.wvcsd .btn-group.open .dropdown-toggle {
  background-image: none;
  -webkit-box-shadow: inset 0 2px 4px rgba(0,0,0,.15), 0 1px 2px rgba(0,0,0,.05);
  -moz-box-shadow: inset 0 2px 4px rgba(0,0,0,.15), 0 1px 2px rgba(0,0,0,.05);
  box-shadow: inset 0 2px 4px rgba(0,0,0,.15), 0 1px 2px rgba(0,0,0,.05);
}
#nav.wvcsd .btn-group.open .btn.dropdown-toggle,
#header.wvcsd .btn-group.open .btn.dropdown-toggle {
  background-color: #e6e6e6;
}
#nav.wvcsd .btn-group.open .btn-primary.dropdown-toggle,
#header.wvcsd .btn-group.open .btn-primary.dropdown-toggle {
  background-color: #0044cc;
}
#nav.wvcsd .btn-group.open .btn-warning.dropdown-toggle,
#header.wvcsd .btn-group.open .btn-warning.dropdown-toggle {
  background-color: #f89406;
}
#nav.wvcsd .btn-group.open .btn-danger.dropdown-toggle,
#header.wvcsd .btn-group.open .btn-danger.dropdown-toggle {
  background-color: #bd362f;
}
#nav.wvcsd .btn-group.open .btn-success.dropdown-toggle,
#header.wvcsd .btn-group.open .btn-success.dropdown-toggle {
  background-color: #51a351;
}
#nav.wvcsd .btn-group.open .btn-info.dropdown-toggle,
#header.wvcsd .btn-group.open .btn-info.dropdown-toggle {
  background-color: #2f96b4;
}
#nav.wvcsd .btn-group.open .btn-inverse.dropdown-toggle,
#header.wvcsd .btn-group.open .btn-inverse.dropdown-toggle {
  background-color: #222222;
}
#nav.wvcsd .btn .caret,
#header.wvcsd .btn .caret {
  margin-top: 8px;
  margin-left: 0;
}
#nav.wvcsd .btn-large .caret,
#header.wvcsd .btn-large .caret {
  margin-top: 6px;
}
#nav.wvcsd .btn-large .caret,
#header.wvcsd .btn-large .caret {
  border-left-width: 5px;
  border-right-width: 5px;
  border-top-width: 5px;
}
#nav.wvcsd .btn-mini .caret,
#header.wvcsd .btn-mini .caret,
#nav.wvcsd .btn-small .caret,
#header.wvcsd .btn-small .caret {
  margin-top: 8px;
}
#nav.wvcsd .dropup .btn-large .caret,
#header.wvcsd .dropup .btn-large .caret {
  border-bottom-width: 5px;
}
#nav.wvcsd .btn-primary .caret,
#header.wvcsd .btn-primary .caret,
#nav.wvcsd .btn-warning .caret,
#header.wvcsd .btn-warning .caret,
#nav.wvcsd .btn-danger .caret,
#header.wvcsd .btn-danger .caret,
#nav.wvcsd .btn-info .caret,
#header.wvcsd .btn-info .caret,
#nav.wvcsd .btn-success .caret,
#header.wvcsd .btn-success .caret,
#nav.wvcsd .btn-inverse .caret,
#header.wvcsd .btn-inverse .caret {
  border-top-color: #ffffff;
  border-bottom-color: #ffffff;
}
#nav.wvcsd .btn-group-vertical,
#header.wvcsd .btn-group-vertical {
  display: inline-block;
  *display: inline;
  /* IE7 inline-block hack */
  *zoom: 1;
}
#nav.wvcsd .btn-group-vertical > .btn,
#header.wvcsd .btn-group-vertical > .btn {
  display: block;
  float: none;
  max-width: 100%;
  -webkit-border-radius: 0;
  -moz-border-radius: 0;
  border-radius: 0;
}
#nav.wvcsd .btn-group-vertical > .btn + .btn,
#header.wvcsd .btn-group-vertical > .btn + .btn {
  margin-left: 0;
  margin-top: -1px;
}
#nav.wvcsd .btn-group-vertical > .btn:first-child,
#header.wvcsd .btn-group-vertical > .btn:first-child {
  -webkit-border-radius: 4px 4px 0 0;
  -moz-border-radius: 4px 4px 0 0;
  border-radius: 4px 4px 0 0;
}
#nav.wvcsd .btn-group-vertical > .btn:last-child,
#header.wvcsd .btn-group-vertical > .btn:last-child {
  -webkit-border-radius: 0 0 4px 4px;
  -moz-border-radius: 0 0 4px 4px;
  border-radius: 0 0 4px 4px;
}
#nav.wvcsd .btn-group-vertical > .btn-large:first-child,
#header.wvcsd .btn-group-vertical > .btn-large:first-child {
  -webkit-border-radius: 6px 6px 0 0;
  -moz-border-radius: 6px 6px 0 0;
  border-radius: 6px 6px 0 0;
}
#nav.wvcsd .btn-group-vertical > .btn-large:last-child,
#header.wvcsd .btn-group-vertical > .btn-large:last-child {
  -webkit-border-radius: 0 0 6px 6px;
  -moz-border-radius: 0 0 6px 6px;
  border-radius: 0 0 6px 6px;
}
#nav.wvcsd .btn,
#header.wvcsd .btn {
  display: inline-block;
  *display: inline;
  /* IE7 inline-block hack */
  *zoom: 1;
  padding: 4px 12px;
  margin-bottom: 0;
  font-size: 14px;
  line-height: 20px;
  text-align: center;
  vertical-align: middle;
  cursor: pointer;
  color: #333333;
  text-shadow: 0 1px 1px rgba(255, 255, 255, 0.75);
  background-color: #f5f5f5;
  background-image: -moz-linear-gradient(top, #ffffff, #e6e6e6);
  background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#ffffff), to(#e6e6e6));
  background-image: -webkit-linear-gradient(top, #ffffff, #e6e6e6);
  background-image: -o-linear-gradient(top, #ffffff, #e6e6e6);
  background-image: linear-gradient(to bottom, #ffffff, #e6e6e6);
  background-repeat: repeat-x;
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffffffff', endColorstr='#ffe6e6e6', GradientType=0);
  border-color: #e6e6e6 #e6e6e6 #bfbfbf;
  border-color: rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.25);
  *background-color: #e6e6e6;
  /* Darken IE7 buttons by default so they stand out more given they won't have borders */
  filter: progid:DXImageTransform.Microsoft.gradient(enabled = false);
  border: 1px solid #cccccc;
  *border: 0;
  border-bottom-color: #b3b3b3;
  -webkit-border-radius: 4px;
  -moz-border-radius: 4px;
  border-radius: 4px;
  *margin-left: .3em;
  -webkit-box-shadow: inset 0 1px 0 rgba(255,255,255,.2), 0 1px 2px rgba(0,0,0,.05);
  -moz-box-shadow: inset 0 1px 0 rgba(255,255,255,.2), 0 1px 2px rgba(0,0,0,.05);
  box-shadow: inset 0 1px 0 rgba(255,255,255,.2), 0 1px 2px rgba(0,0,0,.05);
}
#nav.wvcsd .btn:hover,
#header.wvcsd .btn:hover,
#nav.wvcsd .btn:focus,
#header.wvcsd .btn:focus,
#nav.wvcsd .btn:active,
#header.wvcsd .btn:active,
#nav.wvcsd .btn.active,
#header.wvcsd .btn.active,
#nav.wvcsd .btn.disabled,
#header.wvcsd .btn.disabled,
#nav.wvcsd .btn[disabled],
#header.wvcsd .btn[disabled] {
  color: #333333;
  background-color: #e6e6e6;
  *background-color: #d9d9d9;
}
#nav.wvcsd .btn:active,
#header.wvcsd .btn:active,
#nav.wvcsd .btn.active,
#header.wvcsd .btn.active {
  background-color: #cccccc \9;
}
#nav.wvcsd .btn:first-child,
#header.wvcsd .btn:first-child {
  *margin-left: 0;
}
#nav.wvcsd .btn:hover,
#header.wvcsd .btn:hover,
#nav.wvcsd .btn:focus,
#header.wvcsd .btn:focus {
  color: #333333;
  text-decoration: none;
  background-position: 0 -15px;
  -webkit-transition: background-position 0.1s linear;
  -moz-transition: background-position 0.1s linear;
  -o-transition: background-position 0.1s linear;
  transition: background-position 0.1s linear;
}
#nav.wvcsd .btn:focus,
#header.wvcsd .btn:focus {
  outline: thin dotted #333;
  outline: 5px auto -webkit-focus-ring-color;
  outline-offset: -2px;
}
#nav.wvcsd .btn.active,
#header.wvcsd .btn.active,
#nav.wvcsd .btn:active,
#header.wvcsd .btn:active {
  background-image: none;
  outline: 0;
  -webkit-box-shadow: inset 0 2px 4px rgba(0,0,0,.15), 0 1px 2px rgba(0,0,0,.05);
  -moz-box-shadow: inset 0 2px 4px rgba(0,0,0,.15), 0 1px 2px rgba(0,0,0,.05);
  box-shadow: inset 0 2px 4px rgba(0,0,0,.15), 0 1px 2px rgba(0,0,0,.05);
}
#nav.wvcsd .btn.disabled,
#header.wvcsd .btn.disabled,
#nav.wvcsd .btn[disabled],
#header.wvcsd .btn[disabled] {
  cursor: default;
  background-image: none;
  opacity: 0.65;
  filter: alpha(opacity=65);
  -webkit-box-shadow: none;
  -moz-box-shadow: none;
  box-shadow: none;
}
#nav.wvcsd .btn-large,
#header.wvcsd .btn-large {
  padding: 11px 19px;
  font-size: 17.5px;
  -webkit-border-radius: 6px;
  -moz-border-radius: 6px;
  border-radius: 6px;
}
#nav.wvcsd .btn-large [class^="icon-"],
#header.wvcsd .btn-large [class^="icon-"],
#nav.wvcsd .btn-large [class*=" icon-"],
#header.wvcsd .btn-large [class*=" icon-"] {
  margin-top: 4px;
}
#nav.wvcsd .btn-small,
#header.wvcsd .btn-small {
  padding: 2px 10px;
  font-size: 11.9px;
  -webkit-border-radius: 3px;
  -moz-border-radius: 3px;
  border-radius: 3px;
}
#nav.wvcsd .btn-small [class^="icon-"],
#header.wvcsd .btn-small [class^="icon-"],
#nav.wvcsd .btn-small [class*=" icon-"],
#header.wvcsd .btn-small [class*=" icon-"] {
  margin-top: 0;
}
#nav.wvcsd .btn-mini [class^="icon-"],
#header.wvcsd .btn-mini [class^="icon-"],
#nav.wvcsd .btn-mini [class*=" icon-"],
#header.wvcsd .btn-mini [class*=" icon-"] {
  margin-top: -1px;
}
#nav.wvcsd .btn-mini,
#header.wvcsd .btn-mini {
  padding: 0 6px;
  font-size: 10.5px;
  -webkit-border-radius: 3px;
  -moz-border-radius: 3px;
  border-radius: 3px;
}
#nav.wvcsd .btn-block,
#header.wvcsd .btn-block {
  display: block;
  width: 100%;
  padding-left: 0;
  padding-right: 0;
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
}
#nav.wvcsd .btn-block + .btn-block,
#header.wvcsd .btn-block + .btn-block {
  margin-top: 5px;
}
#nav.wvcsd input[type="submit"].btn-block,
#header.wvcsd input[type="submit"].btn-block,
#nav.wvcsd input[type="reset"].btn-block,
#header.wvcsd input[type="reset"].btn-block,
#nav.wvcsd input[type="button"].btn-block,
#header.wvcsd input[type="button"].btn-block {
  width: 100%;
}
#nav.wvcsd .btn-primary.active,
#header.wvcsd .btn-primary.active,
#nav.wvcsd .btn-warning.active,
#header.wvcsd .btn-warning.active,
#nav.wvcsd .btn-danger.active,
#header.wvcsd .btn-danger.active,
#nav.wvcsd .btn-success.active,
#header.wvcsd .btn-success.active,
#nav.wvcsd .btn-info.active,
#header.wvcsd .btn-info.active,
#nav.wvcsd .btn-inverse.active,
#header.wvcsd .btn-inverse.active {
  color: rgba(255, 255, 255, 0.75);
}
#nav.wvcsd .btn-primary,
#header.wvcsd .btn-primary {
  color: #ffffff;
  text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25);
  background-color: #006dcc;
  background-image: -moz-linear-gradient(top, #0088cc, #0044cc);
  background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#0088cc), to(#0044cc));
  background-image: -webkit-linear-gradient(top, #0088cc, #0044cc);
  background-image: -o-linear-gradient(top, #0088cc, #0044cc);
  background-image: linear-gradient(to bottom, #0088cc, #0044cc);
  background-repeat: repeat-x;
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ff0088cc', endColorstr='#ff0044cc', GradientType=0);
  border-color: #0044cc #0044cc #002a80;
  border-color: rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.25);
  *background-color: #0044cc;
  /* Darken IE7 buttons by default so they stand out more given they won't have borders */
  filter: progid:DXImageTransform.Microsoft.gradient(enabled = false);
}
#nav.wvcsd .btn-primary:hover,
#header.wvcsd .btn-primary:hover,
#nav.wvcsd .btn-primary:focus,
#header.wvcsd .btn-primary:focus,
#nav.wvcsd .btn-primary:active,
#header.wvcsd .btn-primary:active,
#nav.wvcsd .btn-primary.active,
#header.wvcsd .btn-primary.active,
#nav.wvcsd .btn-primary.disabled,
#header.wvcsd .btn-primary.disabled,
#nav.wvcsd .btn-primary[disabled],
#header.wvcsd .btn-primary[disabled] {
  color: #ffffff;
  background-color: #0044cc;
  *background-color: #003bb3;
}
#nav.wvcsd .btn-primary:active,
#header.wvcsd .btn-primary:active,
#nav.wvcsd .btn-primary.active,
#header.wvcsd .btn-primary.active {
  background-color: #003399 \9;
}
#nav.wvcsd .btn-warning,
#header.wvcsd .btn-warning {
  color: #ffffff;
  text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25);
  background-color: #faa732;
  background-image: -moz-linear-gradient(top, #fbb450, #f89406);
  background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#fbb450), to(#f89406));
  background-image: -webkit-linear-gradient(top, #fbb450, #f89406);
  background-image: -o-linear-gradient(top, #fbb450, #f89406);
  background-image: linear-gradient(to bottom, #fbb450, #f89406);
  background-repeat: repeat-x;
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#fffbb450', endColorstr='#fff89406', GradientType=0);
  border-color: #f89406 #f89406 #ad6704;
  border-color: rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.25);
  *background-color: #f89406;
  /* Darken IE7 buttons by default so they stand out more given they won't have borders */
  filter: progid:DXImageTransform.Microsoft.gradient(enabled = false);
}
#nav.wvcsd .btn-warning:hover,
#header.wvcsd .btn-warning:hover,
#nav.wvcsd .btn-warning:focus,
#header.wvcsd .btn-warning:focus,
#nav.wvcsd .btn-warning:active,
#header.wvcsd .btn-warning:active,
#nav.wvcsd .btn-warning.active,
#header.wvcsd .btn-warning.active,
#nav.wvcsd .btn-warning.disabled,
#header.wvcsd .btn-warning.disabled,
#nav.wvcsd .btn-warning[disabled],
#header.wvcsd .btn-warning[disabled] {
  color: #ffffff;
  background-color: #f89406;
  *background-color: #df8505;
}
#nav.wvcsd .btn-warning:active,
#header.wvcsd .btn-warning:active,
#nav.wvcsd .btn-warning.active,
#header.wvcsd .btn-warning.active {
  background-color: #c67605 \9;
}
#nav.wvcsd .btn-danger,
#header.wvcsd .btn-danger {
  color: #ffffff;
  text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25);
  background-color: #da4f49;
  background-image: -moz-linear-gradient(top, #ee5f5b, #bd362f);
  background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#ee5f5b), to(#bd362f));
  background-image: -webkit-linear-gradient(top, #ee5f5b, #bd362f);
  background-image: -o-linear-gradient(top, #ee5f5b, #bd362f);
  background-image: linear-gradient(to bottom, #ee5f5b, #bd362f);
  background-repeat: repeat-x;
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffee5f5b', endColorstr='#ffbd362f', GradientType=0);
  border-color: #bd362f #bd362f #802420;
  border-color: rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.25);
  *background-color: #bd362f;
  /* Darken IE7 buttons by default so they stand out more given they won't have borders */
  filter: progid:DXImageTransform.Microsoft.gradient(enabled = false);
}
#nav.wvcsd .btn-danger:hover,
#header.wvcsd .btn-danger:hover,
#nav.wvcsd .btn-danger:focus,
#header.wvcsd .btn-danger:focus,
#nav.wvcsd .btn-danger:active,
#header.wvcsd .btn-danger:active,
#nav.wvcsd .btn-danger.active,
#header.wvcsd .btn-danger.active,
#nav.wvcsd .btn-danger.disabled,
#header.wvcsd .btn-danger.disabled,
#nav.wvcsd .btn-danger[disabled],
#header.wvcsd .btn-danger[disabled] {
  color: #ffffff;
  background-color: #bd362f;
  *background-color: #a9302a;
}
#nav.wvcsd .btn-danger:active,
#header.wvcsd .btn-danger:active,
#nav.wvcsd .btn-danger.active,
#header.wvcsd .btn-danger.active {
  background-color: #942a25 \9;
}
#nav.wvcsd .btn-success,
#header.wvcsd .btn-success {
  color: #ffffff;
  text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25);
  background-color: #5bb75b;
  background-image: -moz-linear-gradient(top, #62c462, #51a351);
  background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#62c462), to(#51a351));
  background-image: -webkit-linear-gradient(top, #62c462, #51a351);
  background-image: -o-linear-gradient(top, #62c462, #51a351);
  background-image: linear-gradient(to bottom, #62c462, #51a351);
  background-repeat: repeat-x;
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ff62c462', endColorstr='#ff51a351', GradientType=0);
  border-color: #51a351 #51a351 #387038;
  border-color: rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.25);
  *background-color: #51a351;
  /* Darken IE7 buttons by default so they stand out more given they won't have borders */
  filter: progid:DXImageTransform.Microsoft.gradient(enabled = false);
}
#nav.wvcsd .btn-success:hover,
#header.wvcsd .btn-success:hover,
#nav.wvcsd .btn-success:focus,
#header.wvcsd .btn-success:focus,
#nav.wvcsd .btn-success:active,
#header.wvcsd .btn-success:active,
#nav.wvcsd .btn-success.active,
#header.wvcsd .btn-success.active,
#nav.wvcsd .btn-success.disabled,
#header.wvcsd .btn-success.disabled,
#nav.wvcsd .btn-success[disabled],
#header.wvcsd .btn-success[disabled] {
  color: #ffffff;
  background-color: #51a351;
  *background-color: #499249;
}
#nav.wvcsd .btn-success:active,
#header.wvcsd .btn-success:active,
#nav.wvcsd .btn-success.active,
#header.wvcsd .btn-success.active {
  background-color: #408140 \9;
}
#nav.wvcsd .btn-info,
#header.wvcsd .btn-info {
  color: #ffffff;
  text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25);
  background-color: #49afcd;
  background-image: -moz-linear-gradient(top, #5bc0de, #2f96b4);
  background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#5bc0de), to(#2f96b4));
  background-image: -webkit-linear-gradient(top, #5bc0de, #2f96b4);
  background-image: -o-linear-gradient(top, #5bc0de, #2f96b4);
  background-image: linear-gradient(to bottom, #5bc0de, #2f96b4);
  background-repeat: repeat-x;
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ff5bc0de', endColorstr='#ff2f96b4', GradientType=0);
  border-color: #2f96b4 #2f96b4 #1f6377;
  border-color: rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.25);
  *background-color: #2f96b4;
  /* Darken IE7 buttons by default so they stand out more given they won't have borders */
  filter: progid:DXImageTransform.Microsoft.gradient(enabled = false);
}
#nav.wvcsd .btn-info:hover,
#header.wvcsd .btn-info:hover,
#nav.wvcsd .btn-info:focus,
#header.wvcsd .btn-info:focus,
#nav.wvcsd .btn-info:active,
#header.wvcsd .btn-info:active,
#nav.wvcsd .btn-info.active,
#header.wvcsd .btn-info.active,
#nav.wvcsd .btn-info.disabled,
#header.wvcsd .btn-info.disabled,
#nav.wvcsd .btn-info[disabled],
#header.wvcsd .btn-info[disabled] {
  color: #ffffff;
  background-color: #2f96b4;
  *background-color: #2a85a0;
}
#nav.wvcsd .btn-info:active,
#header.wvcsd .btn-info:active,
#nav.wvcsd .btn-info.active,
#header.wvcsd .btn-info.active {
  background-color: #24748c \9;
}
#nav.wvcsd .btn-inverse,
#header.wvcsd .btn-inverse {
  color: #ffffff;
  text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25);
  background-color: #363636;
  background-image: -moz-linear-gradient(top, #444444, #222222);
  background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#444444), to(#222222));
  background-image: -webkit-linear-gradient(top, #444444, #222222);
  background-image: -o-linear-gradient(top, #444444, #222222);
  background-image: linear-gradient(to bottom, #444444, #222222);
  background-repeat: repeat-x;
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ff444444', endColorstr='#ff222222', GradientType=0);
  border-color: #222222 #222222 #000000;
  border-color: rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.25);
  *background-color: #222222;
  /* Darken IE7 buttons by default so they stand out more given they won't have borders */
  filter: progid:DXImageTransform.Microsoft.gradient(enabled = false);
}
#nav.wvcsd .btn-inverse:hover,
#header.wvcsd .btn-inverse:hover,
#nav.wvcsd .btn-inverse:focus,
#header.wvcsd .btn-inverse:focus,
#nav.wvcsd .btn-inverse:active,
#header.wvcsd .btn-inverse:active,
#nav.wvcsd .btn-inverse.active,
#header.wvcsd .btn-inverse.active,
#nav.wvcsd .btn-inverse.disabled,
#header.wvcsd .btn-inverse.disabled,
#nav.wvcsd .btn-inverse[disabled],
#header.wvcsd .btn-inverse[disabled] {
  color: #ffffff;
  background-color: #222222;
  *background-color: #151515;
}
#nav.wvcsd .btn-inverse:active,
#header.wvcsd .btn-inverse:active,
#nav.wvcsd .btn-inverse.active,
#header.wvcsd .btn-inverse.active {
  background-color: #080808 \9;
}
#nav.wvcsd button.btn,
#header.wvcsd button.btn,
#nav.wvcsd input[type="submit"].btn,
#header.wvcsd input[type="submit"].btn {
  *padding-top: 3px;
  *padding-bottom: 3px;
}
#nav.wvcsd button.btn::-moz-focus-inner,
#header.wvcsd button.btn::-moz-focus-inner,
#nav.wvcsd input[type="submit"].btn::-moz-focus-inner,
#header.wvcsd input[type="submit"].btn::-moz-focus-inner {
  padding: 0;
  border: 0;
}
#nav.wvcsd button.btn.btn-large,
#header.wvcsd button.btn.btn-large,
#nav.wvcsd input[type="submit"].btn.btn-large,
#header.wvcsd input[type="submit"].btn.btn-large {
  *padding-top: 7px;
  *padding-bottom: 7px;
}
#nav.wvcsd button.btn.btn-small,
#header.wvcsd button.btn.btn-small,
#nav.wvcsd input[type="submit"].btn.btn-small,
#header.wvcsd input[type="submit"].btn.btn-small {
  *padding-top: 3px;
  *padding-bottom: 3px;
}
#nav.wvcsd button.btn.btn-mini,
#header.wvcsd button.btn.btn-mini,
#nav.wvcsd input[type="submit"].btn.btn-mini,
#header.wvcsd input[type="submit"].btn.btn-mini {
  *padding-top: 1px;
  *padding-bottom: 1px;
}
#nav.wvcsd .btn-link,
#header.wvcsd .btn-link,
#nav.wvcsd .btn-link:active,
#header.wvcsd .btn-link:active,
#nav.wvcsd .btn-link[disabled],
#header.wvcsd .btn-link[disabled] {
  background-color: transparent;
  background-image: none;
  -webkit-box-shadow: none;
  -moz-box-shadow: none;
  box-shadow: none;
}
#nav.wvcsd .btn-link,
#header.wvcsd .btn-link {
  border-color: transparent;
  cursor: pointer;
  color: #0088cc;
  -webkit-border-radius: 0;
  -moz-border-radius: 0;
  border-radius: 0;
}
#nav.wvcsd .btn-link:hover,
#header.wvcsd .btn-link:hover,
#nav.wvcsd .btn-link:focus,
#header.wvcsd .btn-link:focus {
  color: #005580;
  text-decoration: underline;
  background-color: transparent;
}
#nav.wvcsd .btn-link[disabled]:hover,
#header.wvcsd .btn-link[disabled]:hover,
#nav.wvcsd .btn-link[disabled]:focus,
#header.wvcsd .btn-link[disabled]:focus {
  color: #333333;
  text-decoration: none;
}
#nav.wvcsd .carousel,
#header.wvcsd .carousel {
  position: relative;
  margin-bottom: 20px;
  line-height: 1;
}
#nav.wvcsd .carousel-inner,
#header.wvcsd .carousel-inner {
  overflow: hidden;
  width: 100%;
  position: relative;
}
#nav.wvcsd .carousel-inner > .item,
#header.wvcsd .carousel-inner > .item {
  display: none;
  position: relative;
  -webkit-transition: 0.6s ease-in-out left;
  -moz-transition: 0.6s ease-in-out left;
  -o-transition: 0.6s ease-in-out left;
  transition: 0.6s ease-in-out left;
}
#nav.wvcsd .carousel-inner > .item > img,
#header.wvcsd .carousel-inner > .item > img,
#nav.wvcsd .carousel-inner > .item > a > img,
#header.wvcsd .carousel-inner > .item > a > img {
  display: block;
  line-height: 1;
}
#nav.wvcsd .carousel-inner > .active,
#header.wvcsd .carousel-inner > .active,
#nav.wvcsd .carousel-inner > .next,
#header.wvcsd .carousel-inner > .next,
#nav.wvcsd .carousel-inner > .prev,
#header.wvcsd .carousel-inner > .prev {
  display: block;
}
#nav.wvcsd .carousel-inner > .active,
#header.wvcsd .carousel-inner > .active {
  left: 0;
}
#nav.wvcsd .carousel-inner > .next,
#header.wvcsd .carousel-inner > .next,
#nav.wvcsd .carousel-inner > .prev,
#header.wvcsd .carousel-inner > .prev {
  position: absolute;
  top: 0;
  width: 100%;
}
#nav.wvcsd .carousel-inner > .next,
#header.wvcsd .carousel-inner > .next {
  left: 100%;
}
#nav.wvcsd .carousel-inner > .prev,
#header.wvcsd .carousel-inner > .prev {
  left: -100%;
}
#nav.wvcsd .carousel-inner > .next.left,
#header.wvcsd .carousel-inner > .next.left,
#nav.wvcsd .carousel-inner > .prev.right,
#header.wvcsd .carousel-inner > .prev.right {
  left: 0;
}
#nav.wvcsd .carousel-inner > .active.left,
#header.wvcsd .carousel-inner > .active.left {
  left: -100%;
}
#nav.wvcsd .carousel-inner > .active.right,
#header.wvcsd .carousel-inner > .active.right {
  left: 100%;
}
#nav.wvcsd .carousel-control,
#header.wvcsd .carousel-control {
  position: absolute;
  top: 40%;
  left: 15px;
  width: 40px;
  height: 40px;
  margin-top: -20px;
  font-size: 60px;
  font-weight: 100;
  line-height: 30px;
  color: #ffffff;
  text-align: center;
  background: #222222;
  border: 3px solid #ffffff;
  -webkit-border-radius: 23px;
  -moz-border-radius: 23px;
  border-radius: 23px;
  opacity: 0.5;
  filter: alpha(opacity=50);
}
#nav.wvcsd .carousel-control.right,
#header.wvcsd .carousel-control.right {
  left: auto;
  right: 15px;
}
#nav.wvcsd .carousel-control:hover,
#header.wvcsd .carousel-control:hover,
#nav.wvcsd .carousel-control:focus,
#header.wvcsd .carousel-control:focus {
  color: #ffffff;
  text-decoration: none;
  opacity: 0.9;
  filter: alpha(opacity=90);
}
#nav.wvcsd .carousel-indicators,
#header.wvcsd .carousel-indicators {
  position: absolute;
  top: 15px;
  right: 15px;
  z-index: 5;
  margin: 0;
  list-style: none;
}
#nav.wvcsd .carousel-indicators li,
#header.wvcsd .carousel-indicators li {
  display: block;
  float: left;
  width: 10px;
  height: 10px;
  margin-left: 5px;
  text-indent: -999px;
  background-color: #ccc;
  background-color: rgba(255, 255, 255, 0.25);
  border-radius: 5px;
}
#nav.wvcsd .carousel-indicators .active,
#header.wvcsd .carousel-indicators .active {
  background-color: #fff;
}
#nav.wvcsd .carousel-caption,
#header.wvcsd .carousel-caption {
  position: absolute;
  left: 0;
  right: 0;
  bottom: 0;
  padding: 15px;
  background: #333333;
  background: rgba(0, 0, 0, 0.75);
}
#nav.wvcsd .carousel-caption h4,
#header.wvcsd .carousel-caption h4,
#nav.wvcsd .carousel-caption p,
#header.wvcsd .carousel-caption p {
  color: #ffffff;
  line-height: 20px;
}
#nav.wvcsd .carousel-caption h4,
#header.wvcsd .carousel-caption h4 {
  margin: 0 0 5px;
}
#nav.wvcsd .carousel-caption p,
#header.wvcsd .carousel-caption p {
  margin-bottom: 0;
}
#nav.wvcsd .close,
#header.wvcsd .close {
  float: right;
  font-size: 20px;
  font-weight: bold;
  line-height: 20px;
  color: #000000;
  text-shadow: 0 1px 0 #ffffff;
  opacity: 0.2;
  filter: alpha(opacity=20);
}
#nav.wvcsd .close:hover,
#header.wvcsd .close:hover,
#nav.wvcsd .close:focus,
#header.wvcsd .close:focus {
  color: #000000;
  text-decoration: none;
  cursor: pointer;
  opacity: 0.4;
  filter: alpha(opacity=40);
}
#nav.wvcsd button.close,
#header.wvcsd button.close {
  padding: 0;
  cursor: pointer;
  background: transparent;
  border: 0;
  -webkit-appearance: none;
}
#nav.wvcsd code,
#header.wvcsd code,
#nav.wvcsd pre,
#header.wvcsd pre {
  padding: 0 3px 2px;
  font-family: Monaco, Menlo, Consolas, "Courier New", monospace;
  font-size: 12px;
  color: #333333;
  -webkit-border-radius: 3px;
  -moz-border-radius: 3px;
  border-radius: 3px;
}
#nav.wvcsd code,
#header.wvcsd code {
  padding: 2px 4px;
  color: #d14;
  background-color: #f7f7f9;
  border: 1px solid #e1e1e8;
  white-space: nowrap;
}
#nav.wvcsd pre,
#header.wvcsd pre {
  display: block;
  padding: 9.5px;
  margin: 0 0 10px;
  font-size: 13px;
  line-height: 20px;
  word-break: break-all;
  word-wrap: break-word;
  white-space: pre;
  white-space: pre-wrap;
  background-color: #f5f5f5;
  border: 1px solid #ccc;
  border: 1px solid rgba(0, 0, 0, 0.15);
  -webkit-border-radius: 4px;
  -moz-border-radius: 4px;
  border-radius: 4px;
}
#nav.wvcsd pre.prettyprint,
#header.wvcsd pre.prettyprint {
  margin-bottom: 20px;
}
#nav.wvcsd pre code,
#header.wvcsd pre code {
  padding: 0;
  color: inherit;
  white-space: pre;
  white-space: pre-wrap;
  background-color: transparent;
  border: 0;
}
#nav.wvcsd .pre-scrollable,
#header.wvcsd .pre-scrollable {
  max-height: 340px;
  overflow-y: scroll;
}
#nav.wvcsd .fade,
#header.wvcsd .fade {
  opacity: 0;
  -webkit-transition: opacity 0.15s linear;
  -moz-transition: opacity 0.15s linear;
  -o-transition: opacity 0.15s linear;
  transition: opacity 0.15s linear;
}
#nav.wvcsd .fade.in,
#header.wvcsd .fade.in {
  opacity: 1;
}
#nav.wvcsd .collapse,
#header.wvcsd .collapse {
  position: relative;
  height: 0;
  overflow: hidden;
  -webkit-transition: height 0.35s ease;
  -moz-transition: height 0.35s ease;
  -o-transition: height 0.35s ease;
  transition: height 0.35s ease;
}
#nav.wvcsd .collapse.in,
#header.wvcsd .collapse.in {
  height: auto;
}
#nav.wvcsd .dropup,
#header.wvcsd .dropup,
#nav.wvcsd .dropdown,
#header.wvcsd .dropdown {
  position: relative;
}
#nav.wvcsd .dropdown-toggle,
#header.wvcsd .dropdown-toggle {
  *margin-bottom: -3px;
}
#nav.wvcsd .dropdown-toggle:active,
#header.wvcsd .dropdown-toggle:active,
#nav.wvcsd .open .dropdown-toggle,
#header.wvcsd .open .dropdown-toggle {
  outline: 0;
}
#nav.wvcsd .caret,
#header.wvcsd .caret {
  display: inline-block;
  width: 0;
  height: 0;
  vertical-align: top;
  border-top: 4px solid #000000;
  border-right: 4px solid transparent;
  border-left: 4px solid transparent;
  content: "";
}
#nav.wvcsd .dropdown .caret,
#header.wvcsd .dropdown .caret {
  margin-top: 8px;
  margin-left: 2px;
}
#nav.wvcsd .dropdown-menu,
#header.wvcsd .dropdown-menu {
  position: absolute;
  top: 100%;
  left: 0;
  z-index: 1000;
  display: none;
  float: left;
  min-width: 160px;
  padding: 5px 0;
  margin: 2px 0 0;
  list-style: none;
  background-color: #ffffff;
  border: 1px solid #ccc;
  border: 1px solid rgba(0, 0, 0, 0.2);
  *border-right-width: 2px;
  *border-bottom-width: 2px;
  -webkit-border-radius: 6px;
  -moz-border-radius: 6px;
  border-radius: 6px;
  -webkit-box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
  -moz-box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
  box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
  -webkit-background-clip: padding-box;
  -moz-background-clip: padding;
  background-clip: padding-box;
}
#nav.wvcsd .dropdown-menu.pull-right,
#header.wvcsd .dropdown-menu.pull-right {
  right: 0;
  left: auto;
}
#nav.wvcsd .dropdown-menu .divider,
#header.wvcsd .dropdown-menu .divider {
  *width: 100%;
  height: 1px;
  margin: 9px 1px;
  *margin: -5px 0 5px;
  overflow: hidden;
  background-color: #e5e5e5;
  border-bottom: 1px solid #ffffff;
}
#nav.wvcsd .dropdown-menu > li > a,
#header.wvcsd .dropdown-menu > li > a {
  display: block;
  padding: 3px 20px;
  clear: both;
  font-weight: normal;
  line-height: 20px;
  color: #333333;
  white-space: nowrap;
}
#nav.wvcsd .dropdown-menu > li > a:hover,
#header.wvcsd .dropdown-menu > li > a:hover,
#nav.wvcsd .dropdown-menu > li > a:focus,
#header.wvcsd .dropdown-menu > li > a:focus,
#nav.wvcsd .dropdown-submenu:hover > a,
#header.wvcsd .dropdown-submenu:hover > a,
#nav.wvcsd .dropdown-submenu:focus > a,
#header.wvcsd .dropdown-submenu:focus > a {
  text-decoration: none;
  color: #ffffff;
  background-color: #0081c2;
  background-image: -moz-linear-gradient(top, #0088cc, #0077b3);
  background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#0088cc), to(#0077b3));
  background-image: -webkit-linear-gradient(top, #0088cc, #0077b3);
  background-image: -o-linear-gradient(top, #0088cc, #0077b3);
  background-image: linear-gradient(to bottom, #0088cc, #0077b3);
  background-repeat: repeat-x;
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ff0088cc', endColorstr='#ff0077b3', GradientType=0);
}
#nav.wvcsd .dropdown-menu > .active > a,
#header.wvcsd .dropdown-menu > .active > a,
#nav.wvcsd .dropdown-menu > .active > a:hover,
#header.wvcsd .dropdown-menu > .active > a:hover,
#nav.wvcsd .dropdown-menu > .active > a:focus,
#header.wvcsd .dropdown-menu > .active > a:focus {
  color: #ffffff;
  text-decoration: none;
  outline: 0;
  background-color: #0081c2;
  background-image: -moz-linear-gradient(top, #0088cc, #0077b3);
  background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#0088cc), to(#0077b3));
  background-image: -webkit-linear-gradient(top, #0088cc, #0077b3);
  background-image: -o-linear-gradient(top, #0088cc, #0077b3);
  background-image: linear-gradient(to bottom, #0088cc, #0077b3);
  background-repeat: repeat-x;
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ff0088cc', endColorstr='#ff0077b3', GradientType=0);
}
#nav.wvcsd .dropdown-menu > .disabled > a,
#header.wvcsd .dropdown-menu > .disabled > a,
#nav.wvcsd .dropdown-menu > .disabled > a:hover,
#header.wvcsd .dropdown-menu > .disabled > a:hover,
#nav.wvcsd .dropdown-menu > .disabled > a:focus,
#header.wvcsd .dropdown-menu > .disabled > a:focus {
  color: #999999;
}
#nav.wvcsd .dropdown-menu > .disabled > a:hover,
#header.wvcsd .dropdown-menu > .disabled > a:hover,
#nav.wvcsd .dropdown-menu > .disabled > a:focus,
#header.wvcsd .dropdown-menu > .disabled > a:focus {
  text-decoration: none;
  background-color: transparent;
  background-image: none;
  filter: progid:DXImageTransform.Microsoft.gradient(enabled = false);
  cursor: default;
}
#nav.wvcsd .open,
#header.wvcsd .open {
  *z-index: 1000;
}
#nav.wvcsd .open > .dropdown-menu,
#header.wvcsd .open > .dropdown-menu {
  display: block;
}
#nav.wvcsd .dropdown-backdrop,
#header.wvcsd .dropdown-backdrop {
  position: fixed;
  left: 0;
  right: 0;
  bottom: 0;
  top: 0;
  z-index: 990;
}
#nav.wvcsd .pull-right > .dropdown-menu,
#header.wvcsd .pull-right > .dropdown-menu {
  right: 0;
  left: auto;
}
#nav.wvcsd .dropup .caret,
#header.wvcsd .dropup .caret,
#nav.wvcsd .navbar-fixed-bottom .dropdown .caret,
#header.wvcsd .navbar-fixed-bottom .dropdown .caret {
  border-top: 0;
  border-bottom: 4px solid #000000;
  content: "";
}
#nav.wvcsd .dropup .dropdown-menu,
#header.wvcsd .dropup .dropdown-menu,
#nav.wvcsd .navbar-fixed-bottom .dropdown .dropdown-menu,
#header.wvcsd .navbar-fixed-bottom .dropdown .dropdown-menu {
  top: auto;
  bottom: 100%;
  margin-bottom: 1px;
}
#nav.wvcsd .dropdown-submenu,
#header.wvcsd .dropdown-submenu {
  position: relative;
}
#nav.wvcsd .dropdown-submenu > .dropdown-menu,
#header.wvcsd .dropdown-submenu > .dropdown-menu {
  top: 0;
  left: 100%;
  margin-top: -6px;
  margin-left: -1px;
  -webkit-border-radius: 0 6px 6px 6px;
  -moz-border-radius: 0 6px 6px 6px;
  border-radius: 0 6px 6px 6px;
}
#nav.wvcsd .dropdown-submenu:hover > .dropdown-menu,
#header.wvcsd .dropdown-submenu:hover > .dropdown-menu {
  display: block;
}
#nav.wvcsd .dropup .dropdown-submenu > .dropdown-menu,
#header.wvcsd .dropup .dropdown-submenu > .dropdown-menu {
  top: auto;
  bottom: 0;
  margin-top: 0;
  margin-bottom: -2px;
  -webkit-border-radius: 5px 5px 5px 0;
  -moz-border-radius: 5px 5px 5px 0;
  border-radius: 5px 5px 5px 0;
}
#nav.wvcsd .dropdown-submenu > a:after,
#header.wvcsd .dropdown-submenu > a:after {
  display: block;
  content: " ";
  float: right;
  width: 0;
  height: 0;
  border-color: transparent;
  border-style: solid;
  border-width: 5px 0 5px 5px;
  border-left-color: #cccccc;
  margin-top: 5px;
  margin-right: -10px;
}
#nav.wvcsd .dropdown-submenu:hover > a:after,
#header.wvcsd .dropdown-submenu:hover > a:after {
  border-left-color: #ffffff;
}
#nav.wvcsd .dropdown-submenu.pull-left,
#header.wvcsd .dropdown-submenu.pull-left {
  float: none;
}
#nav.wvcsd .dropdown-submenu.pull-left > .dropdown-menu,
#header.wvcsd .dropdown-submenu.pull-left > .dropdown-menu {
  left: -100%;
  margin-left: 10px;
  -webkit-border-radius: 6px 0 6px 6px;
  -moz-border-radius: 6px 0 6px 6px;
  border-radius: 6px 0 6px 6px;
}
#nav.wvcsd .dropdown .dropdown-menu .nav-header,
#header.wvcsd .dropdown .dropdown-menu .nav-header {
  padding-left: 20px;
  padding-right: 20px;
}
#nav.wvcsd .typeahead,
#header.wvcsd .typeahead {
  z-index: 1051;
  margin-top: 2px;
  -webkit-border-radius: 4px;
  -moz-border-radius: 4px;
  border-radius: 4px;
}
#nav.wvcsd form,
#header.wvcsd form {
  margin: 0 0 20px;
}
#nav.wvcsd fieldset,
#header.wvcsd fieldset {
  padding: 0;
  margin: 0;
  border: 0;
}
#nav.wvcsd legend,
#header.wvcsd legend {
  display: block;
  width: 100%;
  padding: 0;
  margin-bottom: 20px;
  font-size: 21px;
  line-height: 40px;
  color: #333333;
  border: 0;
  border-bottom: 1px solid #e5e5e5;
}
#nav.wvcsd legend small,
#header.wvcsd legend small {
  font-size: 15px;
  color: #999999;
}
#nav.wvcsd label,
#header.wvcsd label,
#nav.wvcsd input,
#header.wvcsd input,
#nav.wvcsd button,
#header.wvcsd button,
#nav.wvcsd select,
#header.wvcsd select,
#nav.wvcsd textarea,
#header.wvcsd textarea {
  font-size: 14px;
  font-weight: normal;
  line-height: 20px;
}
#nav.wvcsd input,
#header.wvcsd input,
#nav.wvcsd button,
#header.wvcsd button,
#nav.wvcsd select,
#header.wvcsd select,
#nav.wvcsd textarea,
#header.wvcsd textarea {
  font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
}
#nav.wvcsd label,
#header.wvcsd label {
  display: block;
  margin-bottom: 5px;
}
#nav.wvcsd select,
#header.wvcsd select,
#nav.wvcsd textarea,
#header.wvcsd textarea,
#nav.wvcsd input[type="text"],
#header.wvcsd input[type="text"],
#nav.wvcsd input[type="password"],
#header.wvcsd input[type="password"],
#nav.wvcsd input[type="datetime"],
#header.wvcsd input[type="datetime"],
#nav.wvcsd input[type="datetime-local"],
#header.wvcsd input[type="datetime-local"],
#nav.wvcsd input[type="date"],
#header.wvcsd input[type="date"],
#nav.wvcsd input[type="month"],
#header.wvcsd input[type="month"],
#nav.wvcsd input[type="time"],
#header.wvcsd input[type="time"],
#nav.wvcsd input[type="week"],
#header.wvcsd input[type="week"],
#nav.wvcsd input[type="number"],
#header.wvcsd input[type="number"],
#nav.wvcsd input[type="email"],
#header.wvcsd input[type="email"],
#nav.wvcsd input[type="url"],
#header.wvcsd input[type="url"],
#nav.wvcsd input[type="search"],
#header.wvcsd input[type="search"],
#nav.wvcsd input[type="tel"],
#header.wvcsd input[type="tel"],
#nav.wvcsd input[type="color"],
#header.wvcsd input[type="color"],
#nav.wvcsd .uneditable-input,
#header.wvcsd .uneditable-input {
  display: inline-block;
  height: 20px;
  padding: 4px 6px;
  margin-bottom: 10px;
  font-size: 14px;
  line-height: 20px;
  color: #555555;
  -webkit-border-radius: 4px;
  -moz-border-radius: 4px;
  border-radius: 4px;
  vertical-align: middle;
}
#nav.wvcsd input,
#header.wvcsd input,
#nav.wvcsd textarea,
#header.wvcsd textarea,
#nav.wvcsd .uneditable-input,
#header.wvcsd .uneditable-input {
  width: 206px;
}
#nav.wvcsd textarea,
#header.wvcsd textarea {
  height: auto;
}
#nav.wvcsd textarea,
#header.wvcsd textarea,
#nav.wvcsd input[type="text"],
#header.wvcsd input[type="text"],
#nav.wvcsd input[type="password"],
#header.wvcsd input[type="password"],
#nav.wvcsd input[type="datetime"],
#header.wvcsd input[type="datetime"],
#nav.wvcsd input[type="datetime-local"],
#header.wvcsd input[type="datetime-local"],
#nav.wvcsd input[type="date"],
#header.wvcsd input[type="date"],
#nav.wvcsd input[type="month"],
#header.wvcsd input[type="month"],
#nav.wvcsd input[type="time"],
#header.wvcsd input[type="time"],
#nav.wvcsd input[type="week"],
#header.wvcsd input[type="week"],
#nav.wvcsd input[type="number"],
#header.wvcsd input[type="number"],
#nav.wvcsd input[type="email"],
#header.wvcsd input[type="email"],
#nav.wvcsd input[type="url"],
#header.wvcsd input[type="url"],
#nav.wvcsd input[type="search"],
#header.wvcsd input[type="search"],
#nav.wvcsd input[type="tel"],
#header.wvcsd input[type="tel"],
#nav.wvcsd input[type="color"],
#header.wvcsd input[type="color"],
#nav.wvcsd .uneditable-input,
#header.wvcsd .uneditable-input {
  background-color: #ffffff;
  border: 1px solid #cccccc;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
  -moz-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
  box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
  -webkit-transition: border linear .2s, box-shadow linear .2s;
  -moz-transition: border linear .2s, box-shadow linear .2s;
  -o-transition: border linear .2s, box-shadow linear .2s;
  transition: border linear .2s, box-shadow linear .2s;
}
#nav.wvcsd textarea:focus,
#header.wvcsd textarea:focus,
#nav.wvcsd input[type="text"]:focus,
#header.wvcsd input[type="text"]:focus,
#nav.wvcsd input[type="password"]:focus,
#header.wvcsd input[type="password"]:focus,
#nav.wvcsd input[type="datetime"]:focus,
#header.wvcsd input[type="datetime"]:focus,
#nav.wvcsd input[type="datetime-local"]:focus,
#header.wvcsd input[type="datetime-local"]:focus,
#nav.wvcsd input[type="date"]:focus,
#header.wvcsd input[type="date"]:focus,
#nav.wvcsd input[type="month"]:focus,
#header.wvcsd input[type="month"]:focus,
#nav.wvcsd input[type="time"]:focus,
#header.wvcsd input[type="time"]:focus,
#nav.wvcsd input[type="week"]:focus,
#header.wvcsd input[type="week"]:focus,
#nav.wvcsd input[type="number"]:focus,
#header.wvcsd input[type="number"]:focus,
#nav.wvcsd input[type="email"]:focus,
#header.wvcsd input[type="email"]:focus,
#nav.wvcsd input[type="url"]:focus,
#header.wvcsd input[type="url"]:focus,
#nav.wvcsd input[type="search"]:focus,
#header.wvcsd input[type="search"]:focus,
#nav.wvcsd input[type="tel"]:focus,
#header.wvcsd input[type="tel"]:focus,
#nav.wvcsd input[type="color"]:focus,
#header.wvcsd input[type="color"]:focus,
#nav.wvcsd .uneditable-input:focus,
#header.wvcsd .uneditable-input:focus {
  border-color: rgba(82, 168, 236, 0.8);
  outline: 0;
  outline: thin dotted \9;
  /* IE6-9 */
  -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075), 0 0 8px rgba(82,168,236,.6);
  -moz-box-shadow: inset 0 1px 1px rgba(0,0,0,.075), 0 0 8px rgba(82,168,236,.6);
  box-shadow: inset 0 1px 1px rgba(0,0,0,.075), 0 0 8px rgba(82,168,236,.6);
}
#nav.wvcsd input[type="radio"],
#header.wvcsd input[type="radio"],
#nav.wvcsd input[type="checkbox"],
#header.wvcsd input[type="checkbox"] {
  margin: 4px 0 0;
  *margin-top: 0;
  /* IE7 */
  margin-top: 1px \9;
  /* IE8-9 */
  line-height: normal;
}
#nav.wvcsd input[type="file"],
#header.wvcsd input[type="file"],
#nav.wvcsd input[type="image"],
#header.wvcsd input[type="image"],
#nav.wvcsd input[type="submit"],
#header.wvcsd input[type="submit"],
#nav.wvcsd input[type="reset"],
#header.wvcsd input[type="reset"],
#nav.wvcsd input[type="button"],
#header.wvcsd input[type="button"],
#nav.wvcsd input[type="radio"],
#header.wvcsd input[type="radio"],
#nav.wvcsd input[type="checkbox"],
#header.wvcsd input[type="checkbox"] {
  width: auto;
}
#nav.wvcsd select,
#header.wvcsd select,
#nav.wvcsd input[type="file"],
#header.wvcsd input[type="file"] {
  height: 30px;
  /* In IE7, the height of the select element cannot be changed by height, only font-size */
  *margin-top: 4px;
  /* For IE7, add top margin to align select with labels */
  line-height: 30px;
}
#nav.wvcsd select,
#header.wvcsd select {
  width: 220px;
  border: 1px solid #cccccc;
  background-color: #ffffff;
}
#nav.wvcsd select[multiple],
#header.wvcsd select[multiple],
#nav.wvcsd select[size],
#header.wvcsd select[size] {
  height: auto;
}
#nav.wvcsd select:focus,
#header.wvcsd select:focus,
#nav.wvcsd input[type="file"]:focus,
#header.wvcsd input[type="file"]:focus,
#nav.wvcsd input[type="radio"]:focus,
#header.wvcsd input[type="radio"]:focus,
#nav.wvcsd input[type="checkbox"]:focus,
#header.wvcsd input[type="checkbox"]:focus {
  outline: thin dotted #333;
  outline: 5px auto -webkit-focus-ring-color;
  outline-offset: -2px;
}
#nav.wvcsd .uneditable-input,
#header.wvcsd .uneditable-input,
#nav.wvcsd .uneditable-textarea,
#header.wvcsd .uneditable-textarea {
  color: #999999;
  background-color: #fcfcfc;
  border-color: #cccccc;
  -webkit-box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.025);
  -moz-box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.025);
  box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.025);
  cursor: not-allowed;
}
#nav.wvcsd .uneditable-input,
#header.wvcsd .uneditable-input {
  overflow: hidden;
  white-space: nowrap;
}
#nav.wvcsd .uneditable-textarea,
#header.wvcsd .uneditable-textarea {
  width: auto;
  height: auto;
}
#nav.wvcsd input:-moz-placeholder,
#header.wvcsd input:-moz-placeholder,
#nav.wvcsd textarea:-moz-placeholder,
#header.wvcsd textarea:-moz-placeholder {
  color: #999999;
}
#nav.wvcsd input:-ms-input-placeholder,
#header.wvcsd input:-ms-input-placeholder,
#nav.wvcsd textarea:-ms-input-placeholder,
#header.wvcsd textarea:-ms-input-placeholder {
  color: #999999;
}
#nav.wvcsd input::-webkit-input-placeholder,
#header.wvcsd input::-webkit-input-placeholder,
#nav.wvcsd textarea::-webkit-input-placeholder,
#header.wvcsd textarea::-webkit-input-placeholder {
  color: #999999;
}
#nav.wvcsd .radio,
#header.wvcsd .radio,
#nav.wvcsd .checkbox,
#header.wvcsd .checkbox {
  min-height: 20px;
  padding-left: 20px;
}
#nav.wvcsd .radio input[type="radio"],
#header.wvcsd .radio input[type="radio"],
#nav.wvcsd .checkbox input[type="checkbox"],
#header.wvcsd .checkbox input[type="checkbox"] {
  float: left;
  margin-left: -20px;
}
#nav.wvcsd .controls > .radio:first-child,
#header.wvcsd .controls > .radio:first-child,
#nav.wvcsd .controls > .checkbox:first-child,
#header.wvcsd .controls > .checkbox:first-child {
  padding-top: 5px;
}
#nav.wvcsd .radio.inline,
#header.wvcsd .radio.inline,
#nav.wvcsd .checkbox.inline,
#header.wvcsd .checkbox.inline {
  display: inline-block;
  padding-top: 5px;
  margin-bottom: 0;
  vertical-align: middle;
}
#nav.wvcsd .radio.inline + .radio.inline,
#header.wvcsd .radio.inline + .radio.inline,
#nav.wvcsd .checkbox.inline + .checkbox.inline,
#header.wvcsd .checkbox.inline + .checkbox.inline {
  margin-left: 10px;
}
#nav.wvcsd .input-mini,
#header.wvcsd .input-mini {
  width: 60px;
}
#nav.wvcsd .input-small,
#header.wvcsd .input-small {
  width: 90px;
}
#nav.wvcsd .input-medium,
#header.wvcsd .input-medium {
  width: 150px;
}
#nav.wvcsd .input-large,
#header.wvcsd .input-large {
  width: 210px;
}
#nav.wvcsd .input-xlarge,
#header.wvcsd .input-xlarge {
  width: 270px;
}
#nav.wvcsd .input-xxlarge,
#header.wvcsd .input-xxlarge {
  width: 530px;
}
#nav.wvcsd input[class*="span"],
#header.wvcsd input[class*="span"],
#nav.wvcsd select[class*="span"],
#header.wvcsd select[class*="span"],
#nav.wvcsd textarea[class*="span"],
#header.wvcsd textarea[class*="span"],
#nav.wvcsd .uneditable-input[class*="span"],
#header.wvcsd .uneditable-input[class*="span"],
#nav.wvcsd .row-fluid input[class*="span"],
#header.wvcsd .row-fluid input[class*="span"],
#nav.wvcsd .row-fluid select[class*="span"],
#header.wvcsd .row-fluid select[class*="span"],
#nav.wvcsd .row-fluid textarea[class*="span"],
#header.wvcsd .row-fluid textarea[class*="span"],
#nav.wvcsd .row-fluid .uneditable-input[class*="span"],
#header.wvcsd .row-fluid .uneditable-input[class*="span"] {
  float: none;
  margin-left: 0;
}
#nav.wvcsd .input-append input[class*="span"],
#header.wvcsd .input-append input[class*="span"],
#nav.wvcsd .input-append .uneditable-input[class*="span"],
#header.wvcsd .input-append .uneditable-input[class*="span"],
#nav.wvcsd .input-prepend input[class*="span"],
#header.wvcsd .input-prepend input[class*="span"],
#nav.wvcsd .input-prepend .uneditable-input[class*="span"],
#header.wvcsd .input-prepend .uneditable-input[class*="span"],
#nav.wvcsd .row-fluid input[class*="span"],
#header.wvcsd .row-fluid input[class*="span"],
#nav.wvcsd .row-fluid select[class*="span"],
#header.wvcsd .row-fluid select[class*="span"],
#nav.wvcsd .row-fluid textarea[class*="span"],
#header.wvcsd .row-fluid textarea[class*="span"],
#nav.wvcsd .row-fluid .uneditable-input[class*="span"],
#header.wvcsd .row-fluid .uneditable-input[class*="span"],
#nav.wvcsd .row-fluid .input-prepend [class*="span"],
#header.wvcsd .row-fluid .input-prepend [class*="span"],
#nav.wvcsd .row-fluid .input-append [class*="span"],
#header.wvcsd .row-fluid .input-append [class*="span"] {
  display: inline-block;
}
#nav.wvcsd input,
#header.wvcsd input,
#nav.wvcsd textarea,
#header.wvcsd textarea,
#nav.wvcsd .uneditable-input,
#header.wvcsd .uneditable-input {
  margin-left: 0;
}
#nav.wvcsd .controls-row [class*="span"] + [class*="span"],
#header.wvcsd .controls-row [class*="span"] + [class*="span"] {
  margin-left: 20px;
}
#nav.wvcsd input.span12,
#header.wvcsd input.span12,
#nav.wvcsd textarea.span12,
#header.wvcsd textarea.span12,
#nav.wvcsd .uneditable-input.span12,
#header.wvcsd .uneditable-input.span12 {
  width: 926px;
}
#nav.wvcsd input.span11,
#header.wvcsd input.span11,
#nav.wvcsd textarea.span11,
#header.wvcsd textarea.span11,
#nav.wvcsd .uneditable-input.span11,
#header.wvcsd .uneditable-input.span11 {
  width: 846px;
}
#nav.wvcsd input.span10,
#header.wvcsd input.span10,
#nav.wvcsd textarea.span10,
#header.wvcsd textarea.span10,
#nav.wvcsd .uneditable-input.span10,
#header.wvcsd .uneditable-input.span10 {
  width: 766px;
}
#nav.wvcsd input.span9,
#header.wvcsd input.span9,
#nav.wvcsd textarea.span9,
#header.wvcsd textarea.span9,
#nav.wvcsd .uneditable-input.span9,
#header.wvcsd .uneditable-input.span9 {
  width: 686px;
}
#nav.wvcsd input.span8,
#header.wvcsd input.span8,
#nav.wvcsd textarea.span8,
#header.wvcsd textarea.span8,
#nav.wvcsd .uneditable-input.span8,
#header.wvcsd .uneditable-input.span8 {
  width: 606px;
}
#nav.wvcsd input.span7,
#header.wvcsd input.span7,
#nav.wvcsd textarea.span7,
#header.wvcsd textarea.span7,
#nav.wvcsd .uneditable-input.span7,
#header.wvcsd .uneditable-input.span7 {
  width: 526px;
}
#nav.wvcsd input.span6,
#header.wvcsd input.span6,
#nav.wvcsd textarea.span6,
#header.wvcsd textarea.span6,
#nav.wvcsd .uneditable-input.span6,
#header.wvcsd .uneditable-input.span6 {
  width: 446px;
}
#nav.wvcsd input.span5,
#header.wvcsd input.span5,
#nav.wvcsd textarea.span5,
#header.wvcsd textarea.span5,
#nav.wvcsd .uneditable-input.span5,
#header.wvcsd .uneditable-input.span5 {
  width: 366px;
}
#nav.wvcsd input.span4,
#header.wvcsd input.span4,
#nav.wvcsd textarea.span4,
#header.wvcsd textarea.span4,
#nav.wvcsd .uneditable-input.span4,
#header.wvcsd .uneditable-input.span4 {
  width: 286px;
}
#nav.wvcsd input.span3,
#header.wvcsd input.span3,
#nav.wvcsd textarea.span3,
#header.wvcsd textarea.span3,
#nav.wvcsd .uneditable-input.span3,
#header.wvcsd .uneditable-input.span3 {
  width: 206px;
}
#nav.wvcsd input.span2,
#header.wvcsd input.span2,
#nav.wvcsd textarea.span2,
#header.wvcsd textarea.span2,
#nav.wvcsd .uneditable-input.span2,
#header.wvcsd .uneditable-input.span2 {
  width: 126px;
}
#nav.wvcsd input.span1,
#header.wvcsd input.span1,
#nav.wvcsd textarea.span1,
#header.wvcsd textarea.span1,
#nav.wvcsd .uneditable-input.span1,
#header.wvcsd .uneditable-input.span1 {
  width: 46px;
}
#nav.wvcsd .controls-row,
#header.wvcsd .controls-row {
  *zoom: 1;
}
#nav.wvcsd .controls-row:before,
#header.wvcsd .controls-row:before,
#nav.wvcsd .controls-row:after,
#header.wvcsd .controls-row:after {
  display: table;
  content: "";
  line-height: 0;
}
#nav.wvcsd .controls-row:after,
#header.wvcsd .controls-row:after {
  clear: both;
}
#nav.wvcsd .controls-row [class*="span"],
#header.wvcsd .controls-row [class*="span"],
#nav.wvcsd .row-fluid .controls-row [class*="span"],
#header.wvcsd .row-fluid .controls-row [class*="span"] {
  float: left;
}
#nav.wvcsd .controls-row .checkbox[class*="span"],
#header.wvcsd .controls-row .checkbox[class*="span"],
#nav.wvcsd .controls-row .radio[class*="span"],
#header.wvcsd .controls-row .radio[class*="span"] {
  padding-top: 5px;
}
#nav.wvcsd input[disabled],
#header.wvcsd input[disabled],
#nav.wvcsd select[disabled],
#header.wvcsd select[disabled],
#nav.wvcsd textarea[disabled],
#header.wvcsd textarea[disabled],
#nav.wvcsd input[readonly],
#header.wvcsd input[readonly],
#nav.wvcsd select[readonly],
#header.wvcsd select[readonly],
#nav.wvcsd textarea[readonly],
#header.wvcsd textarea[readonly] {
  cursor: not-allowed;
  background-color: #eeeeee;
}
#nav.wvcsd input[type="radio"][disabled],
#header.wvcsd input[type="radio"][disabled],
#nav.wvcsd input[type="checkbox"][disabled],
#header.wvcsd input[type="checkbox"][disabled],
#nav.wvcsd input[type="radio"][readonly],
#header.wvcsd input[type="radio"][readonly],
#nav.wvcsd input[type="checkbox"][readonly],
#header.wvcsd input[type="checkbox"][readonly] {
  background-color: transparent;
}
#nav.wvcsd .control-group.warning .control-label,
#header.wvcsd .control-group.warning .control-label,
#nav.wvcsd .control-group.warning .help-block,
#header.wvcsd .control-group.warning .help-block,
#nav.wvcsd .control-group.warning .help-inline,
#header.wvcsd .control-group.warning .help-inline {
  color: #c09853;
}
#nav.wvcsd .control-group.warning .checkbox,
#header.wvcsd .control-group.warning .checkbox,
#nav.wvcsd .control-group.warning .radio,
#header.wvcsd .control-group.warning .radio,
#nav.wvcsd .control-group.warning input,
#header.wvcsd .control-group.warning input,
#nav.wvcsd .control-group.warning select,
#header.wvcsd .control-group.warning select,
#nav.wvcsd .control-group.warning textarea,
#header.wvcsd .control-group.warning textarea {
  color: #c09853;
}
#nav.wvcsd .control-group.warning input,
#header.wvcsd .control-group.warning input,
#nav.wvcsd .control-group.warning select,
#header.wvcsd .control-group.warning select,
#nav.wvcsd .control-group.warning textarea,
#header.wvcsd .control-group.warning textarea {
  border-color: #c09853;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
  -moz-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
  box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
}
#nav.wvcsd .control-group.warning input:focus,
#header.wvcsd .control-group.warning input:focus,
#nav.wvcsd .control-group.warning select:focus,
#header.wvcsd .control-group.warning select:focus,
#nav.wvcsd .control-group.warning textarea:focus,
#header.wvcsd .control-group.warning textarea:focus {
  border-color: #a47e3c;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 6px #dbc59e;
  -moz-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 6px #dbc59e;
  box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 6px #dbc59e;
}
#nav.wvcsd .control-group.warning .input-prepend .add-on,
#header.wvcsd .control-group.warning .input-prepend .add-on,
#nav.wvcsd .control-group.warning .input-append .add-on,
#header.wvcsd .control-group.warning .input-append .add-on {
  color: #c09853;
  background-color: #fcf8e3;
  border-color: #c09853;
}
#nav.wvcsd .control-group.error .control-label,
#header.wvcsd .control-group.error .control-label,
#nav.wvcsd .control-group.error .help-block,
#header.wvcsd .control-group.error .help-block,
#nav.wvcsd .control-group.error .help-inline,
#header.wvcsd .control-group.error .help-inline {
  color: #b94a48;
}
#nav.wvcsd .control-group.error .checkbox,
#header.wvcsd .control-group.error .checkbox,
#nav.wvcsd .control-group.error .radio,
#header.wvcsd .control-group.error .radio,
#nav.wvcsd .control-group.error input,
#header.wvcsd .control-group.error input,
#nav.wvcsd .control-group.error select,
#header.wvcsd .control-group.error select,
#nav.wvcsd .control-group.error textarea,
#header.wvcsd .control-group.error textarea {
  color: #b94a48;
}
#nav.wvcsd .control-group.error input,
#header.wvcsd .control-group.error input,
#nav.wvcsd .control-group.error select,
#header.wvcsd .control-group.error select,
#nav.wvcsd .control-group.error textarea,
#header.wvcsd .control-group.error textarea {
  border-color: #b94a48;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
  -moz-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
  box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
}
#nav.wvcsd .control-group.error input:focus,
#header.wvcsd .control-group.error input:focus,
#nav.wvcsd .control-group.error select:focus,
#header.wvcsd .control-group.error select:focus,
#nav.wvcsd .control-group.error textarea:focus,
#header.wvcsd .control-group.error textarea:focus {
  border-color: #953b39;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 6px #d59392;
  -moz-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 6px #d59392;
  box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 6px #d59392;
}
#nav.wvcsd .control-group.error .input-prepend .add-on,
#header.wvcsd .control-group.error .input-prepend .add-on,
#nav.wvcsd .control-group.error .input-append .add-on,
#header.wvcsd .control-group.error .input-append .add-on {
  color: #b94a48;
  background-color: #f2dede;
  border-color: #b94a48;
}
#nav.wvcsd .control-group.success .control-label,
#header.wvcsd .control-group.success .control-label,
#nav.wvcsd .control-group.success .help-block,
#header.wvcsd .control-group.success .help-block,
#nav.wvcsd .control-group.success .help-inline,
#header.wvcsd .control-group.success .help-inline {
  color: #468847;
}
#nav.wvcsd .control-group.success .checkbox,
#header.wvcsd .control-group.success .checkbox,
#nav.wvcsd .control-group.success .radio,
#header.wvcsd .control-group.success .radio,
#nav.wvcsd .control-group.success input,
#header.wvcsd .control-group.success input,
#nav.wvcsd .control-group.success select,
#header.wvcsd .control-group.success select,
#nav.wvcsd .control-group.success textarea,
#header.wvcsd .control-group.success textarea {
  color: #468847;
}
#nav.wvcsd .control-group.success input,
#header.wvcsd .control-group.success input,
#nav.wvcsd .control-group.success select,
#header.wvcsd .control-group.success select,
#nav.wvcsd .control-group.success textarea,
#header.wvcsd .control-group.success textarea {
  border-color: #468847;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
  -moz-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
  box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
}
#nav.wvcsd .control-group.success input:focus,
#header.wvcsd .control-group.success input:focus,
#nav.wvcsd .control-group.success select:focus,
#header.wvcsd .control-group.success select:focus,
#nav.wvcsd .control-group.success textarea:focus,
#header.wvcsd .control-group.success textarea:focus {
  border-color: #356635;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 6px #7aba7b;
  -moz-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 6px #7aba7b;
  box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 6px #7aba7b;
}
#nav.wvcsd .control-group.success .input-prepend .add-on,
#header.wvcsd .control-group.success .input-prepend .add-on,
#nav.wvcsd .control-group.success .input-append .add-on,
#header.wvcsd .control-group.success .input-append .add-on {
  color: #468847;
  background-color: #dff0d8;
  border-color: #468847;
}
#nav.wvcsd .control-group.info .control-label,
#header.wvcsd .control-group.info .control-label,
#nav.wvcsd .control-group.info .help-block,
#header.wvcsd .control-group.info .help-block,
#nav.wvcsd .control-group.info .help-inline,
#header.wvcsd .control-group.info .help-inline {
  color: #3a87ad;
}
#nav.wvcsd .control-group.info .checkbox,
#header.wvcsd .control-group.info .checkbox,
#nav.wvcsd .control-group.info .radio,
#header.wvcsd .control-group.info .radio,
#nav.wvcsd .control-group.info input,
#header.wvcsd .control-group.info input,
#nav.wvcsd .control-group.info select,
#header.wvcsd .control-group.info select,
#nav.wvcsd .control-group.info textarea,
#header.wvcsd .control-group.info textarea {
  color: #3a87ad;
}
#nav.wvcsd .control-group.info input,
#header.wvcsd .control-group.info input,
#nav.wvcsd .control-group.info select,
#header.wvcsd .control-group.info select,
#nav.wvcsd .control-group.info textarea,
#header.wvcsd .control-group.info textarea {
  border-color: #3a87ad;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
  -moz-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
  box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
}
#nav.wvcsd .control-group.info input:focus,
#header.wvcsd .control-group.info input:focus,
#nav.wvcsd .control-group.info select:focus,
#header.wvcsd .control-group.info select:focus,
#nav.wvcsd .control-group.info textarea:focus,
#header.wvcsd .control-group.info textarea:focus {
  border-color: #2d6987;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 6px #7ab5d3;
  -moz-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 6px #7ab5d3;
  box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 6px #7ab5d3;
}
#nav.wvcsd .control-group.info .input-prepend .add-on,
#header.wvcsd .control-group.info .input-prepend .add-on,
#nav.wvcsd .control-group.info .input-append .add-on,
#header.wvcsd .control-group.info .input-append .add-on {
  color: #3a87ad;
  background-color: #d9edf7;
  border-color: #3a87ad;
}
#nav.wvcsd input:focus:invalid,
#header.wvcsd input:focus:invalid,
#nav.wvcsd textarea:focus:invalid,
#header.wvcsd textarea:focus:invalid,
#nav.wvcsd select:focus:invalid,
#header.wvcsd select:focus:invalid {
  color: #b94a48;
  border-color: #ee5f5b;
}
#nav.wvcsd input:focus:invalid:focus,
#header.wvcsd input:focus:invalid:focus,
#nav.wvcsd textarea:focus:invalid:focus,
#header.wvcsd textarea:focus:invalid:focus,
#nav.wvcsd select:focus:invalid:focus,
#header.wvcsd select:focus:invalid:focus {
  border-color: #e9322d;
  -webkit-box-shadow: 0 0 6px #f8b9b7;
  -moz-box-shadow: 0 0 6px #f8b9b7;
  box-shadow: 0 0 6px #f8b9b7;
}
#nav.wvcsd .form-actions,
#header.wvcsd .form-actions {
  padding: 19px 20px 20px;
  margin-top: 20px;
  margin-bottom: 20px;
  background-color: #f5f5f5;
  border-top: 1px solid #e5e5e5;
  *zoom: 1;
}
#nav.wvcsd .form-actions:before,
#header.wvcsd .form-actions:before,
#nav.wvcsd .form-actions:after,
#header.wvcsd .form-actions:after {
  display: table;
  content: "";
  line-height: 0;
}
#nav.wvcsd .form-actions:after,
#header.wvcsd .form-actions:after {
  clear: both;
}
#nav.wvcsd .help-block,
#header.wvcsd .help-block,
#nav.wvcsd .help-inline,
#header.wvcsd .help-inline {
  color: #595959;
}
#nav.wvcsd .help-block,
#header.wvcsd .help-block {
  display: block;
  margin-bottom: 10px;
}
#nav.wvcsd .help-inline,
#header.wvcsd .help-inline {
  display: inline-block;
  *display: inline;
  /* IE7 inline-block hack */
  *zoom: 1;
  vertical-align: middle;
  padding-left: 5px;
}
#nav.wvcsd .input-append,
#header.wvcsd .input-append,
#nav.wvcsd .input-prepend,
#header.wvcsd .input-prepend {
  display: inline-block;
  margin-bottom: 10px;
  vertical-align: middle;
  font-size: 0;
  white-space: nowrap;
}
#nav.wvcsd .input-append input,
#header.wvcsd .input-append input,
#nav.wvcsd .input-prepend input,
#header.wvcsd .input-prepend input,
#nav.wvcsd .input-append select,
#header.wvcsd .input-append select,
#nav.wvcsd .input-prepend select,
#header.wvcsd .input-prepend select,
#nav.wvcsd .input-append .uneditable-input,
#header.wvcsd .input-append .uneditable-input,
#nav.wvcsd .input-prepend .uneditable-input,
#header.wvcsd .input-prepend .uneditable-input,
#nav.wvcsd .input-append .dropdown-menu,
#header.wvcsd .input-append .dropdown-menu,
#nav.wvcsd .input-prepend .dropdown-menu,
#header.wvcsd .input-prepend .dropdown-menu,
#nav.wvcsd .input-append .popover,
#header.wvcsd .input-append .popover,
#nav.wvcsd .input-prepend .popover,
#header.wvcsd .input-prepend .popover {
  font-size: 14px;
}
#nav.wvcsd .input-append input,
#header.wvcsd .input-append input,
#nav.wvcsd .input-prepend input,
#header.wvcsd .input-prepend input,
#nav.wvcsd .input-append select,
#header.wvcsd .input-append select,
#nav.wvcsd .input-prepend select,
#header.wvcsd .input-prepend select,
#nav.wvcsd .input-append .uneditable-input,
#header.wvcsd .input-append .uneditable-input,
#nav.wvcsd .input-prepend .uneditable-input,
#header.wvcsd .input-prepend .uneditable-input {
  position: relative;
  margin-bottom: 0;
  *margin-left: 0;
  vertical-align: top;
  -webkit-border-radius: 0 4px 4px 0;
  -moz-border-radius: 0 4px 4px 0;
  border-radius: 0 4px 4px 0;
}
#nav.wvcsd .input-append input:focus,
#header.wvcsd .input-append input:focus,
#nav.wvcsd .input-prepend input:focus,
#header.wvcsd .input-prepend input:focus,
#nav.wvcsd .input-append select:focus,
#header.wvcsd .input-append select:focus,
#nav.wvcsd .input-prepend select:focus,
#header.wvcsd .input-prepend select:focus,
#nav.wvcsd .input-append .uneditable-input:focus,
#header.wvcsd .input-append .uneditable-input:focus,
#nav.wvcsd .input-prepend .uneditable-input:focus,
#header.wvcsd .input-prepend .uneditable-input:focus {
  z-index: 2;
}
#nav.wvcsd .input-append .add-on,
#header.wvcsd .input-append .add-on,
#nav.wvcsd .input-prepend .add-on,
#header.wvcsd .input-prepend .add-on {
  display: inline-block;
  width: auto;
  height: 20px;
  min-width: 16px;
  padding: 4px 5px;
  font-size: 14px;
  font-weight: normal;
  line-height: 20px;
  text-align: center;
  text-shadow: 0 1px 0 #ffffff;
  background-color: #eeeeee;
  border: 1px solid #ccc;
}
#nav.wvcsd .input-append .add-on,
#header.wvcsd .input-append .add-on,
#nav.wvcsd .input-prepend .add-on,
#header.wvcsd .input-prepend .add-on,
#nav.wvcsd .input-append .btn,
#header.wvcsd .input-append .btn,
#nav.wvcsd .input-prepend .btn,
#header.wvcsd .input-prepend .btn,
#nav.wvcsd .input-append .btn-group > .dropdown-toggle,
#header.wvcsd .input-append .btn-group > .dropdown-toggle,
#nav.wvcsd .input-prepend .btn-group > .dropdown-toggle,
#header.wvcsd .input-prepend .btn-group > .dropdown-toggle {
  vertical-align: top;
  -webkit-border-radius: 0;
  -moz-border-radius: 0;
  border-radius: 0;
}
#nav.wvcsd .input-append .active,
#header.wvcsd .input-append .active,
#nav.wvcsd .input-prepend .active,
#header.wvcsd .input-prepend .active {
  background-color: #a9dba9;
  border-color: #46a546;
}
#nav.wvcsd .input-prepend .add-on,
#header.wvcsd .input-prepend .add-on,
#nav.wvcsd .input-prepend .btn,
#header.wvcsd .input-prepend .btn {
  margin-right: -1px;
}
#nav.wvcsd .input-prepend .add-on:first-child,
#header.wvcsd .input-prepend .add-on:first-child,
#nav.wvcsd .input-prepend .btn:first-child,
#header.wvcsd .input-prepend .btn:first-child {
  -webkit-border-radius: 4px 0 0 4px;
  -moz-border-radius: 4px 0 0 4px;
  border-radius: 4px 0 0 4px;
}
#nav.wvcsd .input-append input,
#header.wvcsd .input-append input,
#nav.wvcsd .input-append select,
#header.wvcsd .input-append select,
#nav.wvcsd .input-append .uneditable-input,
#header.wvcsd .input-append .uneditable-input {
  -webkit-border-radius: 4px 0 0 4px;
  -moz-border-radius: 4px 0 0 4px;
  border-radius: 4px 0 0 4px;
}
#nav.wvcsd .input-append input + .btn-group .btn:last-child,
#header.wvcsd .input-append input + .btn-group .btn:last-child,
#nav.wvcsd .input-append select + .btn-group .btn:last-child,
#header.wvcsd .input-append select + .btn-group .btn:last-child,
#nav.wvcsd .input-append .uneditable-input + .btn-group .btn:last-child,
#header.wvcsd .input-append .uneditable-input + .btn-group .btn:last-child {
  -webkit-border-radius: 0 4px 4px 0;
  -moz-border-radius: 0 4px 4px 0;
  border-radius: 0 4px 4px 0;
}
#nav.wvcsd .input-append .add-on,
#header.wvcsd .input-append .add-on,
#nav.wvcsd .input-append .btn,
#header.wvcsd .input-append .btn,
#nav.wvcsd .input-append .btn-group,
#header.wvcsd .input-append .btn-group {
  margin-left: -1px;
}
#nav.wvcsd .input-append .add-on:last-child,
#header.wvcsd .input-append .add-on:last-child,
#nav.wvcsd .input-append .btn:last-child,
#header.wvcsd .input-append .btn:last-child,
#nav.wvcsd .input-append .btn-group:last-child > .dropdown-toggle,
#header.wvcsd .input-append .btn-group:last-child > .dropdown-toggle {
  -webkit-border-radius: 0 4px 4px 0;
  -moz-border-radius: 0 4px 4px 0;
  border-radius: 0 4px 4px 0;
}
#nav.wvcsd .input-prepend.input-append input,
#header.wvcsd .input-prepend.input-append input,
#nav.wvcsd .input-prepend.input-append select,
#header.wvcsd .input-prepend.input-append select,
#nav.wvcsd .input-prepend.input-append .uneditable-input,
#header.wvcsd .input-prepend.input-append .uneditable-input {
  -webkit-border-radius: 0;
  -moz-border-radius: 0;
  border-radius: 0;
}
#nav.wvcsd .input-prepend.input-append input + .btn-group .btn,
#header.wvcsd .input-prepend.input-append input + .btn-group .btn,
#nav.wvcsd .input-prepend.input-append select + .btn-group .btn,
#header.wvcsd .input-prepend.input-append select + .btn-group .btn,
#nav.wvcsd .input-prepend.input-append .uneditable-input + .btn-group .btn,
#header.wvcsd .input-prepend.input-append .uneditable-input + .btn-group .btn {
  -webkit-border-radius: 0 4px 4px 0;
  -moz-border-radius: 0 4px 4px 0;
  border-radius: 0 4px 4px 0;
}
#nav.wvcsd .input-prepend.input-append .add-on:first-child,
#header.wvcsd .input-prepend.input-append .add-on:first-child,
#nav.wvcsd .input-prepend.input-append .btn:first-child,
#header.wvcsd .input-prepend.input-append .btn:first-child {
  margin-right: -1px;
  -webkit-border-radius: 4px 0 0 4px;
  -moz-border-radius: 4px 0 0 4px;
  border-radius: 4px 0 0 4px;
}
#nav.wvcsd .input-prepend.input-append .add-on:last-child,
#header.wvcsd .input-prepend.input-append .add-on:last-child,
#nav.wvcsd .input-prepend.input-append .btn:last-child,
#header.wvcsd .input-prepend.input-append .btn:last-child {
  margin-left: -1px;
  -webkit-border-radius: 0 4px 4px 0;
  -moz-border-radius: 0 4px 4px 0;
  border-radius: 0 4px 4px 0;
}
#nav.wvcsd .input-prepend.input-append .btn-group:first-child,
#header.wvcsd .input-prepend.input-append .btn-group:first-child {
  margin-left: 0;
}
#nav.wvcsd input.search-query,
#header.wvcsd input.search-query {
  padding-right: 14px;
  padding-right: 4px \9;
  padding-left: 14px;
  padding-left: 4px \9;
  /* IE7-8 doesn't have border-radius, so don't indent the padding */
  margin-bottom: 0;
  -webkit-border-radius: 15px;
  -moz-border-radius: 15px;
  border-radius: 15px;
}
#nav.wvcsd .form-search .input-append .search-query,
#header.wvcsd .form-search .input-append .search-query,
#nav.wvcsd .form-search .input-prepend .search-query,
#header.wvcsd .form-search .input-prepend .search-query {
  -webkit-border-radius: 0;
  -moz-border-radius: 0;
  border-radius: 0;
}
#nav.wvcsd .form-search .input-append .search-query,
#header.wvcsd .form-search .input-append .search-query {
  -webkit-border-radius: 14px 0 0 14px;
  -moz-border-radius: 14px 0 0 14px;
  border-radius: 14px 0 0 14px;
}
#nav.wvcsd .form-search .input-append .btn,
#header.wvcsd .form-search .input-append .btn {
  -webkit-border-radius: 0 14px 14px 0;
  -moz-border-radius: 0 14px 14px 0;
  border-radius: 0 14px 14px 0;
}
#nav.wvcsd .form-search .input-prepend .search-query,
#header.wvcsd .form-search .input-prepend .search-query {
  -webkit-border-radius: 0 14px 14px 0;
  -moz-border-radius: 0 14px 14px 0;
  border-radius: 0 14px 14px 0;
}
#nav.wvcsd .form-search .input-prepend .btn,
#header.wvcsd .form-search .input-prepend .btn {
  -webkit-border-radius: 14px 0 0 14px;
  -moz-border-radius: 14px 0 0 14px;
  border-radius: 14px 0 0 14px;
}
#nav.wvcsd .form-search input,
#header.wvcsd .form-search input,
#nav.wvcsd .form-inline input,
#header.wvcsd .form-inline input,
#nav.wvcsd .form-horizontal input,
#header.wvcsd .form-horizontal input,
#nav.wvcsd .form-search textarea,
#header.wvcsd .form-search textarea,
#nav.wvcsd .form-inline textarea,
#header.wvcsd .form-inline textarea,
#nav.wvcsd .form-horizontal textarea,
#header.wvcsd .form-horizontal textarea,
#nav.wvcsd .form-search select,
#header.wvcsd .form-search select,
#nav.wvcsd .form-inline select,
#header.wvcsd .form-inline select,
#nav.wvcsd .form-horizontal select,
#header.wvcsd .form-horizontal select,
#nav.wvcsd .form-search .help-inline,
#header.wvcsd .form-search .help-inline,
#nav.wvcsd .form-inline .help-inline,
#header.wvcsd .form-inline .help-inline,
#nav.wvcsd .form-horizontal .help-inline,
#header.wvcsd .form-horizontal .help-inline,
#nav.wvcsd .form-search .uneditable-input,
#header.wvcsd .form-search .uneditable-input,
#nav.wvcsd .form-inline .uneditable-input,
#header.wvcsd .form-inline .uneditable-input,
#nav.wvcsd .form-horizontal .uneditable-input,
#header.wvcsd .form-horizontal .uneditable-input,
#nav.wvcsd .form-search .input-prepend,
#header.wvcsd .form-search .input-prepend,
#nav.wvcsd .form-inline .input-prepend,
#header.wvcsd .form-inline .input-prepend,
#nav.wvcsd .form-horizontal .input-prepend,
#header.wvcsd .form-horizontal .input-prepend,
#nav.wvcsd .form-search .input-append,
#header.wvcsd .form-search .input-append,
#nav.wvcsd .form-inline .input-append,
#header.wvcsd .form-inline .input-append,
#nav.wvcsd .form-horizontal .input-append,
#header.wvcsd .form-horizontal .input-append {
  display: inline-block;
  *display: inline;
  /* IE7 inline-block hack */
  *zoom: 1;
  margin-bottom: 0;
  vertical-align: middle;
}
#nav.wvcsd .form-search .hide,
#header.wvcsd .form-search .hide,
#nav.wvcsd .form-inline .hide,
#header.wvcsd .form-inline .hide,
#nav.wvcsd .form-horizontal .hide,
#header.wvcsd .form-horizontal .hide {
  display: none;
}
#nav.wvcsd .form-search label,
#header.wvcsd .form-search label,
#nav.wvcsd .form-inline label,
#header.wvcsd .form-inline label,
#nav.wvcsd .form-search .btn-group,
#header.wvcsd .form-search .btn-group,
#nav.wvcsd .form-inline .btn-group,
#header.wvcsd .form-inline .btn-group {
  display: inline-block;
}
#nav.wvcsd .form-search .input-append,
#header.wvcsd .form-search .input-append,
#nav.wvcsd .form-inline .input-append,
#header.wvcsd .form-inline .input-append,
#nav.wvcsd .form-search .input-prepend,
#header.wvcsd .form-search .input-prepend,
#nav.wvcsd .form-inline .input-prepend,
#header.wvcsd .form-inline .input-prepend {
  margin-bottom: 0;
}
#nav.wvcsd .form-search .radio,
#header.wvcsd .form-search .radio,
#nav.wvcsd .form-search .checkbox,
#header.wvcsd .form-search .checkbox,
#nav.wvcsd .form-inline .radio,
#header.wvcsd .form-inline .radio,
#nav.wvcsd .form-inline .checkbox,
#header.wvcsd .form-inline .checkbox {
  padding-left: 0;
  margin-bottom: 0;
  vertical-align: middle;
}
#nav.wvcsd .form-search .radio input[type="radio"],
#header.wvcsd .form-search .radio input[type="radio"],
#nav.wvcsd .form-search .checkbox input[type="checkbox"],
#header.wvcsd .form-search .checkbox input[type="checkbox"],
#nav.wvcsd .form-inline .radio input[type="radio"],
#header.wvcsd .form-inline .radio input[type="radio"],
#nav.wvcsd .form-inline .checkbox input[type="checkbox"],
#header.wvcsd .form-inline .checkbox input[type="checkbox"] {
  float: left;
  margin-right: 3px;
  margin-left: 0;
}
#nav.wvcsd .control-group,
#header.wvcsd .control-group {
  margin-bottom: 10px;
}
#nav.wvcsd legend + .control-group,
#header.wvcsd legend + .control-group {
  margin-top: 20px;
  -webkit-margin-top-collapse: separate;
}
#nav.wvcsd .form-horizontal .control-group,
#header.wvcsd .form-horizontal .control-group {
  margin-bottom: 20px;
  *zoom: 1;
}
#nav.wvcsd .form-horizontal .control-group:before,
#header.wvcsd .form-horizontal .control-group:before,
#nav.wvcsd .form-horizontal .control-group:after,
#header.wvcsd .form-horizontal .control-group:after {
  display: table;
  content: "";
  line-height: 0;
}
#nav.wvcsd .form-horizontal .control-group:after,
#header.wvcsd .form-horizontal .control-group:after {
  clear: both;
}
#nav.wvcsd .form-horizontal .control-label,
#header.wvcsd .form-horizontal .control-label {
  float: left;
  width: 160px;
  padding-top: 5px;
  text-align: right;
}
#nav.wvcsd .form-horizontal .controls,
#header.wvcsd .form-horizontal .controls {
  *display: inline-block;
  *padding-left: 20px;
  margin-left: 180px;
  *margin-left: 0;
}
#nav.wvcsd .form-horizontal .controls:first-child,
#header.wvcsd .form-horizontal .controls:first-child {
  *padding-left: 180px;
}
#nav.wvcsd .form-horizontal .help-block,
#header.wvcsd .form-horizontal .help-block {
  margin-bottom: 0;
}
#nav.wvcsd .form-horizontal input + .help-block,
#header.wvcsd .form-horizontal input + .help-block,
#nav.wvcsd .form-horizontal select + .help-block,
#header.wvcsd .form-horizontal select + .help-block,
#nav.wvcsd .form-horizontal textarea + .help-block,
#header.wvcsd .form-horizontal textarea + .help-block,
#nav.wvcsd .form-horizontal .uneditable-input + .help-block,
#header.wvcsd .form-horizontal .uneditable-input + .help-block,
#nav.wvcsd .form-horizontal .input-prepend + .help-block,
#header.wvcsd .form-horizontal .input-prepend + .help-block,
#nav.wvcsd .form-horizontal .input-append + .help-block,
#header.wvcsd .form-horizontal .input-append + .help-block {
  margin-top: 10px;
}
#nav.wvcsd .form-horizontal .form-actions,
#header.wvcsd .form-horizontal .form-actions {
  padding-left: 180px;
}
#nav.wvcsd .row,
#header.wvcsd .row {
  margin-left: -20px;
  *zoom: 1;
}
#nav.wvcsd .row:before,
#header.wvcsd .row:before,
#nav.wvcsd .row:after,
#header.wvcsd .row:after {
  display: table;
  content: "";
  line-height: 0;
}
#nav.wvcsd .row:after,
#header.wvcsd .row:after {
  clear: both;
}
#nav.wvcsd [class*="span"],
#header.wvcsd [class*="span"] {
  float: left;
  min-height: 1px;
  margin-left: 20px;
}
#nav.wvcsd .container,
#header.wvcsd .container,
#nav.wvcsd .navbar-static-top .container,
#header.wvcsd .navbar-static-top .container,
#nav.wvcsd .navbar-fixed-top .container,
#header.wvcsd .navbar-fixed-top .container,
#nav.wvcsd .navbar-fixed-bottom .container,
#header.wvcsd .navbar-fixed-bottom .container {
  width: 940px;
}
#nav.wvcsd .span12,
#header.wvcsd .span12 {
  width: 940px;
}
#nav.wvcsd .span11,
#header.wvcsd .span11 {
  width: 860px;
}
#nav.wvcsd .span10,
#header.wvcsd .span10 {
  width: 780px;
}
#nav.wvcsd .span9,
#header.wvcsd .span9 {
  width: 700px;
}
#nav.wvcsd .span8,
#header.wvcsd .span8 {
  width: 620px;
}
#nav.wvcsd .span7,
#header.wvcsd .span7 {
  width: 540px;
}
#nav.wvcsd .span6,
#header.wvcsd .span6 {
  width: 460px;
}
#nav.wvcsd .span5,
#header.wvcsd .span5 {
  width: 380px;
}
#nav.wvcsd .span4,
#header.wvcsd .span4 {
  width: 300px;
}
#nav.wvcsd .span3,
#header.wvcsd .span3 {
  width: 220px;
}
#nav.wvcsd .span2,
#header.wvcsd .span2 {
  width: 140px;
}
#nav.wvcsd .span1,
#header.wvcsd .span1 {
  width: 60px;
}
#nav.wvcsd .offset12,
#header.wvcsd .offset12 {
  margin-left: 980px;
}
#nav.wvcsd .offset11,
#header.wvcsd .offset11 {
  margin-left: 900px;
}
#nav.wvcsd .offset10,
#header.wvcsd .offset10 {
  margin-left: 820px;
}
#nav.wvcsd .offset9,
#header.wvcsd .offset9 {
  margin-left: 740px;
}
#nav.wvcsd .offset8,
#header.wvcsd .offset8 {
  margin-left: 660px;
}
#nav.wvcsd .offset7,
#header.wvcsd .offset7 {
  margin-left: 580px;
}
#nav.wvcsd .offset6,
#header.wvcsd .offset6 {
  margin-left: 500px;
}
#nav.wvcsd .offset5,
#header.wvcsd .offset5 {
  margin-left: 420px;
}
#nav.wvcsd .offset4,
#header.wvcsd .offset4 {
  margin-left: 340px;
}
#nav.wvcsd .offset3,
#header.wvcsd .offset3 {
  margin-left: 260px;
}
#nav.wvcsd .offset2,
#header.wvcsd .offset2 {
  margin-left: 180px;
}
#nav.wvcsd .offset1,
#header.wvcsd .offset1 {
  margin-left: 100px;
}
#nav.wvcsd .row-fluid,
#header.wvcsd .row-fluid {
  width: 100%;
  *zoom: 1;
}
#nav.wvcsd .row-fluid:before,
#header.wvcsd .row-fluid:before,
#nav.wvcsd .row-fluid:after,
#header.wvcsd .row-fluid:after {
  display: table;
  content: "";
  line-height: 0;
}
#nav.wvcsd .row-fluid:after,
#header.wvcsd .row-fluid:after {
  clear: both;
}
#nav.wvcsd .row-fluid [class*="span"],
#header.wvcsd .row-fluid [class*="span"] {
  display: block;
  width: 100%;
  min-height: 30px;
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
  float: left;
  margin-left: 2.127659574468085%;
  *margin-left: 2.074468085106383%;
}
#nav.wvcsd .row-fluid [class*="span"]:first-child,
#header.wvcsd .row-fluid [class*="span"]:first-child {
  margin-left: 0;
}
#nav.wvcsd .row-fluid .controls-row [class*="span"] + [class*="span"],
#header.wvcsd .row-fluid .controls-row [class*="span"] + [class*="span"] {
  margin-left: 2.127659574468085%;
}
#nav.wvcsd .row-fluid .span12,
#header.wvcsd .row-fluid .span12 {
  width: 100%;
  *width: 99.94680851063829%;
}
#nav.wvcsd .row-fluid .span11,
#header.wvcsd .row-fluid .span11 {
  width: 91.48936170212765%;
  *width: 91.43617021276594%;
}
#nav.wvcsd .row-fluid .span10,
#header.wvcsd .row-fluid .span10 {
  width: 82.97872340425532%;
  *width: 82.92553191489361%;
}
#nav.wvcsd .row-fluid .span9,
#header.wvcsd .row-fluid .span9 {
  width: 74.46808510638297%;
  *width: 74.41489361702126%;
}
#nav.wvcsd .row-fluid .span8,
#header.wvcsd .row-fluid .span8 {
  width: 65.95744680851064%;
  *width: 65.90425531914893%;
}
#nav.wvcsd .row-fluid .span7,
#header.wvcsd .row-fluid .span7 {
  width: 57.44680851063829%;
  *width: 57.39361702127659%;
}
#nav.wvcsd .row-fluid .span6,
#header.wvcsd .row-fluid .span6 {
  width: 48.93617021276595%;
  *width: 48.88297872340425%;
}
#nav.wvcsd .row-fluid .span5,
#header.wvcsd .row-fluid .span5 {
  width: 40.42553191489362%;
  *width: 40.37234042553192%;
}
#nav.wvcsd .row-fluid .span4,
#header.wvcsd .row-fluid .span4 {
  width: 31.914893617021278%;
  *width: 31.861702127659576%;
}
#nav.wvcsd .row-fluid .span3,
#header.wvcsd .row-fluid .span3 {
  width: 23.404255319148934%;
  *width: 23.351063829787233%;
}
#nav.wvcsd .row-fluid .span2,
#header.wvcsd .row-fluid .span2 {
  width: 14.893617021276595%;
  *width: 14.840425531914894%;
}
#nav.wvcsd .row-fluid .span1,
#header.wvcsd .row-fluid .span1 {
  width: 6.382978723404255%;
  *width: 6.329787234042553%;
}
#nav.wvcsd .row-fluid .offset12,
#header.wvcsd .row-fluid .offset12 {
  margin-left: 104.25531914893617%;
  *margin-left: 104.14893617021275%;
}
#nav.wvcsd .row-fluid .offset12:first-child,
#header.wvcsd .row-fluid .offset12:first-child {
  margin-left: 102.12765957446808%;
  *margin-left: 102.02127659574467%;
}
#nav.wvcsd .row-fluid .offset11,
#header.wvcsd .row-fluid .offset11 {
  margin-left: 95.74468085106382%;
  *margin-left: 95.6382978723404%;
}
#nav.wvcsd .row-fluid .offset11:first-child,
#header.wvcsd .row-fluid .offset11:first-child {
  margin-left: 93.61702127659574%;
  *margin-left: 93.51063829787232%;
}
#nav.wvcsd .row-fluid .offset10,
#header.wvcsd .row-fluid .offset10 {
  margin-left: 87.23404255319149%;
  *margin-left: 87.12765957446807%;
}
#nav.wvcsd .row-fluid .offset10:first-child,
#header.wvcsd .row-fluid .offset10:first-child {
  margin-left: 85.1063829787234%;
  *margin-left: 84.99999999999999%;
}
#nav.wvcsd .row-fluid .offset9,
#header.wvcsd .row-fluid .offset9 {
  margin-left: 78.72340425531914%;
  *margin-left: 78.61702127659572%;
}
#nav.wvcsd .row-fluid .offset9:first-child,
#header.wvcsd .row-fluid .offset9:first-child {
  margin-left: 76.59574468085106%;
  *margin-left: 76.48936170212764%;
}
#nav.wvcsd .row-fluid .offset8,
#header.wvcsd .row-fluid .offset8 {
  margin-left: 70.2127659574468%;
  *margin-left: 70.10638297872339%;
}
#nav.wvcsd .row-fluid .offset8:first-child,
#header.wvcsd .row-fluid .offset8:first-child {
  margin-left: 68.08510638297872%;
  *margin-left: 67.9787234042553%;
}
#nav.wvcsd .row-fluid .offset7,
#header.wvcsd .row-fluid .offset7 {
  margin-left: 61.70212765957446%;
  *margin-left: 61.59574468085106%;
}
#nav.wvcsd .row-fluid .offset7:first-child,
#header.wvcsd .row-fluid .offset7:first-child {
  margin-left: 59.574468085106375%;
  *margin-left: 59.46808510638297%;
}
#nav.wvcsd .row-fluid .offset6,
#header.wvcsd .row-fluid .offset6 {
  margin-left: 53.191489361702125%;
  *margin-left: 53.085106382978715%;
}
#nav.wvcsd .row-fluid .offset6:first-child,
#header.wvcsd .row-fluid .offset6:first-child {
  margin-left: 51.063829787234035%;
  *margin-left: 50.95744680851063%;
}
#nav.wvcsd .row-fluid .offset5,
#header.wvcsd .row-fluid .offset5 {
  margin-left: 44.68085106382979%;
  *margin-left: 44.57446808510638%;
}
#nav.wvcsd .row-fluid .offset5:first-child,
#header.wvcsd .row-fluid .offset5:first-child {
  margin-left: 42.5531914893617%;
  *margin-left: 42.4468085106383%;
}
#nav.wvcsd .row-fluid .offset4,
#header.wvcsd .row-fluid .offset4 {
  margin-left: 36.170212765957444%;
  *margin-left: 36.06382978723405%;
}
#nav.wvcsd .row-fluid .offset4:first-child,
#header.wvcsd .row-fluid .offset4:first-child {
  margin-left: 34.04255319148936%;
  *margin-left: 33.93617021276596%;
}
#nav.wvcsd .row-fluid .offset3,
#header.wvcsd .row-fluid .offset3 {
  margin-left: 27.659574468085104%;
  *margin-left: 27.5531914893617%;
}
#nav.wvcsd .row-fluid .offset3:first-child,
#header.wvcsd .row-fluid .offset3:first-child {
  margin-left: 25.53191489361702%;
  *margin-left: 25.425531914893618%;
}
#nav.wvcsd .row-fluid .offset2,
#header.wvcsd .row-fluid .offset2 {
  margin-left: 19.148936170212764%;
  *margin-left: 19.04255319148936%;
}
#nav.wvcsd .row-fluid .offset2:first-child,
#header.wvcsd .row-fluid .offset2:first-child {
  margin-left: 17.02127659574468%;
  *margin-left: 16.914893617021278%;
}
#nav.wvcsd .row-fluid .offset1,
#header.wvcsd .row-fluid .offset1 {
  margin-left: 10.638297872340425%;
  *margin-left: 10.53191489361702%;
}
#nav.wvcsd .row-fluid .offset1:first-child,
#header.wvcsd .row-fluid .offset1:first-child {
  margin-left: 8.51063829787234%;
  *margin-left: 8.404255319148938%;
}
#nav.wvcsd [class*="span"].hide,
#header.wvcsd [class*="span"].hide,
#nav.wvcsd .row-fluid [class*="span"].hide,
#header.wvcsd .row-fluid [class*="span"].hide {
  display: none;
}
#nav.wvcsd [class*="span"].pull-right,
#header.wvcsd [class*="span"].pull-right,
#nav.wvcsd .row-fluid [class*="span"].pull-right,
#header.wvcsd .row-fluid [class*="span"].pull-right {
  float: right;
}
#nav.wvcsd .hero-unit,
#header.wvcsd .hero-unit {
  padding: 60px;
  margin-bottom: 30px;
  font-size: 18px;
  font-weight: 200;
  line-height: 30px;
  color: inherit;
  background-color: #eeeeee;
  -webkit-border-radius: 6px;
  -moz-border-radius: 6px;
  border-radius: 6px;
}
#nav.wvcsd .hero-unit h1,
#header.wvcsd .hero-unit h1 {
  margin-bottom: 0;
  font-size: 60px;
  line-height: 1;
  color: inherit;
  letter-spacing: -1px;
}
#nav.wvcsd .hero-unit li,
#header.wvcsd .hero-unit li {
  line-height: 30px;
}
#nav.wvcsd .label,
#header.wvcsd .label,
#nav.wvcsd .badge,
#header.wvcsd .badge {
  display: inline-block;
  padding: 2px 4px;
  font-size: 11.844px;
  font-weight: bold;
  line-height: 14px;
  color: #ffffff;
  vertical-align: baseline;
  white-space: nowrap;
  text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25);
  background-color: #999999;
}
#nav.wvcsd .label,
#header.wvcsd .label {
  -webkit-border-radius: 3px;
  -moz-border-radius: 3px;
  border-radius: 3px;
}
#nav.wvcsd .badge,
#header.wvcsd .badge {
  padding-left: 9px;
  padding-right: 9px;
  -webkit-border-radius: 9px;
  -moz-border-radius: 9px;
  border-radius: 9px;
}
#nav.wvcsd .label:empty,
#header.wvcsd .label:empty,
#nav.wvcsd .badge:empty,
#header.wvcsd .badge:empty {
  display: none;
}
#nav.wvcsd a.label:hover,
#header.wvcsd a.label:hover,
#nav.wvcsd a.label:focus,
#header.wvcsd a.label:focus,
#nav.wvcsd a.badge:hover,
#header.wvcsd a.badge:hover,
#nav.wvcsd a.badge:focus,
#header.wvcsd a.badge:focus {
  color: #ffffff;
  text-decoration: none;
  cursor: pointer;
}
#nav.wvcsd .label-important,
#header.wvcsd .label-important,
#nav.wvcsd .badge-important,
#header.wvcsd .badge-important {
  background-color: #b94a48;
}
#nav.wvcsd .label-important[href],
#header.wvcsd .label-important[href],
#nav.wvcsd .badge-important[href],
#header.wvcsd .badge-important[href] {
  background-color: #953b39;
}
#nav.wvcsd .label-warning,
#header.wvcsd .label-warning,
#nav.wvcsd .badge-warning,
#header.wvcsd .badge-warning {
  background-color: #f89406;
}
#nav.wvcsd .label-warning[href],
#header.wvcsd .label-warning[href],
#nav.wvcsd .badge-warning[href],
#header.wvcsd .badge-warning[href] {
  background-color: #c67605;
}
#nav.wvcsd .label-success,
#header.wvcsd .label-success,
#nav.wvcsd .badge-success,
#header.wvcsd .badge-success {
  background-color: #468847;
}
#nav.wvcsd .label-success[href],
#header.wvcsd .label-success[href],
#nav.wvcsd .badge-success[href],
#header.wvcsd .badge-success[href] {
  background-color: #356635;
}
#nav.wvcsd .label-info,
#header.wvcsd .label-info,
#nav.wvcsd .badge-info,
#header.wvcsd .badge-info {
  background-color: #3a87ad;
}
#nav.wvcsd .label-info[href],
#header.wvcsd .label-info[href],
#nav.wvcsd .badge-info[href],
#header.wvcsd .badge-info[href] {
  background-color: #2d6987;
}
#nav.wvcsd .label-inverse,
#header.wvcsd .label-inverse,
#nav.wvcsd .badge-inverse,
#header.wvcsd .badge-inverse {
  background-color: #333333;
}
#nav.wvcsd .label-inverse[href],
#header.wvcsd .label-inverse[href],
#nav.wvcsd .badge-inverse[href],
#header.wvcsd .badge-inverse[href] {
  background-color: #1a1a1a;
}
#nav.wvcsd .btn .label,
#header.wvcsd .btn .label,
#nav.wvcsd .btn .badge,
#header.wvcsd .btn .badge {
  position: relative;
  top: -1px;
}
#nav.wvcsd .btn-mini .label,
#header.wvcsd .btn-mini .label,
#nav.wvcsd .btn-mini .badge,
#header.wvcsd .btn-mini .badge {
  top: 0;
}
#nav.wvcsd .container,
#header.wvcsd .container {
  margin-right: auto;
  margin-left: auto;
  *zoom: 1;
}
#nav.wvcsd .container:before,
#header.wvcsd .container:before,
#nav.wvcsd .container:after,
#header.wvcsd .container:after {
  display: table;
  content: "";
  line-height: 0;
}
#nav.wvcsd .container:after,
#header.wvcsd .container:after {
  clear: both;
}
#nav.wvcsd .container-fluid,
#header.wvcsd .container-fluid {
  padding-right: 20px;
  padding-left: 20px;
  *zoom: 1;
}
#nav.wvcsd .container-fluid:before,
#header.wvcsd .container-fluid:before,
#nav.wvcsd .container-fluid:after,
#header.wvcsd .container-fluid:after {
  display: table;
  content: "";
  line-height: 0;
}
#nav.wvcsd .container-fluid:after,
#header.wvcsd .container-fluid:after {
  clear: both;
}
#nav.wvcsd .media,
#header.wvcsd .media,
#nav.wvcsd .media-body,
#header.wvcsd .media-body {
  overflow: hidden;
  *overflow: visible;
  zoom: 1;
}
#nav.wvcsd .media,
#header.wvcsd .media,
#nav.wvcsd .media .media,
#header.wvcsd .media .media {
  margin-top: 15px;
}
#nav.wvcsd .media:first-child,
#header.wvcsd .media:first-child {
  margin-top: 0;
}
#nav.wvcsd .media-object,
#header.wvcsd .media-object {
  display: block;
}
#nav.wvcsd .media-heading,
#header.wvcsd .media-heading {
  margin: 0 0 5px;
}
#nav.wvcsd .media > .pull-left,
#header.wvcsd .media > .pull-left {
  margin-right: 10px;
}
#nav.wvcsd .media > .pull-right,
#header.wvcsd .media > .pull-right {
  margin-left: 10px;
}
#nav.wvcsd .media-list,
#header.wvcsd .media-list {
  margin-left: 0;
  list-style: none;
}
#nav.wvcsd .modal-backdrop,
#header.wvcsd .modal-backdrop {
  position: fixed;
  top: 0;
  right: 0;
  bottom: 0;
  left: 0;
  z-index: 1040;
  background-color: #000000;
}
#nav.wvcsd .modal-backdrop.fade,
#header.wvcsd .modal-backdrop.fade {
  opacity: 0;
}
#nav.wvcsd .modal-backdrop,
#header.wvcsd .modal-backdrop,
#nav.wvcsd .modal-backdrop.fade.in,
#header.wvcsd .modal-backdrop.fade.in {
  opacity: 0;
  filter: alpha(opacity=0);
}
#nav.wvcsd .modal,
#header.wvcsd .modal {
  position: fixed;
  top: 10%;
  left: 50%;
  z-index: 1050;
  width: 560px;
  margin-left: -280px;
  background-color: #ffffff;
  border: 1px solid #999;
  border: 1px solid rgba(0, 0, 0, 0.3);
  *border: 1px solid #999;
  /* IE6-7 */
  -webkit-border-radius: 6px;
  -moz-border-radius: 6px;
  border-radius: 6px;
  -webkit-box-shadow: 0 3px 7px rgba(0, 0, 0, 0.3);
  -moz-box-shadow: 0 3px 7px rgba(0, 0, 0, 0.3);
  box-shadow: 0 3px 7px rgba(0, 0, 0, 0.3);
  -webkit-background-clip: padding-box;
  -moz-background-clip: padding-box;
  background-clip: padding-box;
  outline: none;
}
#nav.wvcsd .modal.fade,
#header.wvcsd .modal.fade {
  -webkit-transition: opacity .3s linear, top .3s ease-out;
  -moz-transition: opacity .3s linear, top .3s ease-out;
  -o-transition: opacity .3s linear, top .3s ease-out;
  transition: opacity .3s linear, top .3s ease-out;
  top: -25%;
}
#nav.wvcsd .modal.fade.in,
#header.wvcsd .modal.fade.in {
  top: 10%;
}
#nav.wvcsd .modal-header,
#header.wvcsd .modal-header {
  padding: 9px 15px;
  border-bottom: 1px solid #eee;
}
#nav.wvcsd .modal-header .close,
#header.wvcsd .modal-header .close {
  margin-top: 2px;
}
#nav.wvcsd .modal-header h3,
#header.wvcsd .modal-header h3 {
  margin: 0;
  line-height: 30px;
}
#nav.wvcsd .modal-body,
#header.wvcsd .modal-body {
  position: relative;
  overflow-y: auto;
  max-height: 400px;
  padding: 15px;
}
#nav.wvcsd .modal-form,
#header.wvcsd .modal-form {
  margin-bottom: 0;
}
#nav.wvcsd .modal-footer,
#header.wvcsd .modal-footer {
  padding: 14px 15px 15px;
  margin-bottom: 0;
  text-align: right;
  background-color: #f5f5f5;
  border-top: 1px solid #ddd;
  -webkit-border-radius: 0 0 6px 6px;
  -moz-border-radius: 0 0 6px 6px;
  border-radius: 0 0 6px 6px;
  -webkit-box-shadow: inset 0 1px 0 #ffffff;
  -moz-box-shadow: inset 0 1px 0 #ffffff;
  box-shadow: inset 0 1px 0 #ffffff;
  *zoom: 1;
}
#nav.wvcsd .modal-footer:before,
#header.wvcsd .modal-footer:before,
#nav.wvcsd .modal-footer:after,
#header.wvcsd .modal-footer:after {
  display: table;
  content: "";
  line-height: 0;
}
#nav.wvcsd .modal-footer:after,
#header.wvcsd .modal-footer:after {
  clear: both;
}
#nav.wvcsd .modal-footer .btn + .btn,
#header.wvcsd .modal-footer .btn + .btn {
  margin-left: 5px;
  margin-bottom: 0;
}
#nav.wvcsd .modal-footer .btn-group .btn + .btn,
#header.wvcsd .modal-footer .btn-group .btn + .btn {
  margin-left: -1px;
}
#nav.wvcsd .modal-footer .btn-block + .btn-block,
#header.wvcsd .modal-footer .btn-block + .btn-block {
  margin-left: 0;
}
#nav.wvcsd .navbar,
#header.wvcsd .navbar {
  overflow: visible;
  margin-bottom: 20px;
  *position: relative;
  *z-index: 2;
}
#nav.wvcsd .navbar-inner,
#header.wvcsd .navbar-inner {
  min-height: 40px;
  padding-left: 20px;
  padding-right: 20px;
  background-color: #fafafa;
  background-image: -moz-linear-gradient(top, #ffffff, #f2f2f2);
  background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#ffffff), to(#f2f2f2));
  background-image: -webkit-linear-gradient(top, #ffffff, #f2f2f2);
  background-image: -o-linear-gradient(top, #ffffff, #f2f2f2);
  background-image: linear-gradient(to bottom, #ffffff, #f2f2f2);
  background-repeat: repeat-x;
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffffffff', endColorstr='#fff2f2f2', GradientType=0);
  border: 1px solid #d4d4d4;
  -webkit-border-radius: 4px;
  -moz-border-radius: 4px;
  border-radius: 4px;
  -webkit-box-shadow: 0 1px 4px rgba(0, 0, 0, 0.065);
  -moz-box-shadow: 0 1px 4px rgba(0, 0, 0, 0.065);
  box-shadow: 0 1px 4px rgba(0, 0, 0, 0.065);
  *zoom: 1;
}
#nav.wvcsd .navbar-inner:before,
#header.wvcsd .navbar-inner:before,
#nav.wvcsd .navbar-inner:after,
#header.wvcsd .navbar-inner:after {
  display: table;
  content: "";
  line-height: 0;
}
#nav.wvcsd .navbar-inner:after,
#header.wvcsd .navbar-inner:after {
  clear: both;
}
#nav.wvcsd .navbar .container,
#header.wvcsd .navbar .container {
  width: auto;
}
#nav.wvcsd .nav-collapse.collapse,
#header.wvcsd .nav-collapse.collapse {
  height: auto;
  overflow: visible;
}
#nav.wvcsd .navbar .brand,
#header.wvcsd .navbar .brand {
  float: left;
  display: block;
  padding: 10px 20px 10px;
  margin-left: -20px;
  font-size: 20px;
  font-weight: 200;
  color: #777777;
  text-shadow: 0 1px 0 #ffffff;
}
#nav.wvcsd .navbar .brand:hover,
#header.wvcsd .navbar .brand:hover,
#nav.wvcsd .navbar .brand:focus,
#header.wvcsd .navbar .brand:focus {
  text-decoration: none;
}
#nav.wvcsd .navbar-text,
#header.wvcsd .navbar-text {
  margin-bottom: 0;
  line-height: 40px;
  color: #777777;
}
#nav.wvcsd .navbar-link,
#header.wvcsd .navbar-link {
  color: #777777;
}
#nav.wvcsd .navbar-link:hover,
#header.wvcsd .navbar-link:hover,
#nav.wvcsd .navbar-link:focus,
#header.wvcsd .navbar-link:focus {
  color: #333333;
}
#nav.wvcsd .navbar .divider-vertical,
#header.wvcsd .navbar .divider-vertical {
  height: 40px;
  margin: 0 9px;
  border-left: 1px solid #f2f2f2;
  border-right: 1px solid #ffffff;
}
#nav.wvcsd .navbar .btn,
#header.wvcsd .navbar .btn,
#nav.wvcsd .navbar .btn-group,
#header.wvcsd .navbar .btn-group {
  margin-top: 5px;
}
#nav.wvcsd .navbar .btn-group .btn,
#header.wvcsd .navbar .btn-group .btn,
#nav.wvcsd .navbar .input-prepend .btn,
#header.wvcsd .navbar .input-prepend .btn,
#nav.wvcsd .navbar .input-append .btn,
#header.wvcsd .navbar .input-append .btn,
#nav.wvcsd .navbar .input-prepend .btn-group,
#header.wvcsd .navbar .input-prepend .btn-group,
#nav.wvcsd .navbar .input-append .btn-group,
#header.wvcsd .navbar .input-append .btn-group {
  margin-top: 0;
}
#nav.wvcsd .navbar-form,
#header.wvcsd .navbar-form {
  margin-bottom: 0;
  *zoom: 1;
}
#nav.wvcsd .navbar-form:before,
#header.wvcsd .navbar-form:before,
#nav.wvcsd .navbar-form:after,
#header.wvcsd .navbar-form:after {
  display: table;
  content: "";
  line-height: 0;
}
#nav.wvcsd .navbar-form:after,
#header.wvcsd .navbar-form:after {
  clear: both;
}
#nav.wvcsd .navbar-form input,
#header.wvcsd .navbar-form input,
#nav.wvcsd .navbar-form select,
#header.wvcsd .navbar-form select,
#nav.wvcsd .navbar-form .radio,
#header.wvcsd .navbar-form .radio,
#nav.wvcsd .navbar-form .checkbox,
#header.wvcsd .navbar-form .checkbox {
  margin-top: 5px;
}
#nav.wvcsd .navbar-form input,
#header.wvcsd .navbar-form input,
#nav.wvcsd .navbar-form select,
#header.wvcsd .navbar-form select,
#nav.wvcsd .navbar-form .btn,
#header.wvcsd .navbar-form .btn {
  display: inline-block;
  margin-bottom: 0;
}
#nav.wvcsd .navbar-form input[type="image"],
#header.wvcsd .navbar-form input[type="image"],
#nav.wvcsd .navbar-form input[type="checkbox"],
#header.wvcsd .navbar-form input[type="checkbox"],
#nav.wvcsd .navbar-form input[type="radio"],
#header.wvcsd .navbar-form input[type="radio"] {
  margin-top: 3px;
}
#nav.wvcsd .navbar-form .input-append,
#header.wvcsd .navbar-form .input-append,
#nav.wvcsd .navbar-form .input-prepend,
#header.wvcsd .navbar-form .input-prepend {
  margin-top: 5px;
  white-space: nowrap;
}
#nav.wvcsd .navbar-form .input-append input,
#header.wvcsd .navbar-form .input-append input,
#nav.wvcsd .navbar-form .input-prepend input,
#header.wvcsd .navbar-form .input-prepend input {
  margin-top: 0;
}
#nav.wvcsd .navbar-search,
#header.wvcsd .navbar-search {
  position: relative;
  float: left;
  margin-top: 5px;
  margin-bottom: 0;
}
#nav.wvcsd .navbar-search .search-query,
#header.wvcsd .navbar-search .search-query {
  margin-bottom: 0;
  padding: 4px 14px;
  font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
  font-size: 13px;
  font-weight: normal;
  line-height: 1;
  -webkit-border-radius: 15px;
  -moz-border-radius: 15px;
  border-radius: 15px;
}
#nav.wvcsd .navbar-static-top,
#header.wvcsd .navbar-static-top {
  position: static;
  margin-bottom: 0;
}
#nav.wvcsd .navbar-static-top .navbar-inner,
#header.wvcsd .navbar-static-top .navbar-inner {
  -webkit-border-radius: 0;
  -moz-border-radius: 0;
  border-radius: 0;
}
#nav.wvcsd .navbar-fixed-top,
#header.wvcsd .navbar-fixed-top,
#nav.wvcsd .navbar-fixed-bottom,
#header.wvcsd .navbar-fixed-bottom {
  position: fixed;
  right: 0;
  left: 0;
  z-index: 1030;
  margin-bottom: 0;
}
#nav.wvcsd .navbar-fixed-top .navbar-inner,
#header.wvcsd .navbar-fixed-top .navbar-inner,
#nav.wvcsd .navbar-static-top .navbar-inner,
#header.wvcsd .navbar-static-top .navbar-inner {
  border-width: 0 0 1px;
}
#nav.wvcsd .navbar-fixed-bottom .navbar-inner,
#header.wvcsd .navbar-fixed-bottom .navbar-inner {
  border-width: 1px 0 0;
}
#nav.wvcsd .navbar-fixed-top .navbar-inner,
#header.wvcsd .navbar-fixed-top .navbar-inner,
#nav.wvcsd .navbar-fixed-bottom .navbar-inner,
#header.wvcsd .navbar-fixed-bottom .navbar-inner {
  padding-left: 0;
  padding-right: 0;
  -webkit-border-radius: 0;
  -moz-border-radius: 0;
  border-radius: 0;
}
#nav.wvcsd .navbar-static-top .container,
#header.wvcsd .navbar-static-top .container,
#nav.wvcsd .navbar-fixed-top .container,
#header.wvcsd .navbar-fixed-top .container,
#nav.wvcsd .navbar-fixed-bottom .container,
#header.wvcsd .navbar-fixed-bottom .container {
  width: 940px;
}
#nav.wvcsd .navbar-fixed-top,
#header.wvcsd .navbar-fixed-top {
  top: 0;
}
#nav.wvcsd .navbar-fixed-top .navbar-inner,
#header.wvcsd .navbar-fixed-top .navbar-inner,
#nav.wvcsd .navbar-static-top .navbar-inner,
#header.wvcsd .navbar-static-top .navbar-inner {
  -webkit-box-shadow: 0 1px 10px rgba(0,0,0,.1);
  -moz-box-shadow: 0 1px 10px rgba(0,0,0,.1);
  box-shadow: 0 1px 10px rgba(0,0,0,.1);
}
#nav.wvcsd .navbar-fixed-bottom,
#header.wvcsd .navbar-fixed-bottom {
  bottom: 0;
}
#nav.wvcsd .navbar-fixed-bottom .navbar-inner,
#header.wvcsd .navbar-fixed-bottom .navbar-inner {
  -webkit-box-shadow: 0 -1px 10px rgba(0,0,0,.1);
  -moz-box-shadow: 0 -1px 10px rgba(0,0,0,.1);
  box-shadow: 0 -1px 10px rgba(0,0,0,.1);
}
#nav.wvcsd .navbar .nav,
#header.wvcsd .navbar .nav {
  position: relative;
  left: 0;
  display: block;
  float: left;
  margin: 0 10px 0 0;
}
#nav.wvcsd .navbar .nav.pull-right,
#header.wvcsd .navbar .nav.pull-right {
  float: right;
  margin-right: 0;
}
#nav.wvcsd .navbar .nav > li,
#header.wvcsd .navbar .nav > li {
  float: left;
}
#nav.wvcsd .navbar .nav > li > a,
#header.wvcsd .navbar .nav > li > a {
  float: none;
  padding: 10px 15px 10px;
  color: #777777;
  text-decoration: none;
  text-shadow: 0 1px 0 #ffffff;
}
#nav.wvcsd .navbar .nav .dropdown-toggle .caret,
#header.wvcsd .navbar .nav .dropdown-toggle .caret {
  margin-top: 8px;
}
#nav.wvcsd .navbar .nav > li > a:focus,
#header.wvcsd .navbar .nav > li > a:focus,
#nav.wvcsd .navbar .nav > li > a:hover,
#header.wvcsd .navbar .nav > li > a:hover {
  background-color: transparent;
  color: #333333;
  text-decoration: none;
}
#nav.wvcsd .navbar .nav > .active > a,
#header.wvcsd .navbar .nav > .active > a,
#nav.wvcsd .navbar .nav > .active > a:hover,
#header.wvcsd .navbar .nav > .active > a:hover,
#nav.wvcsd .navbar .nav > .active > a:focus,
#header.wvcsd .navbar .nav > .active > a:focus {
  color: #555555;
  text-decoration: none;
  background-color: #e5e5e5;
  -webkit-box-shadow: inset 0 3px 8px rgba(0, 0, 0, 0.125);
  -moz-box-shadow: inset 0 3px 8px rgba(0, 0, 0, 0.125);
  box-shadow: inset 0 3px 8px rgba(0, 0, 0, 0.125);
}
#nav.wvcsd .navbar .btn-navbar,
#header.wvcsd .navbar .btn-navbar {
  display: none;
  float: right;
  padding: 7px 10px;
  margin-left: 5px;
  margin-right: 5px;
  color: #ffffff;
  text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25);
  background-color: #ededed;
  background-image: -moz-linear-gradient(top, #f2f2f2, #e5e5e5);
  background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#f2f2f2), to(#e5e5e5));
  background-image: -webkit-linear-gradient(top, #f2f2f2, #e5e5e5);
  background-image: -o-linear-gradient(top, #f2f2f2, #e5e5e5);
  background-image: linear-gradient(to bottom, #f2f2f2, #e5e5e5);
  background-repeat: repeat-x;
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#fff2f2f2', endColorstr='#ffe5e5e5', GradientType=0);
  border-color: #e5e5e5 #e5e5e5 #bfbfbf;
  border-color: rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.25);
  *background-color: #e5e5e5;
  /* Darken IE7 buttons by default so they stand out more given they won't have borders */
  filter: progid:DXImageTransform.Microsoft.gradient(enabled = false);
  -webkit-box-shadow: inset 0 1px 0 rgba(255,255,255,.1), 0 1px 0 rgba(255,255,255,.075);
  -moz-box-shadow: inset 0 1px 0 rgba(255,255,255,.1), 0 1px 0 rgba(255,255,255,.075);
  box-shadow: inset 0 1px 0 rgba(255,255,255,.1), 0 1px 0 rgba(255,255,255,.075);
}
#nav.wvcsd .navbar .btn-navbar:hover,
#header.wvcsd .navbar .btn-navbar:hover,
#nav.wvcsd .navbar .btn-navbar:focus,
#header.wvcsd .navbar .btn-navbar:focus,
#nav.wvcsd .navbar .btn-navbar:active,
#header.wvcsd .navbar .btn-navbar:active,
#nav.wvcsd .navbar .btn-navbar.active,
#header.wvcsd .navbar .btn-navbar.active,
#nav.wvcsd .navbar .btn-navbar.disabled,
#header.wvcsd .navbar .btn-navbar.disabled,
#nav.wvcsd .navbar .btn-navbar[disabled],
#header.wvcsd .navbar .btn-navbar[disabled] {
  color: #ffffff;
  background-color: #e5e5e5;
  *background-color: #d9d9d9;
}
#nav.wvcsd .navbar .btn-navbar:active,
#header.wvcsd .navbar .btn-navbar:active,
#nav.wvcsd .navbar .btn-navbar.active,
#header.wvcsd .navbar .btn-navbar.active {
  background-color: #cccccc \9;
}
#nav.wvcsd .navbar .btn-navbar .icon-bar,
#header.wvcsd .navbar .btn-navbar .icon-bar {
  display: block;
  width: 18px;
  height: 2px;
  background-color: #f5f5f5;
  -webkit-border-radius: 1px;
  -moz-border-radius: 1px;
  border-radius: 1px;
  -webkit-box-shadow: 0 1px 0 rgba(0, 0, 0, 0.25);
  -moz-box-shadow: 0 1px 0 rgba(0, 0, 0, 0.25);
  box-shadow: 0 1px 0 rgba(0, 0, 0, 0.25);
}
#nav.wvcsd .btn-navbar .icon-bar + .icon-bar,
#header.wvcsd .btn-navbar .icon-bar + .icon-bar {
  margin-top: 3px;
}
#nav.wvcsd .navbar .nav > li > .dropdown-menu:before,
#header.wvcsd .navbar .nav > li > .dropdown-menu:before {
  content: '';
  display: inline-block;
  border-left: 7px solid transparent;
  border-right: 7px solid transparent;
  border-bottom: 7px solid #ccc;
  border-bottom-color: rgba(0, 0, 0, 0.2);
  position: absolute;
  top: -7px;
  left: 9px;
}
#nav.wvcsd .navbar .nav > li > .dropdown-menu:after,
#header.wvcsd .navbar .nav > li > .dropdown-menu:after {
  content: '';
  display: inline-block;
  border-left: 6px solid transparent;
  border-right: 6px solid transparent;
  border-bottom: 6px solid #ffffff;
  position: absolute;
  top: -6px;
  left: 10px;
}
#nav.wvcsd .navbar-fixed-bottom .nav > li > .dropdown-menu:before,
#header.wvcsd .navbar-fixed-bottom .nav > li > .dropdown-menu:before {
  border-top: 7px solid #ccc;
  border-top-color: rgba(0, 0, 0, 0.2);
  border-bottom: 0;
  bottom: -7px;
  top: auto;
}
#nav.wvcsd .navbar-fixed-bottom .nav > li > .dropdown-menu:after,
#header.wvcsd .navbar-fixed-bottom .nav > li > .dropdown-menu:after {
  border-top: 6px solid #ffffff;
  border-bottom: 0;
  bottom: -6px;
  top: auto;
}
#nav.wvcsd .navbar .nav li.dropdown > a:hover .caret,
#header.wvcsd .navbar .nav li.dropdown > a:hover .caret,
#nav.wvcsd .navbar .nav li.dropdown > a:focus .caret,
#header.wvcsd .navbar .nav li.dropdown > a:focus .caret {
  border-top-color: #333333;
  border-bottom-color: #333333;
}
#nav.wvcsd .navbar .nav li.dropdown.open > .dropdown-toggle,
#header.wvcsd .navbar .nav li.dropdown.open > .dropdown-toggle,
#nav.wvcsd .navbar .nav li.dropdown.active > .dropdown-toggle,
#header.wvcsd .navbar .nav li.dropdown.active > .dropdown-toggle,
#nav.wvcsd .navbar .nav li.dropdown.open.active > .dropdown-toggle,
#header.wvcsd .navbar .nav li.dropdown.open.active > .dropdown-toggle {
  background-color: #e5e5e5;
  color: #555555;
}
#nav.wvcsd .navbar .nav li.dropdown > .dropdown-toggle .caret,
#header.wvcsd .navbar .nav li.dropdown > .dropdown-toggle .caret {
  border-top-color: #777777;
  border-bottom-color: #777777;
}
#nav.wvcsd .navbar .nav li.dropdown.open > .dropdown-toggle .caret,
#header.wvcsd .navbar .nav li.dropdown.open > .dropdown-toggle .caret,
#nav.wvcsd .navbar .nav li.dropdown.active > .dropdown-toggle .caret,
#header.wvcsd .navbar .nav li.dropdown.active > .dropdown-toggle .caret,
#nav.wvcsd .navbar .nav li.dropdown.open.active > .dropdown-toggle .caret,
#header.wvcsd .navbar .nav li.dropdown.open.active > .dropdown-toggle .caret {
  border-top-color: #555555;
  border-bottom-color: #555555;
}
#nav.wvcsd .navbar .pull-right > li > .dropdown-menu,
#header.wvcsd .navbar .pull-right > li > .dropdown-menu,
#nav.wvcsd .navbar .nav > li > .dropdown-menu.pull-right,
#header.wvcsd .navbar .nav > li > .dropdown-menu.pull-right {
  left: auto;
  right: 0;
}
#nav.wvcsd .navbar .pull-right > li > .dropdown-menu:before,
#header.wvcsd .navbar .pull-right > li > .dropdown-menu:before,
#nav.wvcsd .navbar .nav > li > .dropdown-menu.pull-right:before,
#header.wvcsd .navbar .nav > li > .dropdown-menu.pull-right:before {
  left: auto;
  right: 12px;
}
#nav.wvcsd .navbar .pull-right > li > .dropdown-menu:after,
#header.wvcsd .navbar .pull-right > li > .dropdown-menu:after,
#nav.wvcsd .navbar .nav > li > .dropdown-menu.pull-right:after,
#header.wvcsd .navbar .nav > li > .dropdown-menu.pull-right:after {
  left: auto;
  right: 13px;
}
#nav.wvcsd .navbar .pull-right > li > .dropdown-menu .dropdown-menu,
#header.wvcsd .navbar .pull-right > li > .dropdown-menu .dropdown-menu,
#nav.wvcsd .navbar .nav > li > .dropdown-menu.pull-right .dropdown-menu,
#header.wvcsd .navbar .nav > li > .dropdown-menu.pull-right .dropdown-menu {
  left: auto;
  right: 100%;
  margin-left: 0;
  margin-right: -1px;
  -webkit-border-radius: 6px 0 6px 6px;
  -moz-border-radius: 6px 0 6px 6px;
  border-radius: 6px 0 6px 6px;
}
#nav.wvcsd .navbar-inverse .navbar-inner,
#header.wvcsd .navbar-inverse .navbar-inner {
  background-color: #1b1b1b;
  background-image: -moz-linear-gradient(top, #222222, #111111);
  background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#222222), to(#111111));
  background-image: -webkit-linear-gradient(top, #222222, #111111);
  background-image: -o-linear-gradient(top, #222222, #111111);
  background-image: linear-gradient(to bottom, #222222, #111111);
  background-repeat: repeat-x;
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ff222222', endColorstr='#ff111111', GradientType=0);
  border-color: #252525;
}
#nav.wvcsd .navbar-inverse .brand,
#header.wvcsd .navbar-inverse .brand,
#nav.wvcsd .navbar-inverse .nav > li > a,
#header.wvcsd .navbar-inverse .nav > li > a {
  color: #999999;
  text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25);
}
#nav.wvcsd .navbar-inverse .brand:hover,
#header.wvcsd .navbar-inverse .brand:hover,
#nav.wvcsd .navbar-inverse .nav > li > a:hover,
#header.wvcsd .navbar-inverse .nav > li > a:hover,
#nav.wvcsd .navbar-inverse .brand:focus,
#header.wvcsd .navbar-inverse .brand:focus,
#nav.wvcsd .navbar-inverse .nav > li > a:focus,
#header.wvcsd .navbar-inverse .nav > li > a:focus {
  color: #ffffff;
}
#nav.wvcsd .navbar-inverse .brand,
#header.wvcsd .navbar-inverse .brand {
  color: #999999;
}
#nav.wvcsd .navbar-inverse .navbar-text,
#header.wvcsd .navbar-inverse .navbar-text {
  color: #999999;
}
#nav.wvcsd .navbar-inverse .nav > li > a:focus,
#header.wvcsd .navbar-inverse .nav > li > a:focus,
#nav.wvcsd .navbar-inverse .nav > li > a:hover,
#header.wvcsd .navbar-inverse .nav > li > a:hover {
  background-color: transparent;
  color: #ffffff;
}
#nav.wvcsd .navbar-inverse .nav .active > a,
#header.wvcsd .navbar-inverse .nav .active > a,
#nav.wvcsd .navbar-inverse .nav .active > a:hover,
#header.wvcsd .navbar-inverse .nav .active > a:hover,
#nav.wvcsd .navbar-inverse .nav .active > a:focus,
#header.wvcsd .navbar-inverse .nav .active > a:focus {
  color: #ffffff;
  background-color: #111111;
}
#nav.wvcsd .navbar-inverse .navbar-link,
#header.wvcsd .navbar-inverse .navbar-link {
  color: #999999;
}
#nav.wvcsd .navbar-inverse .navbar-link:hover,
#header.wvcsd .navbar-inverse .navbar-link:hover,
#nav.wvcsd .navbar-inverse .navbar-link:focus,
#header.wvcsd .navbar-inverse .navbar-link:focus {
  color: #ffffff;
}
#nav.wvcsd .navbar-inverse .divider-vertical,
#header.wvcsd .navbar-inverse .divider-vertical {
  border-left-color: #111111;
  border-right-color: #222222;
}
#nav.wvcsd .navbar-inverse .nav li.dropdown.open > .dropdown-toggle,
#header.wvcsd .navbar-inverse .nav li.dropdown.open > .dropdown-toggle,
#nav.wvcsd .navbar-inverse .nav li.dropdown.active > .dropdown-toggle,
#header.wvcsd .navbar-inverse .nav li.dropdown.active > .dropdown-toggle,
#nav.wvcsd .navbar-inverse .nav li.dropdown.open.active > .dropdown-toggle,
#header.wvcsd .navbar-inverse .nav li.dropdown.open.active > .dropdown-toggle {
  background-color: #111111;
  color: #ffffff;
}
#nav.wvcsd .navbar-inverse .nav li.dropdown > a:hover .caret,
#header.wvcsd .navbar-inverse .nav li.dropdown > a:hover .caret,
#nav.wvcsd .navbar-inverse .nav li.dropdown > a:focus .caret,
#header.wvcsd .navbar-inverse .nav li.dropdown > a:focus .caret {
  border-top-color: #ffffff;
  border-bottom-color: #ffffff;
}
#nav.wvcsd .navbar-inverse .nav li.dropdown > .dropdown-toggle .caret,
#header.wvcsd .navbar-inverse .nav li.dropdown > .dropdown-toggle .caret {
  border-top-color: #999999;
  border-bottom-color: #999999;
}
#nav.wvcsd .navbar-inverse .nav li.dropdown.open > .dropdown-toggle .caret,
#header.wvcsd .navbar-inverse .nav li.dropdown.open > .dropdown-toggle .caret,
#nav.wvcsd .navbar-inverse .nav li.dropdown.active > .dropdown-toggle .caret,
#header.wvcsd .navbar-inverse .nav li.dropdown.active > .dropdown-toggle .caret,
#nav.wvcsd .navbar-inverse .nav li.dropdown.open.active > .dropdown-toggle .caret,
#header.wvcsd .navbar-inverse .nav li.dropdown.open.active > .dropdown-toggle .caret {
  border-top-color: #ffffff;
  border-bottom-color: #ffffff;
}
#nav.wvcsd .navbar-inverse .navbar-search .search-query,
#header.wvcsd .navbar-inverse .navbar-search .search-query {
  color: #ffffff;
  background-color: #515151;
  border-color: #111111;
  -webkit-box-shadow: inset 0 1px 2px rgba(0,0,0,.1), 0 1px 0 rgba(255,255,255,.15);
  -moz-box-shadow: inset 0 1px 2px rgba(0,0,0,.1), 0 1px 0 rgba(255,255,255,.15);
  box-shadow: inset 0 1px 2px rgba(0,0,0,.1), 0 1px 0 rgba(255,255,255,.15);
  -webkit-transition: none;
  -moz-transition: none;
  -o-transition: none;
  transition: none;
}
#nav.wvcsd .navbar-inverse .navbar-search .search-query:-moz-placeholder,
#header.wvcsd .navbar-inverse .navbar-search .search-query:-moz-placeholder {
  color: #cccccc;
}
#nav.wvcsd .navbar-inverse .navbar-search .search-query:-ms-input-placeholder,
#header.wvcsd .navbar-inverse .navbar-search .search-query:-ms-input-placeholder {
  color: #cccccc;
}
#nav.wvcsd .navbar-inverse .navbar-search .search-query::-webkit-input-placeholder,
#header.wvcsd .navbar-inverse .navbar-search .search-query::-webkit-input-placeholder {
  color: #cccccc;
}
#nav.wvcsd .navbar-inverse .navbar-search .search-query:focus,
#header.wvcsd .navbar-inverse .navbar-search .search-query:focus,
#nav.wvcsd .navbar-inverse .navbar-search .search-query.focused,
#header.wvcsd .navbar-inverse .navbar-search .search-query.focused {
  padding: 5px 15px;
  color: #333333;
  text-shadow: 0 1px 0 #ffffff;
  background-color: #ffffff;
  border: 0;
  -webkit-box-shadow: 0 0 3px rgba(0, 0, 0, 0.15);
  -moz-box-shadow: 0 0 3px rgba(0, 0, 0, 0.15);
  box-shadow: 0 0 3px rgba(0, 0, 0, 0.15);
  outline: 0;
}
#nav.wvcsd .navbar-inverse .btn-navbar,
#header.wvcsd .navbar-inverse .btn-navbar {
  color: #ffffff;
  text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25);
  background-color: #0e0e0e;
  background-image: -moz-linear-gradient(top, #151515, #040404);
  background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#151515), to(#040404));
  background-image: -webkit-linear-gradient(top, #151515, #040404);
  background-image: -o-linear-gradient(top, #151515, #040404);
  background-image: linear-gradient(to bottom, #151515, #040404);
  background-repeat: repeat-x;
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ff151515', endColorstr='#ff040404', GradientType=0);
  border-color: #040404 #040404 #000000;
  border-color: rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.25);
  *background-color: #040404;
  /* Darken IE7 buttons by default so they stand out more given they won't have borders */
  filter: progid:DXImageTransform.Microsoft.gradient(enabled = false);
}
#nav.wvcsd .navbar-inverse .btn-navbar:hover,
#header.wvcsd .navbar-inverse .btn-navbar:hover,
#nav.wvcsd .navbar-inverse .btn-navbar:focus,
#header.wvcsd .navbar-inverse .btn-navbar:focus,
#nav.wvcsd .navbar-inverse .btn-navbar:active,
#header.wvcsd .navbar-inverse .btn-navbar:active,
#nav.wvcsd .navbar-inverse .btn-navbar.active,
#header.wvcsd .navbar-inverse .btn-navbar.active,
#nav.wvcsd .navbar-inverse .btn-navbar.disabled,
#header.wvcsd .navbar-inverse .btn-navbar.disabled,
#nav.wvcsd .navbar-inverse .btn-navbar[disabled],
#header.wvcsd .navbar-inverse .btn-navbar[disabled] {
  color: #ffffff;
  background-color: #040404;
  *background-color: #000000;
}
#nav.wvcsd .navbar-inverse .btn-navbar:active,
#header.wvcsd .navbar-inverse .btn-navbar:active,
#nav.wvcsd .navbar-inverse .btn-navbar.active,
#header.wvcsd .navbar-inverse .btn-navbar.active {
  background-color: #000000 \9;
}
#nav.wvcsd .nav,
#header.wvcsd .nav {
  margin-left: 0;
  margin-bottom: 20px;
  list-style: none;
}
#nav.wvcsd .nav > li > a,
#header.wvcsd .nav > li > a {
  display: block;
}
#nav.wvcsd .nav > li > a:hover,
#header.wvcsd .nav > li > a:hover,
#nav.wvcsd .nav > li > a:focus,
#header.wvcsd .nav > li > a:focus {
  text-decoration: none;
  background-color: #eeeeee;
}
#nav.wvcsd .nav > li > a > img,
#header.wvcsd .nav > li > a > img {
  max-width: none;
}
#nav.wvcsd .nav > .pull-right,
#header.wvcsd .nav > .pull-right {
  float: right;
}
#nav.wvcsd .nav-header,
#header.wvcsd .nav-header {
  display: block;
  padding: 3px 15px;
  font-size: 11px;
  font-weight: bold;
  line-height: 20px;
  color: #999999;
  text-shadow: 0 1px 0 rgba(255, 255, 255, 0.5);
  text-transform: uppercase;
}
#nav.wvcsd .nav li + .nav-header,
#header.wvcsd .nav li + .nav-header {
  margin-top: 9px;
}
#nav.wvcsd .nav-list,
#header.wvcsd .nav-list {
  padding-left: 15px;
  padding-right: 15px;
  margin-bottom: 0;
}
#nav.wvcsd .nav-list > li > a,
#header.wvcsd .nav-list > li > a,
#nav.wvcsd .nav-list .nav-header,
#header.wvcsd .nav-list .nav-header {
  margin-left: -15px;
  margin-right: -15px;
  text-shadow: 0 1px 0 rgba(255, 255, 255, 0.5);
}
#nav.wvcsd .nav-list > li > a,
#header.wvcsd .nav-list > li > a {
  padding: 3px 15px;
}
#nav.wvcsd .nav-list > .active > a,
#header.wvcsd .nav-list > .active > a,
#nav.wvcsd .nav-list > .active > a:hover,
#header.wvcsd .nav-list > .active > a:hover,
#nav.wvcsd .nav-list > .active > a:focus,
#header.wvcsd .nav-list > .active > a:focus {
  color: #ffffff;
  text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.2);
  background-color: #0088cc;
}
#nav.wvcsd .nav-list [class^="icon-"],
#header.wvcsd .nav-list [class^="icon-"],
#nav.wvcsd .nav-list [class*=" icon-"],
#header.wvcsd .nav-list [class*=" icon-"] {
  margin-right: 2px;
}
#nav.wvcsd .nav-list .divider,
#header.wvcsd .nav-list .divider {
  *width: 100%;
  height: 1px;
  margin: 9px 1px;
  *margin: -5px 0 5px;
  overflow: hidden;
  background-color: #e5e5e5;
  border-bottom: 1px solid #ffffff;
}
#nav.wvcsd .nav-tabs,
#header.wvcsd .nav-tabs,
#nav.wvcsd .nav-pills,
#header.wvcsd .nav-pills {
  *zoom: 1;
}
#nav.wvcsd .nav-tabs:before,
#header.wvcsd .nav-tabs:before,
#nav.wvcsd .nav-pills:before,
#header.wvcsd .nav-pills:before,
#nav.wvcsd .nav-tabs:after,
#header.wvcsd .nav-tabs:after,
#nav.wvcsd .nav-pills:after,
#header.wvcsd .nav-pills:after {
  display: table;
  content: "";
  line-height: 0;
}
#nav.wvcsd .nav-tabs:after,
#header.wvcsd .nav-tabs:after,
#nav.wvcsd .nav-pills:after,
#header.wvcsd .nav-pills:after {
  clear: both;
}
#nav.wvcsd .nav-tabs > li,
#header.wvcsd .nav-tabs > li,
#nav.wvcsd .nav-pills > li,
#header.wvcsd .nav-pills > li {
  float: left;
}
#nav.wvcsd .nav-tabs > li > a,
#header.wvcsd .nav-tabs > li > a,
#nav.wvcsd .nav-pills > li > a,
#header.wvcsd .nav-pills > li > a {
  padding-right: 12px;
  padding-left: 12px;
  margin-right: 2px;
  line-height: 14px;
}
#nav.wvcsd .nav-tabs,
#header.wvcsd .nav-tabs {
  border-bottom: 1px solid #ddd;
}
#nav.wvcsd .nav-tabs > li,
#header.wvcsd .nav-tabs > li {
  margin-bottom: -1px;
}
#nav.wvcsd .nav-tabs > li > a,
#header.wvcsd .nav-tabs > li > a {
  padding-top: 8px;
  padding-bottom: 8px;
  line-height: 20px;
  border: 1px solid transparent;
  -webkit-border-radius: 4px 4px 0 0;
  -moz-border-radius: 4px 4px 0 0;
  border-radius: 4px 4px 0 0;
}
#nav.wvcsd .nav-tabs > li > a:hover,
#header.wvcsd .nav-tabs > li > a:hover,
#nav.wvcsd .nav-tabs > li > a:focus,
#header.wvcsd .nav-tabs > li > a:focus {
  border-color: #eeeeee #eeeeee #dddddd;
}
#nav.wvcsd .nav-tabs > .active > a,
#header.wvcsd .nav-tabs > .active > a,
#nav.wvcsd .nav-tabs > .active > a:hover,
#header.wvcsd .nav-tabs > .active > a:hover,
#nav.wvcsd .nav-tabs > .active > a:focus,
#header.wvcsd .nav-tabs > .active > a:focus {
  color: #555555;
  background-color: #ffffff;
  border: 1px solid #ddd;
  border-bottom-color: transparent;
  cursor: default;
}
#nav.wvcsd .nav-pills > li > a,
#header.wvcsd .nav-pills > li > a {
  padding-top: 8px;
  padding-bottom: 8px;
  margin-top: 2px;
  margin-bottom: 2px;
  -webkit-border-radius: 5px;
  -moz-border-radius: 5px;
  border-radius: 5px;
}
#nav.wvcsd .nav-pills > .active > a,
#header.wvcsd .nav-pills > .active > a,
#nav.wvcsd .nav-pills > .active > a:hover,
#header.wvcsd .nav-pills > .active > a:hover,
#nav.wvcsd .nav-pills > .active > a:focus,
#header.wvcsd .nav-pills > .active > a:focus {
  color: #ffffff;
  background-color: #0088cc;
}
#nav.wvcsd .nav-stacked > li,
#header.wvcsd .nav-stacked > li {
  float: none;
}
#nav.wvcsd .nav-stacked > li > a,
#header.wvcsd .nav-stacked > li > a {
  margin-right: 0;
}
#nav.wvcsd .nav-tabs.nav-stacked,
#header.wvcsd .nav-tabs.nav-stacked {
  border-bottom: 0;
}
#nav.wvcsd .nav-tabs.nav-stacked > li > a,
#header.wvcsd .nav-tabs.nav-stacked > li > a {
  border: 1px solid #ddd;
  -webkit-border-radius: 0;
  -moz-border-radius: 0;
  border-radius: 0;
}
#nav.wvcsd .nav-tabs.nav-stacked > li:first-child > a,
#header.wvcsd .nav-tabs.nav-stacked > li:first-child > a {
  -webkit-border-top-right-radius: 4px;
  -moz-border-radius-topright: 4px;
  border-top-right-radius: 4px;
  -webkit-border-top-left-radius: 4px;
  -moz-border-radius-topleft: 4px;
  border-top-left-radius: 4px;
}
#nav.wvcsd .nav-tabs.nav-stacked > li:last-child > a,
#header.wvcsd .nav-tabs.nav-stacked > li:last-child > a {
  -webkit-border-bottom-right-radius: 4px;
  -moz-border-radius-bottomright: 4px;
  border-bottom-right-radius: 4px;
  -webkit-border-bottom-left-radius: 4px;
  -moz-border-radius-bottomleft: 4px;
  border-bottom-left-radius: 4px;
}
#nav.wvcsd .nav-tabs.nav-stacked > li > a:hover,
#header.wvcsd .nav-tabs.nav-stacked > li > a:hover,
#nav.wvcsd .nav-tabs.nav-stacked > li > a:focus,
#header.wvcsd .nav-tabs.nav-stacked > li > a:focus {
  border-color: #ddd;
  z-index: 2;
}
#nav.wvcsd .nav-pills.nav-stacked > li > a,
#header.wvcsd .nav-pills.nav-stacked > li > a {
  margin-bottom: 3px;
}
#nav.wvcsd .nav-pills.nav-stacked > li:last-child > a,
#header.wvcsd .nav-pills.nav-stacked > li:last-child > a {
  margin-bottom: 1px;
}
#nav.wvcsd .nav-tabs .dropdown-menu,
#header.wvcsd .nav-tabs .dropdown-menu {
  -webkit-border-radius: 0 0 6px 6px;
  -moz-border-radius: 0 0 6px 6px;
  border-radius: 0 0 6px 6px;
}
#nav.wvcsd .nav-pills .dropdown-menu,
#header.wvcsd .nav-pills .dropdown-menu {
  -webkit-border-radius: 6px;
  -moz-border-radius: 6px;
  border-radius: 6px;
}
#nav.wvcsd .nav .dropdown-toggle .caret,
#header.wvcsd .nav .dropdown-toggle .caret {
  border-top-color: #0088cc;
  border-bottom-color: #0088cc;
  margin-top: 6px;
}
#nav.wvcsd .nav .dropdown-toggle:hover .caret,
#header.wvcsd .nav .dropdown-toggle:hover .caret,
#nav.wvcsd .nav .dropdown-toggle:focus .caret,
#header.wvcsd .nav .dropdown-toggle:focus .caret {
  border-top-color: #005580;
  border-bottom-color: #005580;
}
#nav.wvcsd .nav-tabs .dropdown-toggle .caret,
#header.wvcsd .nav-tabs .dropdown-toggle .caret {
  margin-top: 8px;
}
#nav.wvcsd .nav .active .dropdown-toggle .caret,
#header.wvcsd .nav .active .dropdown-toggle .caret {
  border-top-color: #fff;
  border-bottom-color: #fff;
}
#nav.wvcsd .nav-tabs .active .dropdown-toggle .caret,
#header.wvcsd .nav-tabs .active .dropdown-toggle .caret {
  border-top-color: #555555;
  border-bottom-color: #555555;
}
#nav.wvcsd .nav > .dropdown.active > a:hover,
#header.wvcsd .nav > .dropdown.active > a:hover,
#nav.wvcsd .nav > .dropdown.active > a:focus,
#header.wvcsd .nav > .dropdown.active > a:focus {
  cursor: pointer;
}
#nav.wvcsd .nav-tabs .open .dropdown-toggle,
#header.wvcsd .nav-tabs .open .dropdown-toggle,
#nav.wvcsd .nav-pills .open .dropdown-toggle,
#header.wvcsd .nav-pills .open .dropdown-toggle,
#nav.wvcsd .nav > li.dropdown.open.active > a:hover,
#header.wvcsd .nav > li.dropdown.open.active > a:hover,
#nav.wvcsd .nav > li.dropdown.open.active > a:focus,
#header.wvcsd .nav > li.dropdown.open.active > a:focus {
  color: #ffffff;
  background-color: #999999;
  border-color: #999999;
}
#nav.wvcsd .nav li.dropdown.open .caret,
#header.wvcsd .nav li.dropdown.open .caret,
#nav.wvcsd .nav li.dropdown.open.active .caret,
#header.wvcsd .nav li.dropdown.open.active .caret,
#nav.wvcsd .nav li.dropdown.open a:hover .caret,
#header.wvcsd .nav li.dropdown.open a:hover .caret,
#nav.wvcsd .nav li.dropdown.open a:focus .caret,
#header.wvcsd .nav li.dropdown.open a:focus .caret {
  border-top-color: #ffffff;
  border-bottom-color: #ffffff;
  opacity: 1;
  filter: alpha(opacity=100);
}
#nav.wvcsd .tabs-stacked .open > a:hover,
#header.wvcsd .tabs-stacked .open > a:hover,
#nav.wvcsd .tabs-stacked .open > a:focus,
#header.wvcsd .tabs-stacked .open > a:focus {
  border-color: #999999;
}
#nav.wvcsd .tabbable,
#header.wvcsd .tabbable {
  *zoom: 1;
}
#nav.wvcsd .tabbable:before,
#header.wvcsd .tabbable:before,
#nav.wvcsd .tabbable:after,
#header.wvcsd .tabbable:after {
  display: table;
  content: "";
  line-height: 0;
}
#nav.wvcsd .tabbable:after,
#header.wvcsd .tabbable:after {
  clear: both;
}
#nav.wvcsd .tab-content,
#header.wvcsd .tab-content {
  overflow: auto;
}
#nav.wvcsd .tabs-below > .nav-tabs,
#header.wvcsd .tabs-below > .nav-tabs,
#nav.wvcsd .tabs-right > .nav-tabs,
#header.wvcsd .tabs-right > .nav-tabs,
#nav.wvcsd .tabs-left > .nav-tabs,
#header.wvcsd .tabs-left > .nav-tabs {
  border-bottom: 0;
}
#nav.wvcsd .tab-content > .tab-pane,
#header.wvcsd .tab-content > .tab-pane,
#nav.wvcsd .pill-content > .pill-pane,
#header.wvcsd .pill-content > .pill-pane {
  display: none;
}
#nav.wvcsd .tab-content > .active,
#header.wvcsd .tab-content > .active,
#nav.wvcsd .pill-content > .active,
#header.wvcsd .pill-content > .active {
  display: block;
}
#nav.wvcsd .tabs-below > .nav-tabs,
#header.wvcsd .tabs-below > .nav-tabs {
  border-top: 1px solid #ddd;
}
#nav.wvcsd .tabs-below > .nav-tabs > li,
#header.wvcsd .tabs-below > .nav-tabs > li {
  margin-top: -1px;
  margin-bottom: 0;
}
#nav.wvcsd .tabs-below > .nav-tabs > li > a,
#header.wvcsd .tabs-below > .nav-tabs > li > a {
  -webkit-border-radius: 0 0 4px 4px;
  -moz-border-radius: 0 0 4px 4px;
  border-radius: 0 0 4px 4px;
}
#nav.wvcsd .tabs-below > .nav-tabs > li > a:hover,
#header.wvcsd .tabs-below > .nav-tabs > li > a:hover,
#nav.wvcsd .tabs-below > .nav-tabs > li > a:focus,
#header.wvcsd .tabs-below > .nav-tabs > li > a:focus {
  border-bottom-color: transparent;
  border-top-color: #ddd;
}
#nav.wvcsd .tabs-below > .nav-tabs > .active > a,
#header.wvcsd .tabs-below > .nav-tabs > .active > a,
#nav.wvcsd .tabs-below > .nav-tabs > .active > a:hover,
#header.wvcsd .tabs-below > .nav-tabs > .active > a:hover,
#nav.wvcsd .tabs-below > .nav-tabs > .active > a:focus,
#header.wvcsd .tabs-below > .nav-tabs > .active > a:focus {
  border-color: transparent #ddd #ddd #ddd;
}
#nav.wvcsd .tabs-left > .nav-tabs > li,
#header.wvcsd .tabs-left > .nav-tabs > li,
#nav.wvcsd .tabs-right > .nav-tabs > li,
#header.wvcsd .tabs-right > .nav-tabs > li {
  float: none;
}
#nav.wvcsd .tabs-left > .nav-tabs > li > a,
#header.wvcsd .tabs-left > .nav-tabs > li > a,
#nav.wvcsd .tabs-right > .nav-tabs > li > a,
#header.wvcsd .tabs-right > .nav-tabs > li > a {
  min-width: 74px;
  margin-right: 0;
  margin-bottom: 3px;
}
#nav.wvcsd .tabs-left > .nav-tabs,
#header.wvcsd .tabs-left > .nav-tabs {
  float: left;
  margin-right: 19px;
  border-right: 1px solid #ddd;
}
#nav.wvcsd .tabs-left > .nav-tabs > li > a,
#header.wvcsd .tabs-left > .nav-tabs > li > a {
  margin-right: -1px;
  -webkit-border-radius: 4px 0 0 4px;
  -moz-border-radius: 4px 0 0 4px;
  border-radius: 4px 0 0 4px;
}
#nav.wvcsd .tabs-left > .nav-tabs > li > a:hover,
#header.wvcsd .tabs-left > .nav-tabs > li > a:hover,
#nav.wvcsd .tabs-left > .nav-tabs > li > a:focus,
#header.wvcsd .tabs-left > .nav-tabs > li > a:focus {
  border-color: #eeeeee #dddddd #eeeeee #eeeeee;
}
#nav.wvcsd .tabs-left > .nav-tabs .active > a,
#header.wvcsd .tabs-left > .nav-tabs .active > a,
#nav.wvcsd .tabs-left > .nav-tabs .active > a:hover,
#header.wvcsd .tabs-left > .nav-tabs .active > a:hover,
#nav.wvcsd .tabs-left > .nav-tabs .active > a:focus,
#header.wvcsd .tabs-left > .nav-tabs .active > a:focus {
  border-color: #ddd transparent #ddd #ddd;
  *border-right-color: #ffffff;
}
#nav.wvcsd .tabs-right > .nav-tabs,
#header.wvcsd .tabs-right > .nav-tabs {
  float: right;
  margin-left: 19px;
  border-left: 1px solid #ddd;
}
#nav.wvcsd .tabs-right > .nav-tabs > li > a,
#header.wvcsd .tabs-right > .nav-tabs > li > a {
  margin-left: -1px;
  -webkit-border-radius: 0 4px 4px 0;
  -moz-border-radius: 0 4px 4px 0;
  border-radius: 0 4px 4px 0;
}
#nav.wvcsd .tabs-right > .nav-tabs > li > a:hover,
#header.wvcsd .tabs-right > .nav-tabs > li > a:hover,
#nav.wvcsd .tabs-right > .nav-tabs > li > a:focus,
#header.wvcsd .tabs-right > .nav-tabs > li > a:focus {
  border-color: #eeeeee #eeeeee #eeeeee #dddddd;
}
#nav.wvcsd .tabs-right > .nav-tabs .active > a,
#header.wvcsd .tabs-right > .nav-tabs .active > a,
#nav.wvcsd .tabs-right > .nav-tabs .active > a:hover,
#header.wvcsd .tabs-right > .nav-tabs .active > a:hover,
#nav.wvcsd .tabs-right > .nav-tabs .active > a:focus,
#header.wvcsd .tabs-right > .nav-tabs .active > a:focus {
  border-color: #ddd #ddd #ddd transparent;
  *border-left-color: #ffffff;
}
#nav.wvcsd .nav > .disabled > a,
#header.wvcsd .nav > .disabled > a {
  color: #999999;
}
#nav.wvcsd .nav > .disabled > a:hover,
#header.wvcsd .nav > .disabled > a:hover,
#nav.wvcsd .nav > .disabled > a:focus,
#header.wvcsd .nav > .disabled > a:focus {
  text-decoration: none;
  background-color: transparent;
  cursor: default;
}
#nav.wvcsd .pager,
#header.wvcsd .pager {
  margin: 20px 0;
  list-style: none;
  text-align: center;
  *zoom: 1;
}
#nav.wvcsd .pager:before,
#header.wvcsd .pager:before,
#nav.wvcsd .pager:after,
#header.wvcsd .pager:after {
  display: table;
  content: "";
  line-height: 0;
}
#nav.wvcsd .pager:after,
#header.wvcsd .pager:after {
  clear: both;
}
#nav.wvcsd .pager li,
#header.wvcsd .pager li {
  display: inline;
}
#nav.wvcsd .pager li > a,
#header.wvcsd .pager li > a,
#nav.wvcsd .pager li > span,
#header.wvcsd .pager li > span {
  display: inline-block;
  padding: 5px 14px;
  background-color: #fff;
  border: 1px solid #ddd;
  -webkit-border-radius: 15px;
  -moz-border-radius: 15px;
  border-radius: 15px;
}
#nav.wvcsd .pager li > a:hover,
#header.wvcsd .pager li > a:hover,
#nav.wvcsd .pager li > a:focus,
#header.wvcsd .pager li > a:focus {
  text-decoration: none;
  background-color: #f5f5f5;
}
#nav.wvcsd .pager .next > a,
#header.wvcsd .pager .next > a,
#nav.wvcsd .pager .next > span,
#header.wvcsd .pager .next > span {
  float: right;
}
#nav.wvcsd .pager .previous > a,
#header.wvcsd .pager .previous > a,
#nav.wvcsd .pager .previous > span,
#header.wvcsd .pager .previous > span {
  float: left;
}
#nav.wvcsd .pager .disabled > a,
#header.wvcsd .pager .disabled > a,
#nav.wvcsd .pager .disabled > a:hover,
#header.wvcsd .pager .disabled > a:hover,
#nav.wvcsd .pager .disabled > a:focus,
#header.wvcsd .pager .disabled > a:focus,
#nav.wvcsd .pager .disabled > span,
#header.wvcsd .pager .disabled > span {
  color: #999999;
  background-color: #fff;
  cursor: default;
}
#nav.wvcsd .pagination,
#header.wvcsd .pagination {
  margin: 20px 0;
}
#nav.wvcsd .pagination ul,
#header.wvcsd .pagination ul {
  display: inline-block;
  *display: inline;
  /* IE7 inline-block hack */
  *zoom: 1;
  margin-left: 0;
  margin-bottom: 0;
  -webkit-border-radius: 4px;
  -moz-border-radius: 4px;
  border-radius: 4px;
  -webkit-box-shadow: 0 1px 2px rgba(0, 0, 0, 0.05);
  -moz-box-shadow: 0 1px 2px rgba(0, 0, 0, 0.05);
  box-shadow: 0 1px 2px rgba(0, 0, 0, 0.05);
}
#nav.wvcsd .pagination ul > li,
#header.wvcsd .pagination ul > li {
  display: inline;
}
#nav.wvcsd .pagination ul > li > a,
#header.wvcsd .pagination ul > li > a,
#nav.wvcsd .pagination ul > li > span,
#header.wvcsd .pagination ul > li > span {
  float: left;
  padding: 4px 12px;
  line-height: 20px;
  text-decoration: none;
  background-color: #ffffff;
  border: 1px solid #dddddd;
  border-left-width: 0;
}
#nav.wvcsd .pagination ul > li > a:hover,
#header.wvcsd .pagination ul > li > a:hover,
#nav.wvcsd .pagination ul > li > a:focus,
#header.wvcsd .pagination ul > li > a:focus,
#nav.wvcsd .pagination ul > .active > a,
#header.wvcsd .pagination ul > .active > a,
#nav.wvcsd .pagination ul > .active > span,
#header.wvcsd .pagination ul > .active > span {
  background-color: #f5f5f5;
}
#nav.wvcsd .pagination ul > .active > a,
#header.wvcsd .pagination ul > .active > a,
#nav.wvcsd .pagination ul > .active > span,
#header.wvcsd .pagination ul > .active > span {
  color: #999999;
  cursor: default;
}
#nav.wvcsd .pagination ul > .disabled > span,
#header.wvcsd .pagination ul > .disabled > span,
#nav.wvcsd .pagination ul > .disabled > a,
#header.wvcsd .pagination ul > .disabled > a,
#nav.wvcsd .pagination ul > .disabled > a:hover,
#header.wvcsd .pagination ul > .disabled > a:hover,
#nav.wvcsd .pagination ul > .disabled > a:focus,
#header.wvcsd .pagination ul > .disabled > a:focus {
  color: #999999;
  background-color: transparent;
  cursor: default;
}
#nav.wvcsd .pagination ul > li:first-child > a,
#header.wvcsd .pagination ul > li:first-child > a,
#nav.wvcsd .pagination ul > li:first-child > span,
#header.wvcsd .pagination ul > li:first-child > span {
  border-left-width: 1px;
  -webkit-border-top-left-radius: 4px;
  -moz-border-radius-topleft: 4px;
  border-top-left-radius: 4px;
  -webkit-border-bottom-left-radius: 4px;
  -moz-border-radius-bottomleft: 4px;
  border-bottom-left-radius: 4px;
}
#nav.wvcsd .pagination ul > li:last-child > a,
#header.wvcsd .pagination ul > li:last-child > a,
#nav.wvcsd .pagination ul > li:last-child > span,
#header.wvcsd .pagination ul > li:last-child > span {
  -webkit-border-top-right-radius: 4px;
  -moz-border-radius-topright: 4px;
  border-top-right-radius: 4px;
  -webkit-border-bottom-right-radius: 4px;
  -moz-border-radius-bottomright: 4px;
  border-bottom-right-radius: 4px;
}
#nav.wvcsd .pagination-centered,
#header.wvcsd .pagination-centered {
  text-align: center;
}
#nav.wvcsd .pagination-right,
#header.wvcsd .pagination-right {
  text-align: right;
}
#nav.wvcsd .pagination-large ul > li > a,
#header.wvcsd .pagination-large ul > li > a,
#nav.wvcsd .pagination-large ul > li > span,
#header.wvcsd .pagination-large ul > li > span {
  padding: 11px 19px;
  font-size: 17.5px;
}
#nav.wvcsd .pagination-large ul > li:first-child > a,
#header.wvcsd .pagination-large ul > li:first-child > a,
#nav.wvcsd .pagination-large ul > li:first-child > span,
#header.wvcsd .pagination-large ul > li:first-child > span {
  -webkit-border-top-left-radius: 6px;
  -moz-border-radius-topleft: 6px;
  border-top-left-radius: 6px;
  -webkit-border-bottom-left-radius: 6px;
  -moz-border-radius-bottomleft: 6px;
  border-bottom-left-radius: 6px;
}
#nav.wvcsd .pagination-large ul > li:last-child > a,
#header.wvcsd .pagination-large ul > li:last-child > a,
#nav.wvcsd .pagination-large ul > li:last-child > span,
#header.wvcsd .pagination-large ul > li:last-child > span {
  -webkit-border-top-right-radius: 6px;
  -moz-border-radius-topright: 6px;
  border-top-right-radius: 6px;
  -webkit-border-bottom-right-radius: 6px;
  -moz-border-radius-bottomright: 6px;
  border-bottom-right-radius: 6px;
}
#nav.wvcsd .pagination-mini ul > li:first-child > a,
#header.wvcsd .pagination-mini ul > li:first-child > a,
#nav.wvcsd .pagination-small ul > li:first-child > a,
#header.wvcsd .pagination-small ul > li:first-child > a,
#nav.wvcsd .pagination-mini ul > li:first-child > span,
#header.wvcsd .pagination-mini ul > li:first-child > span,
#nav.wvcsd .pagination-small ul > li:first-child > span,
#header.wvcsd .pagination-small ul > li:first-child > span {
  -webkit-border-top-left-radius: 3px;
  -moz-border-radius-topleft: 3px;
  border-top-left-radius: 3px;
  -webkit-border-bottom-left-radius: 3px;
  -moz-border-radius-bottomleft: 3px;
  border-bottom-left-radius: 3px;
}
#nav.wvcsd .pagination-mini ul > li:last-child > a,
#header.wvcsd .pagination-mini ul > li:last-child > a,
#nav.wvcsd .pagination-small ul > li:last-child > a,
#header.wvcsd .pagination-small ul > li:last-child > a,
#nav.wvcsd .pagination-mini ul > li:last-child > span,
#header.wvcsd .pagination-mini ul > li:last-child > span,
#nav.wvcsd .pagination-small ul > li:last-child > span,
#header.wvcsd .pagination-small ul > li:last-child > span {
  -webkit-border-top-right-radius: 3px;
  -moz-border-radius-topright: 3px;
  border-top-right-radius: 3px;
  -webkit-border-bottom-right-radius: 3px;
  -moz-border-radius-bottomright: 3px;
  border-bottom-right-radius: 3px;
}
#nav.wvcsd .pagination-small ul > li > a,
#header.wvcsd .pagination-small ul > li > a,
#nav.wvcsd .pagination-small ul > li > span,
#header.wvcsd .pagination-small ul > li > span {
  padding: 2px 10px;
  font-size: 11.9px;
}
#nav.wvcsd .pagination-mini ul > li > a,
#header.wvcsd .pagination-mini ul > li > a,
#nav.wvcsd .pagination-mini ul > li > span,
#header.wvcsd .pagination-mini ul > li > span {
  padding: 0 6px;
  font-size: 10.5px;
}
#nav.wvcsd .popover,
#header.wvcsd .popover {
  position: absolute;
  top: 0;
  left: 0;
  z-index: 1010;
  display: none;
  max-width: 276px;
  padding: 1px;
  text-align: left;
  background-color: #ffffff;
  -webkit-background-clip: padding-box;
  -moz-background-clip: padding;
  background-clip: padding-box;
  border: 1px solid #ccc;
  border: 1px solid rgba(0, 0, 0, 0.2);
  -webkit-border-radius: 6px;
  -moz-border-radius: 6px;
  border-radius: 6px;
  -webkit-box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
  -moz-box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
  box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
  white-space: normal;
}
#nav.wvcsd .popover.top,
#header.wvcsd .popover.top {
  margin-top: -10px;
}
#nav.wvcsd .popover.right,
#header.wvcsd .popover.right {
  margin-left: 10px;
}
#nav.wvcsd .popover.bottom,
#header.wvcsd .popover.bottom {
  margin-top: 10px;
}
#nav.wvcsd .popover.left,
#header.wvcsd .popover.left {
  margin-left: -10px;
}
#nav.wvcsd .popover-title,
#header.wvcsd .popover-title {
  margin: 0;
  padding: 8px 14px;
  font-size: 14px;
  font-weight: normal;
  line-height: 18px;
  background-color: #f7f7f7;
  border-bottom: 1px solid #ebebeb;
  -webkit-border-radius: 5px 5px 0 0;
  -moz-border-radius: 5px 5px 0 0;
  border-radius: 5px 5px 0 0;
}
#nav.wvcsd .popover-title:empty,
#header.wvcsd .popover-title:empty {
  display: none;
}
#nav.wvcsd .popover-content,
#header.wvcsd .popover-content {
  padding: 9px 14px;
}
#nav.wvcsd .popover .arrow,
#header.wvcsd .popover .arrow,
#nav.wvcsd .popover .arrow:after,
#header.wvcsd .popover .arrow:after {
  position: absolute;
  display: block;
  width: 0;
  height: 0;
  border-color: transparent;
  border-style: solid;
}
#nav.wvcsd .popover .arrow,
#header.wvcsd .popover .arrow {
  border-width: 11px;
}
#nav.wvcsd .popover .arrow:after,
#header.wvcsd .popover .arrow:after {
  border-width: 10px;
  content: "";
}
#nav.wvcsd .popover.top .arrow,
#header.wvcsd .popover.top .arrow {
  left: 50%;
  margin-left: -11px;
  border-bottom-width: 0;
  border-top-color: #999;
  border-top-color: rgba(0, 0, 0, 0.25);
  bottom: -11px;
}
#nav.wvcsd .popover.top .arrow:after,
#header.wvcsd .popover.top .arrow:after {
  bottom: 1px;
  margin-left: -10px;
  border-bottom-width: 0;
  border-top-color: #ffffff;
}
#nav.wvcsd .popover.right .arrow,
#header.wvcsd .popover.right .arrow {
  top: 50%;
  left: -11px;
  margin-top: -11px;
  border-left-width: 0;
  border-right-color: #999;
  border-right-color: rgba(0, 0, 0, 0.25);
}
#nav.wvcsd .popover.right .arrow:after,
#header.wvcsd .popover.right .arrow:after {
  left: 1px;
  bottom: -10px;
  border-left-width: 0;
  border-right-color: #ffffff;
}
#nav.wvcsd .popover.bottom .arrow,
#header.wvcsd .popover.bottom .arrow {
  left: 50%;
  margin-left: -11px;
  border-top-width: 0;
  border-bottom-color: #999;
  border-bottom-color: rgba(0, 0, 0, 0.25);
  top: -11px;
}
#nav.wvcsd .popover.bottom .arrow:after,
#header.wvcsd .popover.bottom .arrow:after {
  top: 1px;
  margin-left: -10px;
  border-top-width: 0;
  border-bottom-color: #ffffff;
}
#nav.wvcsd .popover.left .arrow,
#header.wvcsd .popover.left .arrow {
  top: 50%;
  right: -11px;
  margin-top: -11px;
  border-right-width: 0;
  border-left-color: #999;
  border-left-color: rgba(0, 0, 0, 0.25);
}
#nav.wvcsd .popover.left .arrow:after,
#header.wvcsd .popover.left .arrow:after {
  right: 1px;
  border-right-width: 0;
  border-left-color: #ffffff;
  bottom: -10px;
}
@-webkit-keyframes progress-bar-stripes {
  from {
    background-position: 40px 0;
  }
  to {
    background-position: 0 0;
  }
}
@-moz-keyframes progress-bar-stripes {
  from {
    background-position: 40px 0;
  }
  to {
    background-position: 0 0;
  }
}
@-ms-keyframes progress-bar-stripes {
  from {
    background-position: 40px 0;
  }
  to {
    background-position: 0 0;
  }
}
@-o-keyframes progress-bar-stripes {
  from {
    background-position: 0 0;
  }
  to {
    background-position: 40px 0;
  }
}
@keyframes progress-bar-stripes {
  from {
    background-position: 40px 0;
  }
  to {
    background-position: 0 0;
  }
}
#nav.wvcsd .progress,
#header.wvcsd .progress {
  overflow: hidden;
  height: 20px;
  margin-bottom: 20px;
  background-color: #f7f7f7;
  background-image: -moz-linear-gradient(top, #f5f5f5, #f9f9f9);
  background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#f5f5f5), to(#f9f9f9));
  background-image: -webkit-linear-gradient(top, #f5f5f5, #f9f9f9);
  background-image: -o-linear-gradient(top, #f5f5f5, #f9f9f9);
  background-image: linear-gradient(to bottom, #f5f5f5, #f9f9f9);
  background-repeat: repeat-x;
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#fff5f5f5', endColorstr='#fff9f9f9', GradientType=0);
  -webkit-box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.1);
  -moz-box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.1);
  box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.1);
  -webkit-border-radius: 4px;
  -moz-border-radius: 4px;
  border-radius: 4px;
}
#nav.wvcsd .progress .bar,
#header.wvcsd .progress .bar {
  width: 0%;
  height: 100%;
  color: #ffffff;
  float: left;
  font-size: 12px;
  text-align: center;
  text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25);
  background-color: #0e90d2;
  background-image: -moz-linear-gradient(top, #149bdf, #0480be);
  background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#149bdf), to(#0480be));
  background-image: -webkit-linear-gradient(top, #149bdf, #0480be);
  background-image: -o-linear-gradient(top, #149bdf, #0480be);
  background-image: linear-gradient(to bottom, #149bdf, #0480be);
  background-repeat: repeat-x;
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ff149bdf', endColorstr='#ff0480be', GradientType=0);
  -webkit-box-shadow: inset 0 -1px 0 rgba(0, 0, 0, 0.15);
  -moz-box-shadow: inset 0 -1px 0 rgba(0, 0, 0, 0.15);
  box-shadow: inset 0 -1px 0 rgba(0, 0, 0, 0.15);
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
  -webkit-transition: width 0.6s ease;
  -moz-transition: width 0.6s ease;
  -o-transition: width 0.6s ease;
  transition: width 0.6s ease;
}
#nav.wvcsd .progress .bar + .bar,
#header.wvcsd .progress .bar + .bar {
  -webkit-box-shadow: inset 1px 0 0 rgba(0,0,0,.15), inset 0 -1px 0 rgba(0,0,0,.15);
  -moz-box-shadow: inset 1px 0 0 rgba(0,0,0,.15), inset 0 -1px 0 rgba(0,0,0,.15);
  box-shadow: inset 1px 0 0 rgba(0,0,0,.15), inset 0 -1px 0 rgba(0,0,0,.15);
}
#nav.wvcsd .progress-striped .bar,
#header.wvcsd .progress-striped .bar {
  background-color: #149bdf;
  background-image: -webkit-gradient(linear, 0 100%, 100% 0, color-stop(0.25, rgba(255, 255, 255, 0.15)), color-stop(0.25, transparent), color-stop(0.5, transparent), color-stop(0.5, rgba(255, 255, 255, 0.15)), color-stop(0.75, rgba(255, 255, 255, 0.15)), color-stop(0.75, transparent), to(transparent));
  background-image: -webkit-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-image: -moz-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-image: -o-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-image: linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  -webkit-background-size: 40px 40px;
  -moz-background-size: 40px 40px;
  -o-background-size: 40px 40px;
  background-size: 40px 40px;
}
#nav.wvcsd .progress.active .bar,
#header.wvcsd .progress.active .bar {
  -webkit-animation: progress-bar-stripes 2s linear infinite;
  -moz-animation: progress-bar-stripes 2s linear infinite;
  -ms-animation: progress-bar-stripes 2s linear infinite;
  -o-animation: progress-bar-stripes 2s linear infinite;
  animation: progress-bar-stripes 2s linear infinite;
}
#nav.wvcsd .progress-danger .bar,
#header.wvcsd .progress-danger .bar,
#nav.wvcsd .progress .bar-danger,
#header.wvcsd .progress .bar-danger {
  background-color: #dd514c;
  background-image: -moz-linear-gradient(top, #ee5f5b, #c43c35);
  background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#ee5f5b), to(#c43c35));
  background-image: -webkit-linear-gradient(top, #ee5f5b, #c43c35);
  background-image: -o-linear-gradient(top, #ee5f5b, #c43c35);
  background-image: linear-gradient(to bottom, #ee5f5b, #c43c35);
  background-repeat: repeat-x;
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffee5f5b', endColorstr='#ffc43c35', GradientType=0);
}
#nav.wvcsd .progress-danger.progress-striped .bar,
#header.wvcsd .progress-danger.progress-striped .bar,
#nav.wvcsd .progress-striped .bar-danger,
#header.wvcsd .progress-striped .bar-danger {
  background-color: #ee5f5b;
  background-image: -webkit-gradient(linear, 0 100%, 100% 0, color-stop(0.25, rgba(255, 255, 255, 0.15)), color-stop(0.25, transparent), color-stop(0.5, transparent), color-stop(0.5, rgba(255, 255, 255, 0.15)), color-stop(0.75, rgba(255, 255, 255, 0.15)), color-stop(0.75, transparent), to(transparent));
  background-image: -webkit-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-image: -moz-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-image: -o-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-image: linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
}
#nav.wvcsd .progress-success .bar,
#header.wvcsd .progress-success .bar,
#nav.wvcsd .progress .bar-success,
#header.wvcsd .progress .bar-success {
  background-color: #5eb95e;
  background-image: -moz-linear-gradient(top, #62c462, #57a957);
  background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#62c462), to(#57a957));
  background-image: -webkit-linear-gradient(top, #62c462, #57a957);
  background-image: -o-linear-gradient(top, #62c462, #57a957);
  background-image: linear-gradient(to bottom, #62c462, #57a957);
  background-repeat: repeat-x;
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ff62c462', endColorstr='#ff57a957', GradientType=0);
}
#nav.wvcsd .progress-success.progress-striped .bar,
#header.wvcsd .progress-success.progress-striped .bar,
#nav.wvcsd .progress-striped .bar-success,
#header.wvcsd .progress-striped .bar-success {
  background-color: #62c462;
  background-image: -webkit-gradient(linear, 0 100%, 100% 0, color-stop(0.25, rgba(255, 255, 255, 0.15)), color-stop(0.25, transparent), color-stop(0.5, transparent), color-stop(0.5, rgba(255, 255, 255, 0.15)), color-stop(0.75, rgba(255, 255, 255, 0.15)), color-stop(0.75, transparent), to(transparent));
  background-image: -webkit-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-image: -moz-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-image: -o-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-image: linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
}
#nav.wvcsd .progress-info .bar,
#header.wvcsd .progress-info .bar,
#nav.wvcsd .progress .bar-info,
#header.wvcsd .progress .bar-info {
  background-color: #4bb1cf;
  background-image: -moz-linear-gradient(top, #5bc0de, #339bb9);
  background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#5bc0de), to(#339bb9));
  background-image: -webkit-linear-gradient(top, #5bc0de, #339bb9);
  background-image: -o-linear-gradient(top, #5bc0de, #339bb9);
  background-image: linear-gradient(to bottom, #5bc0de, #339bb9);
  background-repeat: repeat-x;
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ff5bc0de', endColorstr='#ff339bb9', GradientType=0);
}
#nav.wvcsd .progress-info.progress-striped .bar,
#header.wvcsd .progress-info.progress-striped .bar,
#nav.wvcsd .progress-striped .bar-info,
#header.wvcsd .progress-striped .bar-info {
  background-color: #5bc0de;
  background-image: -webkit-gradient(linear, 0 100%, 100% 0, color-stop(0.25, rgba(255, 255, 255, 0.15)), color-stop(0.25, transparent), color-stop(0.5, transparent), color-stop(0.5, rgba(255, 255, 255, 0.15)), color-stop(0.75, rgba(255, 255, 255, 0.15)), color-stop(0.75, transparent), to(transparent));
  background-image: -webkit-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-image: -moz-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-image: -o-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-image: linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
}
#nav.wvcsd .progress-warning .bar,
#header.wvcsd .progress-warning .bar,
#nav.wvcsd .progress .bar-warning,
#header.wvcsd .progress .bar-warning {
  background-color: #faa732;
  background-image: -moz-linear-gradient(top, #fbb450, #f89406);
  background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#fbb450), to(#f89406));
  background-image: -webkit-linear-gradient(top, #fbb450, #f89406);
  background-image: -o-linear-gradient(top, #fbb450, #f89406);
  background-image: linear-gradient(to bottom, #fbb450, #f89406);
  background-repeat: repeat-x;
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#fffbb450', endColorstr='#fff89406', GradientType=0);
}
#nav.wvcsd .progress-warning.progress-striped .bar,
#header.wvcsd .progress-warning.progress-striped .bar,
#nav.wvcsd .progress-striped .bar-warning,
#header.wvcsd .progress-striped .bar-warning {
  background-color: #fbb450;
  background-image: -webkit-gradient(linear, 0 100%, 100% 0, color-stop(0.25, rgba(255, 255, 255, 0.15)), color-stop(0.25, transparent), color-stop(0.5, transparent), color-stop(0.5, rgba(255, 255, 255, 0.15)), color-stop(0.75, rgba(255, 255, 255, 0.15)), color-stop(0.75, transparent), to(transparent));
  background-image: -webkit-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-image: -moz-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-image: -o-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-image: linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
}
#nav.wvcsd article,
#header.wvcsd article,
#nav.wvcsd aside,
#header.wvcsd aside,
#nav.wvcsd details,
#header.wvcsd details,
#nav.wvcsd figcaption,
#header.wvcsd figcaption,
#nav.wvcsd figure,
#header.wvcsd figure,
#nav.wvcsd footer,
#header.wvcsd footer,
#nav.wvcsd header,
#header.wvcsd header,
#nav.wvcsd hgroup,
#header.wvcsd hgroup,
#nav.wvcsd nav,
#header.wvcsd nav,
#nav.wvcsd section,
#header.wvcsd section {
  display: block;
}
#nav.wvcsd audio,
#header.wvcsd audio,
#nav.wvcsd canvas,
#header.wvcsd canvas,
#nav.wvcsd video,
#header.wvcsd video {
  display: inline-block;
  *display: inline;
  *zoom: 1;
}
#nav.wvcsd audio:not([controls]),
#header.wvcsd audio:not([controls]) {
  display: none;
}
#nav.wvcsd html,
#header.wvcsd html {
  font-size: 100%;
  -webkit-text-size-adjust: 100%;
  -ms-text-size-adjust: 100%;
}
#nav.wvcsd a:focus,
#header.wvcsd a:focus {
  outline: thin dotted #333;
  outline: 5px auto -webkit-focus-ring-color;
  outline-offset: -2px;
}
#nav.wvcsd a:hover,
#header.wvcsd a:hover,
#nav.wvcsd a:active,
#header.wvcsd a:active {
  outline: 0;
}
#nav.wvcsd sub,
#header.wvcsd sub,
#nav.wvcsd sup,
#header.wvcsd sup {
  position: relative;
  font-size: 75%;
  line-height: 0;
  vertical-align: baseline;
}
#nav.wvcsd sup,
#header.wvcsd sup {
  top: -0.5em;
}
#nav.wvcsd sub,
#header.wvcsd sub {
  bottom: -0.25em;
}
#nav.wvcsd img,
#header.wvcsd img {
  /* Responsive images (ensure images don't scale beyond their parents) */
  max-width: 100%;
  /* Part 1: Set a maxium relative to the parent */
  width: auto\9;
  /* IE7-8 need help adjusting responsive images */
  height: auto;
  /* Part 2: Scale the height according to the width, otherwise you get stretching */
  vertical-align: middle;
  border: 0;
  -ms-interpolation-mode: bicubic;
}
#nav.wvcsd #map_canvas img,
#header.wvcsd #map_canvas img,
#nav.wvcsd .google-maps img,
#header.wvcsd .google-maps img {
  max-width: none;
}
#nav.wvcsd button,
#header.wvcsd button,
#nav.wvcsd input,
#header.wvcsd input,
#nav.wvcsd select,
#header.wvcsd select,
#nav.wvcsd textarea,
#header.wvcsd textarea {
  margin: 0;
  font-size: 100%;
  vertical-align: middle;
}
#nav.wvcsd button,
#header.wvcsd button,
#nav.wvcsd input,
#header.wvcsd input {
  *overflow: visible;
  line-height: normal;
}
#nav.wvcsd button::-moz-focus-inner,
#header.wvcsd button::-moz-focus-inner,
#nav.wvcsd input::-moz-focus-inner,
#header.wvcsd input::-moz-focus-inner {
  padding: 0;
  border: 0;
}
#nav.wvcsd button,
#header.wvcsd button,
#nav.wvcsd html input[type="button"],
#header.wvcsd html input[type="button"],
#nav.wvcsd input[type="reset"],
#header.wvcsd input[type="reset"],
#nav.wvcsd input[type="submit"],
#header.wvcsd input[type="submit"] {
  -webkit-appearance: button;
  cursor: pointer;
}
#nav.wvcsd label,
#header.wvcsd label,
#nav.wvcsd select,
#header.wvcsd select,
#nav.wvcsd button,
#header.wvcsd button,
#nav.wvcsd input[type="button"],
#header.wvcsd input[type="button"],
#nav.wvcsd input[type="reset"],
#header.wvcsd input[type="reset"],
#nav.wvcsd input[type="submit"],
#header.wvcsd input[type="submit"],
#nav.wvcsd input[type="radio"],
#header.wvcsd input[type="radio"],
#nav.wvcsd input[type="checkbox"],
#header.wvcsd input[type="checkbox"] {
  cursor: pointer;
}
#nav.wvcsd input[type="search"],
#header.wvcsd input[type="search"] {
  -webkit-box-sizing: content-box;
  -moz-box-sizing: content-box;
  box-sizing: content-box;
  -webkit-appearance: textfield;
}
#nav.wvcsd input[type="search"]::-webkit-search-decoration,
#header.wvcsd input[type="search"]::-webkit-search-decoration,
#nav.wvcsd input[type="search"]::-webkit-search-cancel-button,
#header.wvcsd input[type="search"]::-webkit-search-cancel-button {
  -webkit-appearance: none;
}
#nav.wvcsd textarea,
#header.wvcsd textarea {
  overflow: auto;
  vertical-align: top;
}
@media print {
  #nav.wvcsd *,
  #header.wvcsd * {
    text-shadow: none !important;
    color: #000 !important;
    background: transparent !important;
    box-shadow: none !important;
  }
  #nav.wvcsd a,
  #header.wvcsd a,
  #nav.wvcsd a:visited,
  #header.wvcsd a:visited {
    text-decoration: underline;
  }
  #nav.wvcsd a[href]:after,
  #header.wvcsd a[href]:after {
    content: " (" attr(href) ")";
  }
  #nav.wvcsd abbr[title]:after,
  #header.wvcsd abbr[title]:after {
    content: " (" attr(title) ")";
  }
  #nav.wvcsd .ir a:after,
  #header.wvcsd .ir a:after,
  #nav.wvcsd a[href^="javascript:"]:after,
  #header.wvcsd a[href^="javascript:"]:after,
  #nav.wvcsd a[href^="#"]:after,
  #header.wvcsd a[href^="#"]:after {
    content: "";
  }
  #nav.wvcsd pre,
  #header.wvcsd pre,
  #nav.wvcsd blockquote,
  #header.wvcsd blockquote {
    border: 1px solid #999;
    page-break-inside: avoid;
  }
  #nav.wvcsd thead,
  #header.wvcsd thead {
    display: table-header-group;
  }
  #nav.wvcsd tr,
  #header.wvcsd tr,
  #nav.wvcsd img,
  #header.wvcsd img {
    page-break-inside: avoid;
  }
  #nav.wvcsd img,
  #header.wvcsd img {
    max-width: 100% !important;
  }
  @page {
    margin: 0.5cm;
  }
  #nav.wvcsd p,
  #header.wvcsd p,
  #nav.wvcsd h2,
  #header.wvcsd h2,
  #nav.wvcsd h3,
  #header.wvcsd h3 {
    orphans: 3;
    widows: 3;
  }
  #nav.wvcsd h2,
  #header.wvcsd h2,
  #nav.wvcsd h3,
  #header.wvcsd h3 {
    page-break-after: avoid;
  }
}
#nav.wvcsd body,
#header.wvcsd body {
  margin: 0;
  font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
  font-size: 14px;
  line-height: 20px;
  color: #333333;
  /*background-color: @bodyBackground;*/
}
#nav.wvcsd a,
#header.wvcsd a {
  color: #0088cc;
  text-decoration: none;
}
#nav.wvcsd a:hover,
#header.wvcsd a:hover,
#nav.wvcsd a:focus,
#header.wvcsd a:focus {
  color: #005580;
  text-decoration: underline;
}
#nav.wvcsd .img-rounded,
#header.wvcsd .img-rounded {
  -webkit-border-radius: 6px;
  -moz-border-radius: 6px;
  border-radius: 6px;
}
#nav.wvcsd .img-polaroid,
#header.wvcsd .img-polaroid {
  padding: 4px;
  background-color: #fff;
  border: 1px solid #ccc;
  border: 1px solid rgba(0, 0, 0, 0.2);
  -webkit-box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1);
  -moz-box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1);
  box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1);
}
#nav.wvcsd .img-circle,
#header.wvcsd .img-circle {
  -webkit-border-radius: 500px;
  -moz-border-radius: 500px;
  border-radius: 500px;
}
#nav.wvcsd [class^="icon-"],
#header.wvcsd [class^="icon-"],
#nav.wvcsd [class*=" icon-"],
#header.wvcsd [class*=" icon-"] {
  display: inline-block;
  width: 14px;
  height: 14px;
  *margin-right: .3em;
  line-height: 14px;
  vertical-align: text-top;
  background-image: url("../img/glyphicons-halflings.png");
  background-position: 14px 14px;
  background-repeat: no-repeat;
  margin-top: 1px;
}
#nav.wvcsd .icon-white,
#header.wvcsd .icon-white,
#nav.wvcsd .nav-pills > .active > a > [class^="icon-"],
#header.wvcsd .nav-pills > .active > a > [class^="icon-"],
#nav.wvcsd .nav-pills > .active > a > [class*=" icon-"],
#header.wvcsd .nav-pills > .active > a > [class*=" icon-"],
#nav.wvcsd .nav-list > .active > a > [class^="icon-"],
#header.wvcsd .nav-list > .active > a > [class^="icon-"],
#nav.wvcsd .nav-list > .active > a > [class*=" icon-"],
#header.wvcsd .nav-list > .active > a > [class*=" icon-"],
#nav.wvcsd .navbar-inverse .nav > .active > a > [class^="icon-"],
#header.wvcsd .navbar-inverse .nav > .active > a > [class^="icon-"],
#nav.wvcsd .navbar-inverse .nav > .active > a > [class*=" icon-"],
#header.wvcsd .navbar-inverse .nav > .active > a > [class*=" icon-"],
#nav.wvcsd .dropdown-menu > li > a:hover > [class^="icon-"],
#header.wvcsd .dropdown-menu > li > a:hover > [class^="icon-"],
#nav.wvcsd .dropdown-menu > li > a:focus > [class^="icon-"],
#header.wvcsd .dropdown-menu > li > a:focus > [class^="icon-"],
#nav.wvcsd .dropdown-menu > li > a:hover > [class*=" icon-"],
#header.wvcsd .dropdown-menu > li > a:hover > [class*=" icon-"],
#nav.wvcsd .dropdown-menu > li > a:focus > [class*=" icon-"],
#header.wvcsd .dropdown-menu > li > a:focus > [class*=" icon-"],
#nav.wvcsd .dropdown-menu > .active > a > [class^="icon-"],
#header.wvcsd .dropdown-menu > .active > a > [class^="icon-"],
#nav.wvcsd .dropdown-menu > .active > a > [class*=" icon-"],
#header.wvcsd .dropdown-menu > .active > a > [class*=" icon-"],
#nav.wvcsd .dropdown-submenu:hover > a > [class^="icon-"],
#header.wvcsd .dropdown-submenu:hover > a > [class^="icon-"],
#nav.wvcsd .dropdown-submenu:focus > a > [class^="icon-"],
#header.wvcsd .dropdown-submenu:focus > a > [class^="icon-"],
#nav.wvcsd .dropdown-submenu:hover > a > [class*=" icon-"],
#header.wvcsd .dropdown-submenu:hover > a > [class*=" icon-"],
#nav.wvcsd .dropdown-submenu:focus > a > [class*=" icon-"],
#header.wvcsd .dropdown-submenu:focus > a > [class*=" icon-"] {
  background-image: url("../img/glyphicons-halflings-white.png");
}
#nav.wvcsd .icon-glass,
#header.wvcsd .icon-glass {
  background-position: 0      0;
}
#nav.wvcsd .icon-music,
#header.wvcsd .icon-music {
  background-position: -24px 0;
}
#nav.wvcsd .icon-search,
#header.wvcsd .icon-search {
  background-position: -48px 0;
}
#nav.wvcsd .icon-envelope,
#header.wvcsd .icon-envelope {
  background-position: -72px 0;
}
#nav.wvcsd .icon-heart,
#header.wvcsd .icon-heart {
  background-position: -96px 0;
}
#nav.wvcsd .icon-star,
#header.wvcsd .icon-star {
  background-position: -120px 0;
}
#nav.wvcsd .icon-star-empty,
#header.wvcsd .icon-star-empty {
  background-position: -144px 0;
}
#nav.wvcsd .icon-user,
#header.wvcsd .icon-user {
  background-position: -168px 0;
}
#nav.wvcsd .icon-film,
#header.wvcsd .icon-film {
  background-position: -192px 0;
}
#nav.wvcsd .icon-th-large,
#header.wvcsd .icon-th-large {
  background-position: -216px 0;
}
#nav.wvcsd .icon-th,
#header.wvcsd .icon-th {
  background-position: -240px 0;
}
#nav.wvcsd .icon-th-list,
#header.wvcsd .icon-th-list {
  background-position: -264px 0;
}
#nav.wvcsd .icon-ok,
#header.wvcsd .icon-ok {
  background-position: -288px 0;
}
#nav.wvcsd .icon-remove,
#header.wvcsd .icon-remove {
  background-position: -312px 0;
}
#nav.wvcsd .icon-zoom-in,
#header.wvcsd .icon-zoom-in {
  background-position: -336px 0;
}
#nav.wvcsd .icon-zoom-out,
#header.wvcsd .icon-zoom-out {
  background-position: -360px 0;
}
#nav.wvcsd .icon-off,
#header.wvcsd .icon-off {
  background-position: -384px 0;
}
#nav.wvcsd .icon-signal,
#header.wvcsd .icon-signal {
  background-position: -408px 0;
}
#nav.wvcsd .icon-cog,
#header.wvcsd .icon-cog {
  background-position: -432px 0;
}
#nav.wvcsd .icon-trash,
#header.wvcsd .icon-trash {
  background-position: -456px 0;
}
#nav.wvcsd .icon-home,
#header.wvcsd .icon-home {
  background-position: 0 -24px;
}
#nav.wvcsd .icon-file,
#header.wvcsd .icon-file {
  background-position: -24px -24px;
}
#nav.wvcsd .icon-time,
#header.wvcsd .icon-time {
  background-position: -48px -24px;
}
#nav.wvcsd .icon-road,
#header.wvcsd .icon-road {
  background-position: -72px -24px;
}
#nav.wvcsd .icon-download-alt,
#header.wvcsd .icon-download-alt {
  background-position: -96px -24px;
}
#nav.wvcsd .icon-download,
#header.wvcsd .icon-download {
  background-position: -120px -24px;
}
#nav.wvcsd .icon-upload,
#header.wvcsd .icon-upload {
  background-position: -144px -24px;
}
#nav.wvcsd .icon-inbox,
#header.wvcsd .icon-inbox {
  background-position: -168px -24px;
}
#nav.wvcsd .icon-play-circle,
#header.wvcsd .icon-play-circle {
  background-position: -192px -24px;
}
#nav.wvcsd .icon-repeat,
#header.wvcsd .icon-repeat {
  background-position: -216px -24px;
}
#nav.wvcsd .icon-refresh,
#header.wvcsd .icon-refresh {
  background-position: -240px -24px;
}
#nav.wvcsd .icon-list-alt,
#header.wvcsd .icon-list-alt {
  background-position: -264px -24px;
}
#nav.wvcsd .icon-lock,
#header.wvcsd .icon-lock {
  background-position: -287px -24px;
}
#nav.wvcsd .icon-flag,
#header.wvcsd .icon-flag {
  background-position: -312px -24px;
}
#nav.wvcsd .icon-headphones,
#header.wvcsd .icon-headphones {
  background-position: -336px -24px;
}
#nav.wvcsd .icon-volume-off,
#header.wvcsd .icon-volume-off {
  background-position: -360px -24px;
}
#nav.wvcsd .icon-volume-down,
#header.wvcsd .icon-volume-down {
  background-position: -384px -24px;
}
#nav.wvcsd .icon-volume-up,
#header.wvcsd .icon-volume-up {
  background-position: -408px -24px;
}
#nav.wvcsd .icon-qrcode,
#header.wvcsd .icon-qrcode {
  background-position: -432px -24px;
}
#nav.wvcsd .icon-barcode,
#header.wvcsd .icon-barcode {
  background-position: -456px -24px;
}
#nav.wvcsd .icon-tag,
#header.wvcsd .icon-tag {
  background-position: 0 -48px;
}
#nav.wvcsd .icon-tags,
#header.wvcsd .icon-tags {
  background-position: -25px -48px;
}
#nav.wvcsd .icon-book,
#header.wvcsd .icon-book {
  background-position: -48px -48px;
}
#nav.wvcsd .icon-bookmark,
#header.wvcsd .icon-bookmark {
  background-position: -72px -48px;
}
#nav.wvcsd .icon-print,
#header.wvcsd .icon-print {
  background-position: -96px -48px;
}
#nav.wvcsd .icon-camera,
#header.wvcsd .icon-camera {
  background-position: -120px -48px;
}
#nav.wvcsd .icon-font,
#header.wvcsd .icon-font {
  background-position: -144px -48px;
}
#nav.wvcsd .icon-bold,
#header.wvcsd .icon-bold {
  background-position: -167px -48px;
}
#nav.wvcsd .icon-italic,
#header.wvcsd .icon-italic {
  background-position: -192px -48px;
}
#nav.wvcsd .icon-text-height,
#header.wvcsd .icon-text-height {
  background-position: -216px -48px;
}
#nav.wvcsd .icon-text-width,
#header.wvcsd .icon-text-width {
  background-position: -240px -48px;
}
#nav.wvcsd .icon-align-left,
#header.wvcsd .icon-align-left {
  background-position: -264px -48px;
}
#nav.wvcsd .icon-align-center,
#header.wvcsd .icon-align-center {
  background-position: -288px -48px;
}
#nav.wvcsd .icon-align-right,
#header.wvcsd .icon-align-right {
  background-position: -312px -48px;
}
#nav.wvcsd .icon-align-justify,
#header.wvcsd .icon-align-justify {
  background-position: -336px -48px;
}
#nav.wvcsd .icon-list,
#header.wvcsd .icon-list {
  background-position: -360px -48px;
}
#nav.wvcsd .icon-indent-left,
#header.wvcsd .icon-indent-left {
  background-position: -384px -48px;
}
#nav.wvcsd .icon-indent-right,
#header.wvcsd .icon-indent-right {
  background-position: -408px -48px;
}
#nav.wvcsd .icon-facetime-video,
#header.wvcsd .icon-facetime-video {
  background-position: -432px -48px;
}
#nav.wvcsd .icon-picture,
#header.wvcsd .icon-picture {
  background-position: -456px -48px;
}
#nav.wvcsd .icon-pencil,
#header.wvcsd .icon-pencil {
  background-position: 0 -72px;
}
#nav.wvcsd .icon-map-marker,
#header.wvcsd .icon-map-marker {
  background-position: -24px -72px;
}
#nav.wvcsd .icon-adjust,
#header.wvcsd .icon-adjust {
  background-position: -48px -72px;
}
#nav.wvcsd .icon-tint,
#header.wvcsd .icon-tint {
  background-position: -72px -72px;
}
#nav.wvcsd .icon-edit,
#header.wvcsd .icon-edit {
  background-position: -96px -72px;
}
#nav.wvcsd .icon-share,
#header.wvcsd .icon-share {
  background-position: -120px -72px;
}
#nav.wvcsd .icon-check,
#header.wvcsd .icon-check {
  background-position: -144px -72px;
}
#nav.wvcsd .icon-move,
#header.wvcsd .icon-move {
  background-position: -168px -72px;
}
#nav.wvcsd .icon-step-backward,
#header.wvcsd .icon-step-backward {
  background-position: -192px -72px;
}
#nav.wvcsd .icon-fast-backward,
#header.wvcsd .icon-fast-backward {
  background-position: -216px -72px;
}
#nav.wvcsd .icon-backward,
#header.wvcsd .icon-backward {
  background-position: -240px -72px;
}
#nav.wvcsd .icon-play,
#header.wvcsd .icon-play {
  background-position: -264px -72px;
}
#nav.wvcsd .icon-pause,
#header.wvcsd .icon-pause {
  background-position: -288px -72px;
}
#nav.wvcsd .icon-stop,
#header.wvcsd .icon-stop {
  background-position: -312px -72px;
}
#nav.wvcsd .icon-forward,
#header.wvcsd .icon-forward {
  background-position: -336px -72px;
}
#nav.wvcsd .icon-fast-forward,
#header.wvcsd .icon-fast-forward {
  background-position: -360px -72px;
}
#nav.wvcsd .icon-step-forward,
#header.wvcsd .icon-step-forward {
  background-position: -384px -72px;
}
#nav.wvcsd .icon-eject,
#header.wvcsd .icon-eject {
  background-position: -408px -72px;
}
#nav.wvcsd .icon-chevron-left,
#header.wvcsd .icon-chevron-left {
  background-position: -432px -72px;
}
#nav.wvcsd .icon-chevron-right,
#header.wvcsd .icon-chevron-right {
  background-position: -456px -72px;
}
#nav.wvcsd .icon-plus-sign,
#header.wvcsd .icon-plus-sign {
  background-position: 0 -96px;
}
#nav.wvcsd .icon-minus-sign,
#header.wvcsd .icon-minus-sign {
  background-position: -24px -96px;
}
#nav.wvcsd .icon-remove-sign,
#header.wvcsd .icon-remove-sign {
  background-position: -48px -96px;
}
#nav.wvcsd .icon-ok-sign,
#header.wvcsd .icon-ok-sign {
  background-position: -72px -96px;
}
#nav.wvcsd .icon-question-sign,
#header.wvcsd .icon-question-sign {
  background-position: -96px -96px;
}
#nav.wvcsd .icon-info-sign,
#header.wvcsd .icon-info-sign {
  background-position: -120px -96px;
}
#nav.wvcsd .icon-screenshot,
#header.wvcsd .icon-screenshot {
  background-position: -144px -96px;
}
#nav.wvcsd .icon-remove-circle,
#header.wvcsd .icon-remove-circle {
  background-position: -168px -96px;
}
#nav.wvcsd .icon-ok-circle,
#header.wvcsd .icon-ok-circle {
  background-position: -192px -96px;
}
#nav.wvcsd .icon-ban-circle,
#header.wvcsd .icon-ban-circle {
  background-position: -216px -96px;
}
#nav.wvcsd .icon-arrow-left,
#header.wvcsd .icon-arrow-left {
  background-position: -240px -96px;
}
#nav.wvcsd .icon-arrow-right,
#header.wvcsd .icon-arrow-right {
  background-position: -264px -96px;
}
#nav.wvcsd .icon-arrow-up,
#header.wvcsd .icon-arrow-up {
  background-position: -289px -96px;
}
#nav.wvcsd .icon-arrow-down,
#header.wvcsd .icon-arrow-down {
  background-position: -312px -96px;
}
#nav.wvcsd .icon-share-alt,
#header.wvcsd .icon-share-alt {
  background-position: -336px -96px;
}
#nav.wvcsd .icon-resize-full,
#header.wvcsd .icon-resize-full {
  background-position: -360px -96px;
}
#nav.wvcsd .icon-resize-small,
#header.wvcsd .icon-resize-small {
  background-position: -384px -96px;
}
#nav.wvcsd .icon-plus,
#header.wvcsd .icon-plus {
  background-position: -408px -96px;
}
#nav.wvcsd .icon-minus,
#header.wvcsd .icon-minus {
  background-position: -433px -96px;
}
#nav.wvcsd .icon-asterisk,
#header.wvcsd .icon-asterisk {
  background-position: -456px -96px;
}
#nav.wvcsd .icon-exclamation-sign,
#header.wvcsd .icon-exclamation-sign {
  background-position: 0 -120px;
}
#nav.wvcsd .icon-gift,
#header.wvcsd .icon-gift {
  background-position: -24px -120px;
}
#nav.wvcsd .icon-leaf,
#header.wvcsd .icon-leaf {
  background-position: -48px -120px;
}
#nav.wvcsd .icon-fire,
#header.wvcsd .icon-fire {
  background-position: -72px -120px;
}
#nav.wvcsd .icon-eye-open,
#header.wvcsd .icon-eye-open {
  background-position: -96px -120px;
}
#nav.wvcsd .icon-eye-close,
#header.wvcsd .icon-eye-close {
  background-position: -120px -120px;
}
#nav.wvcsd .icon-warning-sign,
#header.wvcsd .icon-warning-sign {
  background-position: -144px -120px;
}
#nav.wvcsd .icon-plane,
#header.wvcsd .icon-plane {
  background-position: -168px -120px;
}
#nav.wvcsd .icon-calendar,
#header.wvcsd .icon-calendar {
  background-position: -192px -120px;
}
#nav.wvcsd .icon-random,
#header.wvcsd .icon-random {
  background-position: -216px -120px;
  width: 16px;
}
#nav.wvcsd .icon-comment,
#header.wvcsd .icon-comment {
  background-position: -240px -120px;
}
#nav.wvcsd .icon-magnet,
#header.wvcsd .icon-magnet {
  background-position: -264px -120px;
}
#nav.wvcsd .icon-chevron-up,
#header.wvcsd .icon-chevron-up {
  background-position: -288px -120px;
}
#nav.wvcsd .icon-chevron-down,
#header.wvcsd .icon-chevron-down {
  background-position: -313px -119px;
}
#nav.wvcsd .icon-retweet,
#header.wvcsd .icon-retweet {
  background-position: -336px -120px;
}
#nav.wvcsd .icon-shopping-cart,
#header.wvcsd .icon-shopping-cart {
  background-position: -360px -120px;
}
#nav.wvcsd .icon-folder-close,
#header.wvcsd .icon-folder-close {
  background-position: -384px -120px;
  width: 16px;
}
#nav.wvcsd .icon-folder-open,
#header.wvcsd .icon-folder-open {
  background-position: -408px -120px;
  width: 16px;
}
#nav.wvcsd .icon-resize-vertical,
#header.wvcsd .icon-resize-vertical {
  background-position: -432px -119px;
}
#nav.wvcsd .icon-resize-horizontal,
#header.wvcsd .icon-resize-horizontal {
  background-position: -456px -118px;
}
#nav.wvcsd .icon-hdd,
#header.wvcsd .icon-hdd {
  background-position: 0 -144px;
}
#nav.wvcsd .icon-bullhorn,
#header.wvcsd .icon-bullhorn {
  background-position: -24px -144px;
}
#nav.wvcsd .icon-bell,
#header.wvcsd .icon-bell {
  background-position: -48px -144px;
}
#nav.wvcsd .icon-certificate,
#header.wvcsd .icon-certificate {
  background-position: -72px -144px;
}
#nav.wvcsd .icon-thumbs-up,
#header.wvcsd .icon-thumbs-up {
  background-position: -96px -144px;
}
#nav.wvcsd .icon-thumbs-down,
#header.wvcsd .icon-thumbs-down {
  background-position: -120px -144px;
}
#nav.wvcsd .icon-hand-right,
#header.wvcsd .icon-hand-right {
  background-position: -144px -144px;
}
#nav.wvcsd .icon-hand-left,
#header.wvcsd .icon-hand-left {
  background-position: -168px -144px;
}
#nav.wvcsd .icon-hand-up,
#header.wvcsd .icon-hand-up {
  background-position: -192px -144px;
}
#nav.wvcsd .icon-hand-down,
#header.wvcsd .icon-hand-down {
  background-position: -216px -144px;
}
#nav.wvcsd .icon-circle-arrow-right,
#header.wvcsd .icon-circle-arrow-right {
  background-position: -240px -144px;
}
#nav.wvcsd .icon-circle-arrow-left,
#header.wvcsd .icon-circle-arrow-left {
  background-position: -264px -144px;
}
#nav.wvcsd .icon-circle-arrow-up,
#header.wvcsd .icon-circle-arrow-up {
  background-position: -288px -144px;
}
#nav.wvcsd .icon-circle-arrow-down,
#header.wvcsd .icon-circle-arrow-down {
  background-position: -312px -144px;
}
#nav.wvcsd .icon-globe,
#header.wvcsd .icon-globe {
  background-position: -336px -144px;
}
#nav.wvcsd .icon-wrench,
#header.wvcsd .icon-wrench {
  background-position: -360px -144px;
}
#nav.wvcsd .icon-tasks,
#header.wvcsd .icon-tasks {
  background-position: -384px -144px;
}
#nav.wvcsd .icon-filter,
#header.wvcsd .icon-filter {
  background-position: -408px -144px;
}
#nav.wvcsd .icon-briefcase,
#header.wvcsd .icon-briefcase {
  background-position: -432px -144px;
}
#nav.wvcsd .icon-fullscreen,
#header.wvcsd .icon-fullscreen {
  background-position: -456px -144px;
}
#nav.wvcsd table,
#header.wvcsd table {
  max-width: 100%;
  background-color: transparent;
  border-collapse: collapse;
  border-spacing: 0;
}
#nav.wvcsd .table,
#header.wvcsd .table {
  width: 100%;
  margin-bottom: 20px;
}
#nav.wvcsd .table th,
#header.wvcsd .table th,
#nav.wvcsd .table td,
#header.wvcsd .table td {
  padding: 8px;
  line-height: 20px;
  text-align: left;
  vertical-align: top;
  border-top: 1px solid #dddddd;
}
#nav.wvcsd .table th,
#header.wvcsd .table th {
  font-weight: bold;
}
#nav.wvcsd .table thead th,
#header.wvcsd .table thead th {
  vertical-align: bottom;
}
#nav.wvcsd .table caption + thead tr:first-child th,
#header.wvcsd .table caption + thead tr:first-child th,
#nav.wvcsd .table caption + thead tr:first-child td,
#header.wvcsd .table caption + thead tr:first-child td,
#nav.wvcsd .table colgroup + thead tr:first-child th,
#header.wvcsd .table colgroup + thead tr:first-child th,
#nav.wvcsd .table colgroup + thead tr:first-child td,
#header.wvcsd .table colgroup + thead tr:first-child td,
#nav.wvcsd .table thead:first-child tr:first-child th,
#header.wvcsd .table thead:first-child tr:first-child th,
#nav.wvcsd .table thead:first-child tr:first-child td,
#header.wvcsd .table thead:first-child tr:first-child td {
  border-top: 0;
}
#nav.wvcsd .table tbody + tbody,
#header.wvcsd .table tbody + tbody {
  border-top: 2px solid #dddddd;
}
#nav.wvcsd .table .table,
#header.wvcsd .table .table {
  background-color: #ffffff;
}
#nav.wvcsd .table-condensed th,
#header.wvcsd .table-condensed th,
#nav.wvcsd .table-condensed td,
#header.wvcsd .table-condensed td {
  padding: 4px 5px;
}
#nav.wvcsd .table-bordered,
#header.wvcsd .table-bordered {
  border: 1px solid #dddddd;
  border-collapse: separate;
  *border-collapse: collapse;
  border-left: 0;
  -webkit-border-radius: 4px;
  -moz-border-radius: 4px;
  border-radius: 4px;
}
#nav.wvcsd .table-bordered th,
#header.wvcsd .table-bordered th,
#nav.wvcsd .table-bordered td,
#header.wvcsd .table-bordered td {
  border-left: 1px solid #dddddd;
}
#nav.wvcsd .table-bordered caption + thead tr:first-child th,
#header.wvcsd .table-bordered caption + thead tr:first-child th,
#nav.wvcsd .table-bordered caption + tbody tr:first-child th,
#header.wvcsd .table-bordered caption + tbody tr:first-child th,
#nav.wvcsd .table-bordered caption + tbody tr:first-child td,
#header.wvcsd .table-bordered caption + tbody tr:first-child td,
#nav.wvcsd .table-bordered colgroup + thead tr:first-child th,
#header.wvcsd .table-bordered colgroup + thead tr:first-child th,
#nav.wvcsd .table-bordered colgroup + tbody tr:first-child th,
#header.wvcsd .table-bordered colgroup + tbody tr:first-child th,
#nav.wvcsd .table-bordered colgroup + tbody tr:first-child td,
#header.wvcsd .table-bordered colgroup + tbody tr:first-child td,
#nav.wvcsd .table-bordered thead:first-child tr:first-child th,
#header.wvcsd .table-bordered thead:first-child tr:first-child th,
#nav.wvcsd .table-bordered tbody:first-child tr:first-child th,
#header.wvcsd .table-bordered tbody:first-child tr:first-child th,
#nav.wvcsd .table-bordered tbody:first-child tr:first-child td,
#header.wvcsd .table-bordered tbody:first-child tr:first-child td {
  border-top: 0;
}
#nav.wvcsd .table-bordered thead:first-child tr:first-child > th:first-child,
#header.wvcsd .table-bordered thead:first-child tr:first-child > th:first-child,
#nav.wvcsd .table-bordered tbody:first-child tr:first-child > td:first-child,
#header.wvcsd .table-bordered tbody:first-child tr:first-child > td:first-child,
#nav.wvcsd .table-bordered tbody:first-child tr:first-child > th:first-child,
#header.wvcsd .table-bordered tbody:first-child tr:first-child > th:first-child {
  -webkit-border-top-left-radius: 4px;
  -moz-border-radius-topleft: 4px;
  border-top-left-radius: 4px;
}
#nav.wvcsd .table-bordered thead:first-child tr:first-child > th:last-child,
#header.wvcsd .table-bordered thead:first-child tr:first-child > th:last-child,
#nav.wvcsd .table-bordered tbody:first-child tr:first-child > td:last-child,
#header.wvcsd .table-bordered tbody:first-child tr:first-child > td:last-child,
#nav.wvcsd .table-bordered tbody:first-child tr:first-child > th:last-child,
#header.wvcsd .table-bordered tbody:first-child tr:first-child > th:last-child {
  -webkit-border-top-right-radius: 4px;
  -moz-border-radius-topright: 4px;
  border-top-right-radius: 4px;
}
#nav.wvcsd .table-bordered thead:last-child tr:last-child > th:first-child,
#header.wvcsd .table-bordered thead:last-child tr:last-child > th:first-child,
#nav.wvcsd .table-bordered tbody:last-child tr:last-child > td:first-child,
#header.wvcsd .table-bordered tbody:last-child tr:last-child > td:first-child,
#nav.wvcsd .table-bordered tbody:last-child tr:last-child > th:first-child,
#header.wvcsd .table-bordered tbody:last-child tr:last-child > th:first-child,
#nav.wvcsd .table-bordered tfoot:last-child tr:last-child > td:first-child,
#header.wvcsd .table-bordered tfoot:last-child tr:last-child > td:first-child,
#nav.wvcsd .table-bordered tfoot:last-child tr:last-child > th:first-child,
#header.wvcsd .table-bordered tfoot:last-child tr:last-child > th:first-child {
  -webkit-border-bottom-left-radius: 4px;
  -moz-border-radius-bottomleft: 4px;
  border-bottom-left-radius: 4px;
}
#nav.wvcsd .table-bordered thead:last-child tr:last-child > th:last-child,
#header.wvcsd .table-bordered thead:last-child tr:last-child > th:last-child,
#nav.wvcsd .table-bordered tbody:last-child tr:last-child > td:last-child,
#header.wvcsd .table-bordered tbody:last-child tr:last-child > td:last-child,
#nav.wvcsd .table-bordered tbody:last-child tr:last-child > th:last-child,
#header.wvcsd .table-bordered tbody:last-child tr:last-child > th:last-child,
#nav.wvcsd .table-bordered tfoot:last-child tr:last-child > td:last-child,
#header.wvcsd .table-bordered tfoot:last-child tr:last-child > td:last-child,
#nav.wvcsd .table-bordered tfoot:last-child tr:last-child > th:last-child,
#header.wvcsd .table-bordered tfoot:last-child tr:last-child > th:last-child {
  -webkit-border-bottom-right-radius: 4px;
  -moz-border-radius-bottomright: 4px;
  border-bottom-right-radius: 4px;
}
#nav.wvcsd .table-bordered tfoot + tbody:last-child tr:last-child td:first-child,
#header.wvcsd .table-bordered tfoot + tbody:last-child tr:last-child td:first-child {
  -webkit-border-bottom-left-radius: 0;
  -moz-border-radius-bottomleft: 0;
  border-bottom-left-radius: 0;
}
#nav.wvcsd .table-bordered tfoot + tbody:last-child tr:last-child td:last-child,
#header.wvcsd .table-bordered tfoot + tbody:last-child tr:last-child td:last-child {
  -webkit-border-bottom-right-radius: 0;
  -moz-border-radius-bottomright: 0;
  border-bottom-right-radius: 0;
}
#nav.wvcsd .table-bordered caption + thead tr:first-child th:first-child,
#header.wvcsd .table-bordered caption + thead tr:first-child th:first-child,
#nav.wvcsd .table-bordered caption + tbody tr:first-child td:first-child,
#header.wvcsd .table-bordered caption + tbody tr:first-child td:first-child,
#nav.wvcsd .table-bordered colgroup + thead tr:first-child th:first-child,
#header.wvcsd .table-bordered colgroup + thead tr:first-child th:first-child,
#nav.wvcsd .table-bordered colgroup + tbody tr:first-child td:first-child,
#header.wvcsd .table-bordered colgroup + tbody tr:first-child td:first-child {
  -webkit-border-top-left-radius: 4px;
  -moz-border-radius-topleft: 4px;
  border-top-left-radius: 4px;
}
#nav.wvcsd .table-bordered caption + thead tr:first-child th:last-child,
#header.wvcsd .table-bordered caption + thead tr:first-child th:last-child,
#nav.wvcsd .table-bordered caption + tbody tr:first-child td:last-child,
#header.wvcsd .table-bordered caption + tbody tr:first-child td:last-child,
#nav.wvcsd .table-bordered colgroup + thead tr:first-child th:last-child,
#header.wvcsd .table-bordered colgroup + thead tr:first-child th:last-child,
#nav.wvcsd .table-bordered colgroup + tbody tr:first-child td:last-child,
#header.wvcsd .table-bordered colgroup + tbody tr:first-child td:last-child {
  -webkit-border-top-right-radius: 4px;
  -moz-border-radius-topright: 4px;
  border-top-right-radius: 4px;
}
#nav.wvcsd .table-striped tbody > tr:nth-child(odd) > td,
#header.wvcsd .table-striped tbody > tr:nth-child(odd) > td,
#nav.wvcsd .table-striped tbody > tr:nth-child(odd) > th,
#header.wvcsd .table-striped tbody > tr:nth-child(odd) > th {
  background-color: #f9f9f9;
}
#nav.wvcsd .table-hover tbody tr:hover > td,
#header.wvcsd .table-hover tbody tr:hover > td,
#nav.wvcsd .table-hover tbody tr:hover > th,
#header.wvcsd .table-hover tbody tr:hover > th {
  background-color: #f5f5f5;
}
#nav.wvcsd table td[class*="span"],
#header.wvcsd table td[class*="span"],
#nav.wvcsd table th[class*="span"],
#header.wvcsd table th[class*="span"],
#nav.wvcsd .row-fluid table td[class*="span"],
#header.wvcsd .row-fluid table td[class*="span"],
#nav.wvcsd .row-fluid table th[class*="span"],
#header.wvcsd .row-fluid table th[class*="span"] {
  display: table-cell;
  float: none;
  margin-left: 0;
}
#nav.wvcsd .table td.span1,
#header.wvcsd .table td.span1,
#nav.wvcsd .table th.span1,
#header.wvcsd .table th.span1 {
  float: none;
  width: 44px;
  margin-left: 0;
}
#nav.wvcsd .table td.span2,
#header.wvcsd .table td.span2,
#nav.wvcsd .table th.span2,
#header.wvcsd .table th.span2 {
  float: none;
  width: 124px;
  margin-left: 0;
}
#nav.wvcsd .table td.span3,
#header.wvcsd .table td.span3,
#nav.wvcsd .table th.span3,
#header.wvcsd .table th.span3 {
  float: none;
  width: 204px;
  margin-left: 0;
}
#nav.wvcsd .table td.span4,
#header.wvcsd .table td.span4,
#nav.wvcsd .table th.span4,
#header.wvcsd .table th.span4 {
  float: none;
  width: 284px;
  margin-left: 0;
}
#nav.wvcsd .table td.span5,
#header.wvcsd .table td.span5,
#nav.wvcsd .table th.span5,
#header.wvcsd .table th.span5 {
  float: none;
  width: 364px;
  margin-left: 0;
}
#nav.wvcsd .table td.span6,
#header.wvcsd .table td.span6,
#nav.wvcsd .table th.span6,
#header.wvcsd .table th.span6 {
  float: none;
  width: 444px;
  margin-left: 0;
}
#nav.wvcsd .table td.span7,
#header.wvcsd .table td.span7,
#nav.wvcsd .table th.span7,
#header.wvcsd .table th.span7 {
  float: none;
  width: 524px;
  margin-left: 0;
}
#nav.wvcsd .table td.span8,
#header.wvcsd .table td.span8,
#nav.wvcsd .table th.span8,
#header.wvcsd .table th.span8 {
  float: none;
  width: 604px;
  margin-left: 0;
}
#nav.wvcsd .table td.span9,
#header.wvcsd .table td.span9,
#nav.wvcsd .table th.span9,
#header.wvcsd .table th.span9 {
  float: none;
  width: 684px;
  margin-left: 0;
}
#nav.wvcsd .table td.span10,
#header.wvcsd .table td.span10,
#nav.wvcsd .table th.span10,
#header.wvcsd .table th.span10 {
  float: none;
  width: 764px;
  margin-left: 0;
}
#nav.wvcsd .table td.span11,
#header.wvcsd .table td.span11,
#nav.wvcsd .table th.span11,
#header.wvcsd .table th.span11 {
  float: none;
  width: 844px;
  margin-left: 0;
}
#nav.wvcsd .table td.span12,
#header.wvcsd .table td.span12,
#nav.wvcsd .table th.span12,
#header.wvcsd .table th.span12 {
  float: none;
  width: 924px;
  margin-left: 0;
}
#nav.wvcsd .table tbody tr.success > td,
#header.wvcsd .table tbody tr.success > td {
  background-color: #dff0d8;
}
#nav.wvcsd .table tbody tr.error > td,
#header.wvcsd .table tbody tr.error > td {
  background-color: #f2dede;
}
#nav.wvcsd .table tbody tr.warning > td,
#header.wvcsd .table tbody tr.warning > td {
  background-color: #fcf8e3;
}
#nav.wvcsd .table tbody tr.info > td,
#header.wvcsd .table tbody tr.info > td {
  background-color: #d9edf7;
}
#nav.wvcsd .table-hover tbody tr.success:hover > td,
#header.wvcsd .table-hover tbody tr.success:hover > td {
  background-color: #d0e9c6;
}
#nav.wvcsd .table-hover tbody tr.error:hover > td,
#header.wvcsd .table-hover tbody tr.error:hover > td {
  background-color: #ebcccc;
}
#nav.wvcsd .table-hover tbody tr.warning:hover > td,
#header.wvcsd .table-hover tbody tr.warning:hover > td {
  background-color: #faf2cc;
}
#nav.wvcsd .table-hover tbody tr.info:hover > td,
#header.wvcsd .table-hover tbody tr.info:hover > td {
  background-color: #c4e3f3;
}
#nav.wvcsd .thumbnails,
#header.wvcsd .thumbnails {
  margin-left: -20px;
  list-style: none;
  *zoom: 1;
}
#nav.wvcsd .thumbnails:before,
#header.wvcsd .thumbnails:before,
#nav.wvcsd .thumbnails:after,
#header.wvcsd .thumbnails:after {
  display: table;
  content: "";
  line-height: 0;
}
#nav.wvcsd .thumbnails:after,
#header.wvcsd .thumbnails:after {
  clear: both;
}
#nav.wvcsd .row-fluid .thumbnails,
#header.wvcsd .row-fluid .thumbnails {
  margin-left: 0;
}
#nav.wvcsd .thumbnails > li,
#header.wvcsd .thumbnails > li {
  float: left;
  margin-bottom: 20px;
  margin-left: 20px;
}
#nav.wvcsd .thumbnail,
#header.wvcsd .thumbnail {
  display: block;
  padding: 4px;
  line-height: 20px;
  border: 1px solid #ddd;
  -webkit-border-radius: 4px;
  -moz-border-radius: 4px;
  border-radius: 4px;
  -webkit-box-shadow: 0 1px 3px rgba(0, 0, 0, 0.055);
  -moz-box-shadow: 0 1px 3px rgba(0, 0, 0, 0.055);
  box-shadow: 0 1px 3px rgba(0, 0, 0, 0.055);
  -webkit-transition: all 0.2s ease-in-out;
  -moz-transition: all 0.2s ease-in-out;
  -o-transition: all 0.2s ease-in-out;
  transition: all 0.2s ease-in-out;
}
#nav.wvcsd a.thumbnail:hover,
#header.wvcsd a.thumbnail:hover,
#nav.wvcsd a.thumbnail:focus,
#header.wvcsd a.thumbnail:focus {
  border-color: #0088cc;
  -webkit-box-shadow: 0 1px 4px rgba(0, 105, 214, 0.25);
  -moz-box-shadow: 0 1px 4px rgba(0, 105, 214, 0.25);
  box-shadow: 0 1px 4px rgba(0, 105, 214, 0.25);
}
#nav.wvcsd .thumbnail > img,
#header.wvcsd .thumbnail > img {
  display: block;
  max-width: 100%;
  margin-left: auto;
  margin-right: auto;
}
#nav.wvcsd .thumbnail .caption,
#header.wvcsd .thumbnail .caption {
  padding: 9px;
  color: #555555;
}
#nav.wvcsd .tooltip,
#header.wvcsd .tooltip {
  position: absolute;
  z-index: 1030;
  display: block;
  visibility: visible;
  font-size: 11px;
  line-height: 1.4;
  opacity: 0;
  filter: alpha(opacity=0);
}
#nav.wvcsd .tooltip.in,
#header.wvcsd .tooltip.in {
  opacity: 0.8;
  filter: alpha(opacity=80);
}
#nav.wvcsd .tooltip.top,
#header.wvcsd .tooltip.top {
  margin-top: -3px;
  padding: 5px 0;
}
#nav.wvcsd .tooltip.right,
#header.wvcsd .tooltip.right {
  margin-left: 3px;
  padding: 0 5px;
}
#nav.wvcsd .tooltip.bottom,
#header.wvcsd .tooltip.bottom {
  margin-top: 3px;
  padding: 5px 0;
}
#nav.wvcsd .tooltip.left,
#header.wvcsd .tooltip.left {
  margin-left: -3px;
  padding: 0 5px;
}
#nav.wvcsd .tooltip-inner,
#header.wvcsd .tooltip-inner {
  max-width: 200px;
  padding: 8px;
  color: #ffffff;
  text-align: center;
  text-decoration: none;
  background-color: #000000;
  -webkit-border-radius: 4px;
  -moz-border-radius: 4px;
  border-radius: 4px;
}
#nav.wvcsd .tooltip-arrow,
#header.wvcsd .tooltip-arrow {
  position: absolute;
  width: 0;
  height: 0;
  border-color: transparent;
  border-style: solid;
}
#nav.wvcsd .tooltip.top .tooltip-arrow,
#header.wvcsd .tooltip.top .tooltip-arrow {
  bottom: 0;
  left: 50%;
  margin-left: -5px;
  border-width: 5px 5px 0;
  border-top-color: #000000;
}
#nav.wvcsd .tooltip.right .tooltip-arrow,
#header.wvcsd .tooltip.right .tooltip-arrow {
  top: 50%;
  left: 0;
  margin-top: -5px;
  border-width: 5px 5px 5px 0;
  border-right-color: #000000;
}
#nav.wvcsd .tooltip.left .tooltip-arrow,
#header.wvcsd .tooltip.left .tooltip-arrow {
  top: 50%;
  right: 0;
  margin-top: -5px;
  border-width: 5px 0 5px 5px;
  border-left-color: #000000;
}
#nav.wvcsd .tooltip.bottom .tooltip-arrow,
#header.wvcsd .tooltip.bottom .tooltip-arrow {
  top: 0;
  left: 50%;
  margin-left: -5px;
  border-width: 0 5px 5px;
  border-bottom-color: #000000;
}
#nav.wvcsd p,
#header.wvcsd p {
  margin: 0 0 10px;
}
#nav.wvcsd .lead,
#header.wvcsd .lead {
  margin-bottom: 20px;
  font-size: 21px;
  font-weight: 200;
  line-height: 30px;
}
#nav.wvcsd small,
#header.wvcsd small {
  font-size: 85%;
}
#nav.wvcsd strong,
#header.wvcsd strong {
  font-weight: bold;
}
#nav.wvcsd em,
#header.wvcsd em {
  font-style: italic;
}
#nav.wvcsd cite,
#header.wvcsd cite {
  font-style: normal;
}
#nav.wvcsd .muted,
#header.wvcsd .muted {
  color: #999999;
}
#nav.wvcsd a.muted:hover,
#header.wvcsd a.muted:hover,
#nav.wvcsd a.muted:focus,
#header.wvcsd a.muted:focus {
  color: #808080;
}
#nav.wvcsd .text-warning,
#header.wvcsd .text-warning {
  color: #c09853;
}
#nav.wvcsd a.text-warning:hover,
#header.wvcsd a.text-warning:hover,
#nav.wvcsd a.text-warning:focus,
#header.wvcsd a.text-warning:focus {
  color: #a47e3c;
}
#nav.wvcsd .text-error,
#header.wvcsd .text-error {
  color: #b94a48;
}
#nav.wvcsd a.text-error:hover,
#header.wvcsd a.text-error:hover,
#nav.wvcsd a.text-error:focus,
#header.wvcsd a.text-error:focus {
  color: #953b39;
}
#nav.wvcsd .text-info,
#header.wvcsd .text-info {
  color: #3a87ad;
}
#nav.wvcsd a.text-info:hover,
#header.wvcsd a.text-info:hover,
#nav.wvcsd a.text-info:focus,
#header.wvcsd a.text-info:focus {
  color: #2d6987;
}
#nav.wvcsd .text-success,
#header.wvcsd .text-success {
  color: #468847;
}
#nav.wvcsd a.text-success:hover,
#header.wvcsd a.text-success:hover,
#nav.wvcsd a.text-success:focus,
#header.wvcsd a.text-success:focus {
  color: #356635;
}
#nav.wvcsd .text-left,
#header.wvcsd .text-left {
  text-align: left;
}
#nav.wvcsd .text-right,
#header.wvcsd .text-right {
  text-align: right;
}
#nav.wvcsd .text-center,
#header.wvcsd .text-center {
  text-align: center;
}
#nav.wvcsd h1,
#header.wvcsd h1,
#nav.wvcsd h2,
#header.wvcsd h2,
#nav.wvcsd h3,
#header.wvcsd h3,
#nav.wvcsd h4,
#header.wvcsd h4,
#nav.wvcsd h5,
#header.wvcsd h5,
#nav.wvcsd h6,
#header.wvcsd h6 {
  margin: 10px 0;
  font-family: inherit;
  font-weight: bold;
  line-height: 20px;
  color: inherit;
  text-rendering: optimizelegibility;
}
#nav.wvcsd h1 small,
#header.wvcsd h1 small,
#nav.wvcsd h2 small,
#header.wvcsd h2 small,
#nav.wvcsd h3 small,
#header.wvcsd h3 small,
#nav.wvcsd h4 small,
#header.wvcsd h4 small,
#nav.wvcsd h5 small,
#header.wvcsd h5 small,
#nav.wvcsd h6 small,
#header.wvcsd h6 small {
  font-weight: normal;
  line-height: 1;
  color: #999999;
}
#nav.wvcsd h1,
#header.wvcsd h1,
#nav.wvcsd h2,
#header.wvcsd h2,
#nav.wvcsd h3,
#header.wvcsd h3 {
  line-height: 40px;
}
#nav.wvcsd h1,
#header.wvcsd h1 {
  font-size: 38.5px;
}
#nav.wvcsd h2,
#header.wvcsd h2 {
  font-size: 31.5px;
}
#nav.wvcsd h3,
#header.wvcsd h3 {
  font-size: 24.5px;
}
#nav.wvcsd h4,
#header.wvcsd h4 {
  font-size: 17.5px;
}
#nav.wvcsd h5,
#header.wvcsd h5 {
  font-size: 14px;
}
#nav.wvcsd h6,
#header.wvcsd h6 {
  font-size: 11.9px;
}
#nav.wvcsd h1 small,
#header.wvcsd h1 small {
  font-size: 24.5px;
}
#nav.wvcsd h2 small,
#header.wvcsd h2 small {
  font-size: 17.5px;
}
#nav.wvcsd h3 small,
#header.wvcsd h3 small {
  font-size: 14px;
}
#nav.wvcsd h4 small,
#header.wvcsd h4 small {
  font-size: 14px;
}
#nav.wvcsd .page-header,
#header.wvcsd .page-header {
  padding-bottom: 9px;
  margin: 20px 0 30px;
  border-bottom: 1px solid #eeeeee;
}
#nav.wvcsd ul,
#header.wvcsd ul,
#nav.wvcsd ol,
#header.wvcsd ol {
  padding: 0;
  margin: 0 0 10px 25px;
}
#nav.wvcsd ul ul,
#header.wvcsd ul ul,
#nav.wvcsd ul ol,
#header.wvcsd ul ol,
#nav.wvcsd ol ol,
#header.wvcsd ol ol,
#nav.wvcsd ol ul,
#header.wvcsd ol ul {
  margin-bottom: 0;
}
#nav.wvcsd li,
#header.wvcsd li {
  line-height: 20px;
}
#nav.wvcsd ul.unstyled,
#header.wvcsd ul.unstyled,
#nav.wvcsd ol.unstyled,
#header.wvcsd ol.unstyled {
  margin-left: 0;
  list-style: none;
}
#nav.wvcsd ul.inline,
#header.wvcsd ul.inline,
#nav.wvcsd ol.inline,
#header.wvcsd ol.inline {
  margin-left: 0;
  list-style: none;
}
#nav.wvcsd ul.inline > li,
#header.wvcsd ul.inline > li,
#nav.wvcsd ol.inline > li,
#header.wvcsd ol.inline > li {
  display: inline-block;
  *display: inline;
  /* IE7 inline-block hack */
  *zoom: 1;
  padding-left: 5px;
  padding-right: 5px;
}
#nav.wvcsd dl,
#header.wvcsd dl {
  margin-bottom: 20px;
}
#nav.wvcsd dt,
#header.wvcsd dt,
#nav.wvcsd dd,
#header.wvcsd dd {
  line-height: 20px;
}
#nav.wvcsd dt,
#header.wvcsd dt {
  font-weight: bold;
}
#nav.wvcsd dd,
#header.wvcsd dd {
  margin-left: 10px;
}
#nav.wvcsd .dl-horizontal,
#header.wvcsd .dl-horizontal {
  *zoom: 1;
}
#nav.wvcsd .dl-horizontal:before,
#header.wvcsd .dl-horizontal:before,
#nav.wvcsd .dl-horizontal:after,
#header.wvcsd .dl-horizontal:after {
  display: table;
  content: "";
  line-height: 0;
}
#nav.wvcsd .dl-horizontal:after,
#header.wvcsd .dl-horizontal:after {
  clear: both;
}
#nav.wvcsd .dl-horizontal dt,
#header.wvcsd .dl-horizontal dt {
  float: left;
  width: 160px;
  clear: left;
  text-align: right;
  overflow: hidden;
  text-overflow: ellipsis;
  white-space: nowrap;
}
#nav.wvcsd .dl-horizontal dd,
#header.wvcsd .dl-horizontal dd {
  margin-left: 180px;
}
#nav.wvcsd hr,
#header.wvcsd hr {
  margin: 20px 0;
  border: 0;
  border-top: 1px solid #eeeeee;
  border-bottom: 1px solid #ffffff;
}
#nav.wvcsd abbr[title],
#header.wvcsd abbr[title],
#nav.wvcsd abbr[data-original-title],
#header.wvcsd abbr[data-original-title] {
  cursor: help;
  border-bottom: 1px dotted #999999;
}
#nav.wvcsd abbr.initialism,
#header.wvcsd abbr.initialism {
  font-size: 90%;
  text-transform: uppercase;
}
#nav.wvcsd blockquote,
#header.wvcsd blockquote {
  padding: 0 0 0 15px;
  margin: 0 0 20px;
  border-left: 5px solid #eeeeee;
}
#nav.wvcsd blockquote p,
#header.wvcsd blockquote p {
  margin-bottom: 0;
  font-size: 17.5px;
  font-weight: 300;
  line-height: 1.25;
}
#nav.wvcsd blockquote small,
#header.wvcsd blockquote small {
  display: block;
  line-height: 20px;
  color: #999999;
}
#nav.wvcsd blockquote small:before,
#header.wvcsd blockquote small:before {
  content: '\2014 \00A0';
}
#nav.wvcsd blockquote.pull-right,
#header.wvcsd blockquote.pull-right {
  float: right;
  padding-right: 15px;
  padding-left: 0;
  border-right: 5px solid #eeeeee;
  border-left: 0;
}
#nav.wvcsd blockquote.pull-right p,
#header.wvcsd blockquote.pull-right p,
#nav.wvcsd blockquote.pull-right small,
#header.wvcsd blockquote.pull-right small {
  text-align: right;
}
#nav.wvcsd blockquote.pull-right small:before,
#header.wvcsd blockquote.pull-right small:before {
  content: '';
}
#nav.wvcsd blockquote.pull-right small:after,
#header.wvcsd blockquote.pull-right small:after {
  content: '\00A0 \2014';
}
#nav.wvcsd q:before,
#header.wvcsd q:before,
#nav.wvcsd q:after,
#header.wvcsd q:after,
#nav.wvcsd blockquote:before,
#header.wvcsd blockquote:before,
#nav.wvcsd blockquote:after,
#header.wvcsd blockquote:after {
  content: "";
}
#nav.wvcsd address,
#header.wvcsd address {
  display: block;
  margin-bottom: 20px;
  font-style: normal;
  line-height: 20px;
}
#nav.wvcsd .pull-right,
#header.wvcsd .pull-right {
  float: right;
}
#nav.wvcsd .pull-left,
#header.wvcsd .pull-left {
  float: left;
}
#nav.wvcsd .hide,
#header.wvcsd .hide {
  display: none;
}
#nav.wvcsd .show,
#header.wvcsd .show {
  display: block;
}
#nav.wvcsd .invisible,
#header.wvcsd .invisible {
  visibility: hidden;
}
#nav.wvcsd .affix,
#header.wvcsd .affix {
  position: fixed;
}
#nav.wvcsd .well,
#header.wvcsd .well {
  min-height: 20px;
  padding: 19px;
  margin-bottom: 20px;
  background-color: #f5f5f5;
  border: 1px solid #e3e3e3;
  -webkit-border-radius: 4px;
  -moz-border-radius: 4px;
  border-radius: 4px;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.05);
  -moz-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.05);
  box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.05);
}
#nav.wvcsd .well blockquote,
#header.wvcsd .well blockquote {
  border-color: #ddd;
  border-color: rgba(0, 0, 0, 0.15);
}
#nav.wvcsd .well-large,
#header.wvcsd .well-large {
  padding: 24px;
  -webkit-border-radius: 6px;
  -moz-border-radius: 6px;
  border-radius: 6px;
}
#nav.wvcsd .well-small,
#header.wvcsd .well-small {
  padding: 9px;
  -webkit-border-radius: 3px;
  -moz-border-radius: 3px;
  border-radius: 3px;
}
#nav.wvcsd .navbar,
#header.wvcsd .navbar {
  margin-bottom: 0;
  font-size: 14px;
}
#nav.wvcsd .global-nav-text,
#header.wvcsd .global-nav-text {
  color: #fff;
  text-shadow: 2px 0 2px #ff6600;
  text-transform: uppercase;
  padding: 15px 0;
}
#nav.wvcsd .global-nav-text:hover,
#header.wvcsd .global-nav-text:hover {
  color: #ff6600;
  text-shadow: none;
  background-color: #fff3e2;
  background-image: -moz-linear-gradient(top, #ffebcf, #ffffff);
  background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#ffebcf), to(#ffffff));
  background-image: -webkit-linear-gradient(top, #ffebcf, #ffffff);
  background-image: -o-linear-gradient(top, #ffebcf, #ffffff);
  background-image: linear-gradient(to bottom, #ffebcf, #ffffff);
  background-repeat: repeat-x;
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffffebcf', endColorstr='#ffffffff', GradientType=0);
}
#nav.wvcsd .icon-down-arrow,
#header.wvcsd .icon-down-arrow {
  background: url(../img/icon_down_v2.png) 0 0 no-repeat;
  display: inline-block;
  width: 11px;
  height: 7px;
  position: relative;
  top: 4px;
  margin-left: 5px;
}
#nav.wvcsd .navbar .navbar-inner,
#header.wvcsd .navbar .navbar-inner {
  padding: 0;
  width: 940px;
  margin: 0 auto;
  background-image: none;
  background-color: transparent;
  filter: -;
  border: none;
  box-shadow: none;
}
#nav.wvcsd .navbar .nav,
#header.wvcsd .navbar .nav {
  margin: 0;
  width: 100%;
  padding: 0;
}
#nav.wvcsd .navbar .nav > li,
#header.wvcsd .navbar .nav > li {
  padding: 0;
}
#nav.wvcsd .navbar .nav > li > a,
#header.wvcsd .navbar .nav > li > a {
  font-weight: bold;
  text-align: center;
  border-right: 1px solid #fed190;
  color: #fff;
  text-shadow: 2px 0 2px #ff6600;
  text-transform: uppercase;
  padding: 15px 0;
}
#nav.wvcsd .navbar .nav > li > a:hover,
#header.wvcsd .navbar .nav > li > a:hover {
  color: #ff6600;
  text-shadow: none;
  background-color: #fff3e2;
  background-image: -moz-linear-gradient(top, #ffebcf, #ffffff);
  background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#ffebcf), to(#ffffff));
  background-image: -webkit-linear-gradient(top, #ffebcf, #ffffff);
  background-image: -o-linear-gradient(top, #ffebcf, #ffffff);
  background-image: linear-gradient(to bottom, #ffebcf, #ffffff);
  background-repeat: repeat-x;
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffffebcf', endColorstr='#ffffffff', GradientType=0);
}
#nav.wvcsd .navbar .nav > li > a:hover .icon-down-arrow,
#header.wvcsd .navbar .nav > li > a:hover .icon-down-arrow,
#nav.wvcsd .navbar .nav > li > a.active-trail .icon-down-arrow,
#header.wvcsd .navbar .nav > li > a.active-trail .icon-down-arrow {
  background-position: left bottom;
}
#nav.wvcsd .navbar .nav > li > a:focus,
#header.wvcsd .navbar .nav > li > a:focus {
  color: #ffffff;
}
#nav.wvcsd .navbar .nav > li > a:focus:hover,
#header.wvcsd .navbar .nav > li > a:focus:hover {
  color: #ff6600;
  text-shadow: none;
}
#nav.wvcsd .navbar .nav > li:first-child > a,
#header.wvcsd .navbar .nav > li:first-child > a {
  border-left: 1px solid #fed190;
}
#nav.wvcsd .navbar .nav > .active > a,
#header.wvcsd .navbar .nav > .active > a,
#nav.wvcsd .navbar .nav > .active-trail > a,
#header.wvcsd .navbar .nav > .active-trail > a {
  box-shadow: none;
  color: #ff6600;
  text-shadow: none;
  background-color: #fff3e2;
  background-image: -moz-linear-gradient(top, #ffebcf, #ffffff);
  background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#ffebcf), to(#ffffff));
  background-image: -webkit-linear-gradient(top, #ffebcf, #ffffff);
  background-image: -o-linear-gradient(top, #ffebcf, #ffffff);
  background-image: linear-gradient(to bottom, #ffebcf, #ffffff);
  background-repeat: repeat-x;
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffffebcf', endColorstr='#ffffffff', GradientType=0);
  filter: -;
}
#nav.wvcsd ul.nav > li.dropdown,
#header.wvcsd ul.nav > li.dropdown {
  background: none;
  font-family: 'Gill Sans W01 Book', Arial, sans-serif;
}
#nav.wvcsd .navbar .nav li.dropdown.open > .dropdown-toggle,
#header.wvcsd .navbar .nav li.dropdown.open > .dropdown-toggle,
#nav.wvcsd .navbar .nav li.dropdown.active > .dropdown-toggle,
#header.wvcsd .navbar .nav li.dropdown.active > .dropdown-toggle,
#nav.wvcsd .navbar .nav li.dropdown.open.active > .dropdown-toggle,
#header.wvcsd .navbar .nav li.dropdown.open.active > .dropdown-toggle {
  z-index: 1001;
  position: relative;
  color: #ff6600;
  text-shadow: none;
  background-color: #fff3e2;
  background-image: -moz-linear-gradient(top, #ffebcf, #ffffff);
  background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#ffebcf), to(#ffffff));
  background-image: -webkit-linear-gradient(top, #ffebcf, #ffffff);
  background-image: -o-linear-gradient(top, #ffebcf, #ffffff);
  background-image: linear-gradient(to bottom, #ffebcf, #ffffff);
  background-repeat: repeat-x;
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffffebcf', endColorstr='#ffffffff', GradientType=0);
}
#nav.wvcsd .navbar .nav li.dropdown.open > .dropdown-toggle .icon-down-arrow,
#header.wvcsd .navbar .nav li.dropdown.open > .dropdown-toggle .icon-down-arrow,
#nav.wvcsd .navbar .nav li.dropdown.active > .dropdown-toggle .icon-down-arrow,
#header.wvcsd .navbar .nav li.dropdown.active > .dropdown-toggle .icon-down-arrow,
#nav.wvcsd .navbar .nav li.dropdown.open.active > .dropdown-toggle .icon-down-arrow,
#header.wvcsd .navbar .nav li.dropdown.open.active > .dropdown-toggle .icon-down-arrow {
  background-position: left bottom;
}
.ie8 #nav.wvcsd .navbar .nav li.dropdown.active > .dropdown-toggle,
.ie8 #header.wvcsd .navbar .nav li.dropdown.active > .dropdown-toggle {
  filter: -;
}
#nav.wvcsd .navbar .nav > .active > a,
#header.wvcsd .navbar .nav > .active > a,
#nav.wvcsd .navbar .nav > .active > a:hover,
#header.wvcsd .navbar .nav > .active > a:hover,
#nav.wvcsd .navbar .nav > .active > a:focus,
#header.wvcsd .navbar .nav > .active > a:focus {
  box-shadow: none;
}
#nav.wvcsd .navbar .nav > .active > a:hover,
#header.wvcsd .navbar .nav > .active > a:hover {
  border-right: 1px solid rgba(255, 255, 255, 0.75) !important;
}
#nav.wvcsd .navbar .nav > li:first-child.active > a:hover,
#header.wvcsd .navbar .nav > li:first-child.active > a:hover {
  border-left: 1px solid rgba(255, 255, 255, 0.75) !important;
}
#nav.wvcsd .navbar .nav .dropdown-menu,
#header.wvcsd .navbar .nav .dropdown-menu {
  padding: 20px;
  margin: 0;
  -webkit-border-radius: 0;
  -moz-border-radius: 0;
  border-radius: 0;
  border: none;
  border-top: none;
  -webkit-box-shadow: 5px 0 9px rgba(0, 0, 0, 0.35);
  -moz-box-shadow: 5px 0 9px rgba(0, 0, 0, 0.35);
  box-shadow: 5px 0 9px rgba(0, 0, 0, 0.35);
  /* IE 8 support for drop shadow */
  -ms-filter: "progid:DXImageTransform.Microsoft.Shadow(Strength=4, Direction=135, Color='#000000')";
}
#nav.wvcsd .navbar .nav .dropdown-menu > li,
#header.wvcsd .navbar .nav .dropdown-menu > li {
  padding: 0 0 10px 0;
  font-size: 15px;
  list-style-image: none;
  display: block;
}
#nav.wvcsd .navbar .nav .dropdown-menu > li > a,
#header.wvcsd .navbar .nav .dropdown-menu > li > a {
  padding: 0;
  color: #2d78ab;
  display: inline;
}
#nav.wvcsd .navbar .nav .dropdown-menu > li > a:hover,
#header.wvcsd .navbar .nav .dropdown-menu > li > a:hover {
  text-decoration: underline;
}
#nav.wvcsd .navbar .nav .dropdown-menu > .dropdown-title,
#header.wvcsd .navbar .nav .dropdown-menu > .dropdown-title {
  font-size: 17px;
  font-family: 'Gill Sans W01 Bold', Arial, sans-serif;
  color: #2d78ab;
}
#nav.wvcsd .navbar .nav .dropdown-menu .dropdown-image,
#header.wvcsd .navbar .nav .dropdown-menu .dropdown-image {
  position: absolute;
  right: 0;
  bottom: 0;
  padding-bottom: 0;
}
#nav.wvcsd .navbar .nav .dropdown-menu .dropdown-image a,
#header.wvcsd .navbar .nav .dropdown-menu .dropdown-image a {
  overflow: hidden;
  text-indent: -999px;
  display: block;
}
#nav.wvcsd .navbar .nav .dropdown-menu .dropdown-image a:hover,
#header.wvcsd .navbar .nav .dropdown-menu .dropdown-image a:hover {
  background: #f60 !important;
  display: block !important;
  opacity: 0;
  filter: alpha(opacity=0);
}
#nav.wvcsd .navbar ul li.expanded,
#header.wvcsd .navbar ul li.expanded {
  list-style-image: none;
  list-style-type: none;
}
#nav.wvcsd .get-involved-lists ul.unstyled li,
#header.wvcsd .get-involved-lists ul.unstyled li {
  padding: 0;
  font-size: 14px;
}
#nav.wvcsd .dropdown-menu > li > a:hover,
#header.wvcsd .dropdown-menu > li > a:hover,
#nav.wvcsd .dropdown-menu > li > a:focus,
#header.wvcsd .dropdown-menu > li > a:focus,
#nav.wvcsd .dropdown-submenu:hover > a,
#header.wvcsd .dropdown-submenu:hover > a,
#nav.wvcsd .dropdown-submenu:focus > a,
#header.wvcsd .dropdown-submenu:focus > a {
  background: none;
  color: inherit;
}
#nav.wvcsd .dropdown-menu > .active > a,
#header.wvcsd .dropdown-menu > .active > a,
#nav.wvcsd .dropdown-menu > .active > a:hover,
#header.wvcsd .dropdown-menu > .active > a:hover,
#nav.wvcsd .dropdown-menu > .active > a:focus,
#header.wvcsd .dropdown-menu > .active > a:focus {
  background: none;
}
#nav.wvcsd .navbar .nav > li > .dropdown-menu:before,
#header.wvcsd .navbar .nav > li > .dropdown-menu:before,
#nav.wvcsd .navbar .nav > li > .dropdown-menu:after,
#header.wvcsd .navbar .nav > li > .dropdown-menu:after {
  display: none;
}
#nav.wvcsd .navbar .nav,
#header.wvcsd .navbar .nav {
  /* Our Impact */
  /* Sponsor A Child */
  /* Ways to Give */
  /* Get Involved */
  /* About Us */
  /* My World Vision */
}
#nav.wvcsd .navbar .nav .menu-mlid-2283,
#header.wvcsd .navbar .nav .menu-mlid-2283 {
  width: 144px;
}
#nav.wvcsd .navbar .nav .menu-mlid-2283 .dropdown-menu,
#header.wvcsd .navbar .nav .menu-mlid-2283 .dropdown-menu {
  width: 284px;
  min-height: 290px;
  background: #ffffff url(../img/drop_bkgd_our_impact_v1.jpg) right bottom no-repeat;
}
#nav.wvcsd .navbar .nav .menu-mlid-2283 .menu-mlid-2525,
#header.wvcsd .navbar .nav .menu-mlid-2283 .menu-mlid-2525 {
  position: absolute;
  left: 190px;
  top: 50px;
}
#nav.wvcsd .navbar .nav .menu-mlid-2283 .menu-mlid-2539,
#header.wvcsd .navbar .nav .menu-mlid-2283 .menu-mlid-2539 {
  position: absolute;
  left: 190px;
  top: 80px;
}
#nav.wvcsd .navbar .nav .menu-mlid-2283 .dropdown-image a,
#header.wvcsd .navbar .nav .menu-mlid-2283 .dropdown-image a {
  width: 184px;
  height: 125px;
}
#nav.wvcsd .navbar .nav .menu-mlid-2640,
#header.wvcsd .navbar .nav .menu-mlid-2640 {
  width: 180px;
}
#nav.wvcsd .navbar .nav .menu-mlid-2640 .dropdown-menu,
#header.wvcsd .navbar .nav .menu-mlid-2640 .dropdown-menu {
  width: 290px;
  min-height: 170px;
  background: #ffffff url(../img/drop_bkgd_sponsor_child_v1.jpg) right bottom no-repeat;
}
#nav.wvcsd .navbar .nav .menu-mlid-2640 .dropdown-image a,
#header.wvcsd .navbar .nav .menu-mlid-2640 .dropdown-image a {
  width: 330px;
  height: 125px;
}
#nav.wvcsd .navbar .nav .menu-mlid-2369,
#header.wvcsd .navbar .nav .menu-mlid-2369 {
  width: 150px;
}
#nav.wvcsd .navbar .nav .menu-mlid-2369 .dropdown-menu,
#header.wvcsd .navbar .nav .menu-mlid-2369 .dropdown-menu {
  width: 392px;
  min-height: 170px;
  background: #ffffff url(../img/drop_bkgd_ways_to_give_v1.jpg) right bottom no-repeat;
}
#nav.wvcsd .navbar .nav .menu-mlid-2369 .dropdown-menu > li,
#header.wvcsd .navbar .nav .menu-mlid-2369 .dropdown-menu > li {
  float: left;
  width: 170px;
}
#nav.wvcsd .navbar .nav .menu-mlid-2369 .dropdown-menu > .dropdown-title,
#header.wvcsd .navbar .nav .menu-mlid-2369 .dropdown-menu > .dropdown-title {
  width: 100%;
}
#nav.wvcsd .navbar .nav .menu-mlid-2369 .dropdown-image,
#header.wvcsd .navbar .nav .menu-mlid-2369 .dropdown-image {
  right: -38px;
}
#nav.wvcsd .navbar .nav .menu-mlid-2369 .dropdown-image a,
#header.wvcsd .navbar .nav .menu-mlid-2369 .dropdown-image a {
  width: 130px;
  height: 140px;
}
#nav.wvcsd .navbar .nav .menu-mlid-2365,
#header.wvcsd .navbar .nav .menu-mlid-2365 {
  width: 156px;
}
#nav.wvcsd .navbar .nav .menu-mlid-2365 .dropdown-menu,
#header.wvcsd .navbar .nav .menu-mlid-2365 .dropdown-menu {
  width: 242px;
  padding-bottom: 150px;
  background: #ffffff url(../img/drop_bkgd_get_involved_v2.jpg) right bottom no-repeat;
}
#nav.wvcsd .navbar .nav .menu-mlid-2365 .dropdown-image a,
#header.wvcsd .navbar .nav .menu-mlid-2365 .dropdown-image a {
  width: 280px;
  height: 150px;
}
#nav.wvcsd .navbar .nav .menu-mlid-2281,
#header.wvcsd .navbar .nav .menu-mlid-2281 {
  width: 126px;
}
#nav.wvcsd .navbar .nav .menu-mlid-2281 .dropdown-menu,
#header.wvcsd .navbar .nav .menu-mlid-2281 .dropdown-menu {
  width: 393px;
  margin-left: -307px;
  min-height: 190px;
  background: #ffffff url(../img/drop_bkgd_about_us_v2.jpg) right bottom no-repeat;
}
#nav.wvcsd .navbar .nav .menu-mlid-2281 .dropdown-menu > li,
#header.wvcsd .navbar .nav .menu-mlid-2281 .dropdown-menu > li {
  float: left;
  width: 170px;
}
#nav.wvcsd .navbar .nav .menu-mlid-2281 .dropdown-menu > .dropdown-title,
#header.wvcsd .navbar .nav .menu-mlid-2281 .dropdown-menu > .dropdown-title {
  width: 100%;
}
#nav.wvcsd .navbar .nav .menu-mlid-2281 .dropdown-image,
#header.wvcsd .navbar .nav .menu-mlid-2281 .dropdown-image {
  right: -78px;
}
#nav.wvcsd .navbar .nav .menu-mlid-2281 .dropdown-image a,
#header.wvcsd .navbar .nav .menu-mlid-2281 .dropdown-image a {
  width: 85px;
  height: 172px;
}
#nav.wvcsd .navbar .nav .menu-mlid-2367,
#header.wvcsd .navbar .nav .menu-mlid-2367 {
  width: 184px;
}
#nav.wvcsd .navbar .nav .menu-mlid-2367 .dropdown-menu,
#header.wvcsd .navbar .nav .menu-mlid-2367 .dropdown-menu {
  width: 271px;
  padding-bottom: 164px;
  margin-left: -127px;
  background: #ffffff url(../img/drop_bkgd_my_wv_v1.jpg) right bottom no-repeat;
}
#nav.wvcsd .navbar .nav .menu-mlid-2367 .dropdown-image a,
#header.wvcsd .navbar .nav .menu-mlid-2367 .dropdown-image a {
  width: 180px;
  height: 170px;
}
#nav.wvcsd .navbar .nav li.dropdown.active > .dropdown-toggle,
#header.wvcsd .navbar .nav li.dropdown.active > .dropdown-toggle,
#nav.wvcsd .navbar .nav > .active-trail > a.active-trail,
#header.wvcsd .navbar .nav > .active-trail > a.active-trail {
  background-color: #e55c00;
  color: #ffffff;
  text-shadow: 2px 0 2px #ff6600;
  background-image: none;
}
#nav.wvcsd .navbar .nav li.dropdown.active > .dropdown-toggle .icon-down-arrow,
#header.wvcsd .navbar .nav li.dropdown.active > .dropdown-toggle .icon-down-arrow,
#nav.wvcsd .navbar .nav > .active-trail > a.active-trail .icon-down-arrow,
#header.wvcsd .navbar .nav > .active-trail > a.active-trail .icon-down-arrow {
  background-position: 0 0;
}
/*
// Global Nav Alerts
// ====================
*/
#block-disaster-alerts.eoy {
  background: #006599;
}
#block-disaster-alerts.eoy .disaster-alert .alert-call-to-action h2 {
  color: white;
}
#block-disaster-alerts.eoy .disaster-alert .alert-call-to-action .disaster-alert-learn-more-link a {
  color: #fa802d;
}
#block-disaster-alerts.eoy .disaster-alert .disaster-alert-donate-widget .donations-submit-wrapper-left {
  background-image: url('../img/alert-button-rounded-orange.png');
}
#block-disaster-alerts.eoy .disaster-alert .disaster-alert-donate-widget .donations-submit-wrapper-left .donations-submit-wrapper-right {
  background-image: url('../img/alert-button-rounded-orange.png');
}
#block-disaster-alerts.eoy .disaster-alert .disaster-alert-donate-widget .donations-submit-wrapper-left .donations-submit-wrapper-right .donations-submit-wrapper {
  background-color: #f36f18;
}
#block-disaster-alerts.eoy .disaster-alert .disaster-alert-donate-widget .donations-submit-wrapper-left .donations-submit-wrapper-right .donations-submit-wrapper:hover {
  background-color: #f69352;
}
#block-disaster-alerts {
  background: #000;
  color: #fff;
  position: relative;
}
#block-disaster-alerts .external-link {
  position: relative;
  top: 2px;
  background-position: -21px -36px;
}
#block-disaster-alerts .container {
  position: relative;
}
#block-disaster-alerts .disaster-alert-wrapper {
  border-top: 1px solid #efefef;
}
#block-disaster-alerts .disaster-alert-wrapper:first-child {
  border-top: none;
}
#block-disaster-alerts .disaster-alert {
  margin-right: auto;
  margin-left: auto;
  *zoom: 1;
  width: 940px;
  padding: 12px 0;
}
#block-disaster-alerts .disaster-alert:before,
#block-disaster-alerts .disaster-alert:after {
  display: table;
  content: "";
  line-height: 0;
}
#block-disaster-alerts .disaster-alert:after {
  clear: both;
}
#block-disaster-alerts .disaster-alert .alert-call-to-action {
  display: inline;
  float: left;
  width: 515px;
  padding-left: 100px;
  background: url(../img/alert-general.png) 8px 0 no-repeat;
  min-height: 78px;
}
#block-disaster-alerts .disaster-alert .alert-call-to-action.none {
  width: 615px;
  padding-left: 0px;
  background: none;
}
#block-disaster-alerts .disaster-alert .alert-call-to-action.eoy {
  background-image: url(../img/alert-clock.png);
}
#block-disaster-alerts .disaster-alert .alert-call-to-action.tornado {
  background-image: url(../img/alert-tornado.png);
}
#block-disaster-alerts .disaster-alert .alert-call-to-action.flood {
  background-image: url(../img/alert-flood.png);
}
#block-disaster-alerts .disaster-alert .alert-call-to-action.hurricane-tsunami {
  background-image: url(../img/alert-hurricane-tsunami.png);
}
#block-disaster-alerts .disaster-alert .alert-call-to-action.earthquake {
  background-image: url(../img/alert-earthquake.png);
}
#block-disaster-alerts .disaster-alert .alert-call-to-action.famine-drought {
  background-image: url(../img/alert-famine-drought.png);
}
#block-disaster-alerts .disaster-alert .alert-call-to-action h2 {
  color: #ff0000;
  font-size: 18px;
  text-transform: uppercase;
  font-family: 'Gill Sans W01 Bold', Arial, sans-serif;
  margin: 0;
  line-height: 1.2em;
  text-align: left;
}
#block-disaster-alerts .disaster-alert .alert-call-to-action p {
  margin: 0;
  font-size: 15px;
}
#block-disaster-alerts .disaster-alert .alert-call-to-action .disaster-alert-learn-more-link a {
  color: #ff0000;
  font-family: 'Gill Sans W01 Bold', Arial, sans-serif;
}
#block-disaster-alerts .disaster-alert .disaster-alert-donate-widget {
  width: 333px;
  position: absolute;
  top: 50%;
  right: 0;
  margin-top: -20px;
}
#block-disaster-alerts .disaster-alert .disaster-alert-donate-widget form {
  margin-bottom: 0;
}
#block-disaster-alerts .disaster-alert .disaster-alert-donate-widget #clientsidevalidation-wvcsd-alert-donate-form-errors {
  margin: 0;
}
#block-disaster-alerts .disaster-alert .disaster-alert-donate-widget .form-item {
  margin: 0;
}
#block-disaster-alerts .disaster-alert .disaster-alert-donate-widget .form-item-xxwvotheramt {
  width: 58px;
  padding: 4px 8px 4px 16px;
  display: inline;
  float: left;
  margin-bottom: 0;
  margin-left: 70px;
  -webkit-border-radius: 0;
  -moz-border-radius: 0;
  border-radius: 0;
  border: 2px solid #8a8076;
  background: #ffffff url(../img/alert-dollar.png) 4px 9px no-repeat;
}
#block-disaster-alerts .disaster-alert .disaster-alert-donate-widget .form-item-xxwvotheramt .form-text {
  font-family: 'Gill Sans W01 Book', Arial, sans-serif;
  width: 58px;
  font-size: 16px;
  line-height: 26px;
  height: 26px;
  border: none;
  background: none;
  margin: 0;
  padding: 0;
  -webkit-box-shadow: 0 0 0;
  -moz-box-shadow: 0 0 0;
  box-shadow: 0 0 0;
  outline: none;
}
#block-disaster-alerts .disaster-alert .disaster-alert-donate-widget .form-item-xxwvotheramt .form-text:focus {
  border: none;
  -webkit-box-shadow: 0 0 0;
  -moz-box-shadow: 0 0 0;
  box-shadow: 0 0 0;
}
#block-disaster-alerts .disaster-alert .disaster-alert-donate-widget .donations-submit-wrapper-left {
  display: inline;
  float: right;
  margin-left: 15px;
  padding-left: 16px;
  background: url(../img/alert-button-rounded.png) 0 0 no-repeat;
  cursor: pointer;
}
#block-disaster-alerts .disaster-alert .disaster-alert-donate-widget .donations-submit-wrapper-left .donations-submit-wrapper-right {
  padding-right: 16px;
  background: url(../img/alert-button-rounded.png) right 0 no-repeat;
}
#block-disaster-alerts .disaster-alert .disaster-alert-donate-widget .donations-submit-wrapper-left .donations-submit-wrapper-right .donations-submit-wrapper {
  background: #ff0000;
}
#block-disaster-alerts .disaster-alert .disaster-alert-donate-widget .donations-submit-wrapper-left .donations-submit-wrapper-right .donations-submit-wrapper .form-submit {
  background: none !important;
  color: #fff;
  border: none;
  -webkit-border-radius: 0 !important;
  -moz-border-radius: 0 !important;
  border-radius: 0 !important;
  font-family: 'Gill Sans W01 Bold', Arial, sans-serif;
  font-size: 15px;
  text-shadow: 2px 0 2px rgba(0, 0, 0, 0.75);
  padding: 9px 4px;
  height: 37px;
  margin: 0;
  text-transform: uppercase;
}
#block-disaster-alerts .disaster-alert .disaster-alert-donate-widget .donations-submit-wrapper-left:hover {
  background-position: 0 -37px;
}
#block-disaster-alerts .disaster-alert .disaster-alert-donate-widget .donations-submit-wrapper-left:hover .donations-submit-wrapper-right {
  background-position: right -37px;
}
#block-disaster-alerts .disaster-alert .disaster-alert-donate-widget .donations-submit-wrapper-left:hover .donations-submit-wrapper {
  background: #ff4040;
}
#block-disaster-alerts #alert-modal p {
  font-size: 17px;
  line-height: 20px;
}
.ie7 #block-disaster-alerts .disaster-alert .alert-call-to-action p {
  font-size: 14px;
}
#header.wvcsd {
  background: #fff !important;
  filter: none;
}
.hasPlaceholder {
  color: #777;
}
.ie7 #nav.wvcsd .navbar .nav li.dropdown.active > .dropdown-toggle,
.ie9 #nav.wvcsd .navbar .nav li.dropdown.active > .dropdown-toggle {
  filter: -;
}
.ie7 #nav.wvcsd .navbar .nav li.dropdown.active.open > .dropdown-toggle,
.ie8 #nav.wvcsd .navbar .nav li.dropdown.active.open > .dropdown-toggle,
.ie9 #nav.wvcsd .navbar .nav li.dropdown.active.open > .dropdown-toggle {
  background-color: #fff3e2;
  background-image: -moz-linear-gradient(top, #ffebcf, #ffffff);
  background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#ffebcf), to(#ffffff));
  background-image: -webkit-linear-gradient(top, #ffebcf, #ffffff);
  background-image: -o-linear-gradient(top, #ffebcf, #ffffff);
  background-image: linear-gradient(to bottom, #ffebcf, #ffffff);
  background-repeat: repeat-x;
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffffebcf', endColorstr='#ffffffff', GradientType=0);
}
.ie7 #nav.wvcsd .navbar .nav .dropdown-menu > li {
  list-style: none;
}
.ie7 #nav.wvcsd .navbar .nav > li > a {
  height: 20px;
}
.ie7 #nav.wvcsd .dropdown-menu {
  top: 50px;
}
.ie7 #nav.wvcsd .navbar .nav .dropdown-menu > .dropdown-title a,
.ie8 #nav.wvcsd .navbar .nav .dropdown-menu > .dropdown-title a {
  font-weight: bold;
}
.ie7 #header.wvcsd .interact .links {
  clear: right;
  width: 350px;
}
.ie7 #header.wvcsd .interact .links ul li {
  float: left;
  display: block;
}
.ie7 #header.wvcsd .interact .links .text {
  float: left;
  display: block;
}
.ie7 #header.wvcsd .interact .links .text li:first-child {
  padding-left: 0;
}
.ie7 #header.wvcsd .interact .links .text .icon-shopping-cart {
  float: left;
  display: block;
}
.ie7 #header.wvcsd .interact .links .social {
  float: right;
  display: block;
}
#nav.wvcsd .navbar .nav .menu-mlid-2367 .dropdown-menu {
  background: #ffffff url(../img/drop_bkgd_my_wv_v3.jpg) right bottom no-repeat;
}
.modal-backdrop {
  position: fixed;
  top: 0;
  right: 0;
  bottom: 0;
  left: 0;
  z-index: 1040;
  background-color: #000000;
}
.modal-backdrop.fade {
  opacity: 0;
}
.fade.in {
  opacity: 1;
  filter: alpha(opacity=100);
}
/*
.modal-backdrop,
.modal-backdrop.fade.in {
  .opacity(80);
}
*/
.fade {
  opacity: 0;
  -webkit-transition: opacity .15s linear;
  -moz-transition: opacity .15s linear;
  -o-transition: opacity .15s linear;
  transition: opacity .15s linear;
}
.modal {
  position: fixed;
  top: 10%;
  left: 50%;
  z-index: 1050;
  width: 560px;
  margin-left: -280px;
  background-color: #ffffff;
  border: 1px solid #999;
  border: 1px solid rgba(0, 0, 0, 0.3);
  *border: 1px solid #999;
  /* IE6-7 */
  -webkit-border-radius: 6px;
  -moz-border-radius: 6px;
  border-radius: 6px;
  -webkit-box-shadow: 0 3px 7px rgba(0, 0, 0, 0.3);
  -moz-box-shadow: 0 3px 7px rgba(0, 0, 0, 0.3);
  box-shadow: 0 3px 7px rgba(0, 0, 0, 0.3);
  -webkit-background-clip: padding-box;
  -moz-background-clip: padding-box;
  background-clip: padding-box;
  outline: none;
}
.modal.fade {
  -webkit-transition: opacity .3s linear, top .3s ease-out;
  -moz-transition: opacity .3s linear, top .3s ease-out;
  -o-transition: opacity .3s linear, top .3s ease-out;
  transition: opacity .3s linear, top .3s ease-out;
  top: -25%;
}
.modal.fade.in {
  top: 10%;
}
.modal-header {
  padding: 9px 15px;
  border-bottom: 1px solid #eee;
}
.modal-header .close {
  margin-top: 2px;
}
.modal-header h3 {
  margin: 0;
  line-height: 30px;
}
.modal-body {
  position: relative;
  overflow-y: auto;
  max-height: 400px;
  padding: 15px;
}
.modal-form {
  margin-bottom: 0;
}
.modal-footer {
  padding: 14px 15px 15px;
  margin-bottom: 0;
  text-align: right;
  background-color: #f5f5f5;
  border-top: 1px solid #ddd;
  -webkit-border-radius: 0 0 6px 6px;
  -moz-border-radius: 0 0 6px 6px;
  border-radius: 0 0 6px 6px;
  -webkit-box-shadow: inset 0 1px 0 #ffffff;
  -moz-box-shadow: inset 0 1px 0 #ffffff;
  box-shadow: inset 0 1px 0 #ffffff;
  *zoom: 1;
}
.modal-footer:before,
.modal-footer:after {
  display: table;
  content: "";
  line-height: 0;
}
.modal-footer:after {
  clear: both;
}
.modal-footer .btn + .btn {
  margin-left: 5px;
  margin-bottom: 0;
}
.modal-footer .btn-group .btn + .btn {
  margin-left: -1px;
}
.modal-footer .btn-block + .btn-block {
  margin-left: 0;
}
.hide {
  display: none;
}
.modal .btn {
  text-decoration: none;
  -webkit-border-radius: 20px;
  -moz-border-radius: 20px;
  border-radius: 20px;
  font-size: 16px;
  line-height: 22px;
  padding: 9px 15px;
  text-transform: uppercase;
  font-family: 'Gill Sans W01 Medium', Arial, sans-serif;
  font-weight: normal;
  display: inline-block;
  margin-bottom: 0;
  color: #333;
  text-align: center;
  text-shadow: 0 1px 1px rgba(255, 255, 255, 0.75);
  vertical-align: middle;
  cursor: pointer;
  background-color: #f5f5f5;
  background-image: linear-gradient(to bottom, #ffffff, #e6e6e6);
  background-repeat: repeat-x;
  border: 1px solid #ccc;
  border-color: rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.25);
  border-bottom-color: #b3b3b3;
  filter: progid:DXImageTransform.Microsoft.gradient(enabled=false);
  -webkit-box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px rgba(0, 0, 0, 0.05);
  -moz-box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px rgba(0, 0, 0, 0.05);
  box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px rgba(0, 0, 0, 0.05);
}
.close {
  float: right;
  font-size: 20px;
  font-weight: bold;
  line-height: 20px;
  color: #000;
  text-shadow: 0 1px 0 #fff;
  opacity: .2;
  filter: alpha(opacity=20);
  cursor: pointer;
}


/**
 * @file
 * Generic theme-independent base styles.
 */

/**
 * Autocomplete.
 *
 * @see autocomplete.js
 */
/* Suggestion list */
#autocomplete {
  border: 1px solid;
  overflow: hidden;
  position: absolute;
  z-index: 100;
}
#autocomplete ul {
  list-style: none;
  list-style-image: none;
  margin: 0;
  padding: 0;
}
#autocomplete li {
  background: #fff;
  color: #000;
  cursor: default;
  white-space: pre;
  zoom: 1; /* IE7 */
}
/* Animated throbber */
html.js input.form-autocomplete {
  background-image: url(../../misc/throbber.gif);
  background-position: 100% 2px; /* LTR */
  background-repeat: no-repeat;
}
html.js input.throbbing {
  background-position: 100% -18px; /* LTR */
}

/**
 * Collapsible fieldsets.
 *
 * @see collapse.js
 */
html.js fieldset.collapsed {
  border-bottom-width: 0;
  border-left-width: 0;
  border-right-width: 0;
  height: 1em;
}
html.js fieldset.collapsed .fieldset-wrapper {
  display: none;
}
fieldset.collapsible {
  position: relative;
}
fieldset.collapsible .fieldset-legend {
  display: block;
}

/**
 * Resizable textareas.
 *
 * @see textarea.js
 */
.form-textarea-wrapper textarea {
  display: block;
  margin: 0;
  width: 100%;
  -moz-box-sizing: border-box;
  -webkit-box-sizing: border-box;
  box-sizing: border-box;
}
.resizable-textarea .grippie {
  background: #eee url(../../misc/grippie.png) no-repeat center 2px;
  border: 1px solid #ddd;
  border-top-width: 0;
  cursor: s-resize;
  height: 9px;
  overflow: hidden;
}

/**
 * TableDrag behavior.
 *
 * @see tabledrag.js
 */
body.drag {
  cursor: move;
}
.draggable a.tabledrag-handle {
  cursor: move;
  float: left; /* LTR */
  height: 1.7em;
  margin-left: -1em; /* LTR */
  overflow: hidden;
  text-decoration: none;
}
a.tabledrag-handle:hover {
  text-decoration: none;
}
a.tabledrag-handle .handle {
  background: url(../../misc/draggable.png) no-repeat 6px 9px;
  height: 13px;
  margin: -0.4em 0.5em; /* LTR */
  padding: 0.42em 0.5em; /* LTR */
  width: 13px;
}
a.tabledrag-handle-hover .handle {
  background-position: 6px -11px;
}
div.indentation {
  float: left; /* LTR */
  height: 1.7em;
  margin: -0.4em 0.2em -0.4em -0.4em; /* LTR */
  padding: 0.42em 0 0.42em 0.6em; /* LTR */
  width: 20px;
}
div.tree-child {
  background: url(../../misc/tree.png) no-repeat 11px center; /* LTR */
}
div.tree-child-last {
  background: url(../../misc/tree-bottom.png) no-repeat 11px center; /* LTR */
}
div.tree-child-horizontal {
  background: url(../../misc/tree.png) no-repeat -11px center;
}
.tabledrag-toggle-weight-wrapper {
  text-align: right; /* LTR */
}

/**
 * TableHeader behavior.
 *
 * @see tableheader.js
 */
table.sticky-header {
  background-color: #fff;
  margin-top: 0;
}

/**
 * Progress behavior.
 *
 * @see progress.js
 */
/* Bar */
.progress .bar {
  background-color: #fff;
  border: 1px solid;
}
.progress .filled {
  background-color: #000;
  height: 1.5em;
  width: 5px;
}
.progress .percentage {
  float: right; /* LTR */
}
/* Throbber */
.ajax-progress {
  display: inline-block;
}
.ajax-progress .throbber {
  background: transparent url(../../misc/throbber.gif) no-repeat 0px -18px;
  float: left; /* LTR */
  height: 15px;
  margin: 2px;
  width: 15px;
}
.ajax-progress .message {
  padding-left: 20px;
}
tr .ajax-progress .throbber {
  margin: 0 2px;
}
.ajax-progress-bar {
  width: 16em;
}

/**
 * Inline items.
 */
.container-inline div,
.container-inline label {
  display: inline;
}
/* Fieldset contents always need to be rendered as block. */
.container-inline .fieldset-wrapper {
  display: block;
}

/**
 * Prevent text wrapping.
 */
.nowrap {
  white-space: nowrap;
}

/**
 * For anything you want to hide on page load when JS is enabled, so
 * that you can use the JS to control visibility and avoid flicker.
 */
html.js .js-hide {
  display: none;
}

/**
 * Hide elements from all users.
 *
 * Used for elements which should not be immediately displayed to any user. An
 * example would be a collapsible fieldset that will be expanded with a click
 * from a user. The effect of this class can be toggled with the jQuery show()
 * and hide() functions.
 */
.element-hidden {
  display: none;
}

/**
 * Hide elements visually, but keep them available for screen-readers.
 *
 * Used for information required for screen-reader users to understand and use
 * the site where visual display is undesirable. Information provided in this
 * manner should be kept concise, to avoid unnecessary burden on the user.
 * "!important" is used to prevent unintentional overrides.
 */
.element-invisible {
  position: absolute !important;
  clip: rect(1px 1px 1px 1px); /* IE6, IE7 */
  clip: rect(1px, 1px, 1px, 1px);
  overflow: hidden;
  height: 1px;
}

/**
 * The .element-focusable class extends the .element-invisible class to allow
 * the element to be focusable when navigated to via the keyboard.
 */
.element-invisible.element-focusable:active,
.element-invisible.element-focusable:focus {
  position: static !important;
  clip: auto;
  overflow: visible;
  height: auto;
}

/**
 * Markup free clearing.
 *
 * @see http://perishablepress.com/press/2009/12/06/new-clearfix-hack
 */
.clearfix:after {
  content: ".";
  display: block;
  height: 0;
  clear: both;
  visibility: hidden;
}
/* IE6 */
* html .clearfix {
  height: 1%;
}
/* IE7 */
*:first-child + html .clearfix {
  min-height: 1%;
}

@charset "UTF-8";
body {
	background-color: #ccc;
	background-image: url("/OA_MEDIA/xxwv2/istore/bg-gradient.gif");
	background-repeat: repeat-x;
	color: #000;
	font: 100%/1.4 Trebuchet MS;
	margin: 0;
	padding: 0;
}
body.sco-body{
	background-color: #ccc;
}
/* ~~ Element/tag selectors ~~ */
ul, ol, dl { /* Due to variations between browsers, it's best practices to zero padding and margin on lists. For consistency, you can either specify the amounts you want here, or on the list items (LI, DT, DD) they contain. Remember that what you do here will cascade to the .nav list unless you write a more specific selector. */
	padding: 0;
	margin: 0;
}
h1, h2, h3, h4, h5, h6, p {
	margin-top: 0;	 /* removing the top margin gets around an issue where margins can escape from their containing div. The remaining bottom margin will hold it away from any elements that follow. */
	padding-right: 15px;
	padding-left: 15px; /* adding the padding to the sides of the elements within the divs, instead of the divs themselves, gets rid of any box model math. A nested div with side padding can also be used as an alternate method. */
}
a img { /* this selector removes the default blue border displayed in some browsers around an image when it is surrounded by a link */
	border: none;
}
/* ~~ Styling for your site's links must remain in this order - including the group of selectors that create the hover effect. ~~ */
a {
	text-decoration: none; /* unless you style your links to look extremely unique, it's best to provide underlines for quick visual identification */
}
a:visited, a:link {
	color: #006699;
}
a:hover, a:active, a:focus { /* this group of selectors will give a keyboard navigator the same hover experience as the person using a mouse. */
	text-decoration: underline;
}
/* ~~ this container surrounds all other divs giving them their percentage-based width ~~ */
.container.sco {
	width: 960px;
	background: #FFF;
	background-color: #FFF !important;
	margin: auto; /* the auto value on the sides, coupled with the width, centers the layout. It is not needed if you set the .container's width to 100%. */
}
/* ~~ the header is not given a width. It will extend the full width of your layout. It contains an image placeholder that should be replaced with your own linked logo ~~ */
.header {
	background: #FF6600;
}
/* ~~ Hides elements like the Skip to main content link */
.element-invisible{
	display:none;
}
/* ~~ These are the columns for the layout. ~~

1) Padding is only placed on the top and/or bottom of the divs. The elements within these divs have padding on their sides. This saves you from any "box model math". Keep in mind, if you add any side padding or border to the div itself, it will be added to the width you define to create the *total* width. You may also choose to remove the padding on the element in the div and place a second div within it with no width and the padding necessary for your design.

2) No margin has been given to the columns since they are all floated. If you must add margin, avoid placing it on the side you're floating toward (for example: a right margin on a div set to float right). Many times, padding can be used instead. For divs where this rule must be broken, you should add a "display:inline" declaration to the div's rule to tame a bug where some versions of Internet Explorer double the margin.

3) Since classes can be used multiple times in a document (and an element can also have multiple classes applied), the columns have been assigned class names instead of IDs. For example, two sidebar divs could be stacked if necessary. These can very easily be changed to IDs if that's your preference, as long as you'll only be using them once per document.

4) If you prefer your nav on the left instead of the right, simply float these columns the opposite direction (all left instead of all right) and they'll render in reverse order. There's no need to move the divs around in the HTML source.

*/
#main-wrapper-sco .page-checkoutpage .panel-2col .panel-col-first {
  width: 490px;
}
* html .page-checkoutpage .panel-2col .panel-col-first {
  width: 489px;
}
.page-checkoutpage .panel-2col .panel-col-first .inside {
	margin:0px;
}
.page-checkoutpage .panel-2col .panel-col-last {
  width: 470px;
}
* html .page-checkoutpage .panel-2col .panel-col-last {
  width: 469px;
}
.page-checkoutpage .panel-2col .panel-col-last .inside {
	margin:0px;
}
.page-checkout .panel-2col .panel-col-first {
  width: 490px;
}
* html .page-checkout .panel-2col .panel-col-first {
  width: 489px;
}
.page-checkout .panel-2col .panel-col-first .inside {
	margin:0px;
}
.page-checkout .panel-2col .panel-col-last {
  width: 470px;
}
* html .page-checkout .panel-2col .panel-col-last {
  width: 469px;
}
.page-checkout .panel-2col .panel-col-last .inside {
	margin:0px;
}
#main-wrapper-sco{
	min-height: 200px;
}
.page-level-error {
	padding:20px
}
.page-level-error .dcs-hours{
	color: 	#666567;
}
/* ~~ This grouped selector gives the lists in the .content area space ~~ */
.content ul, .content ol {
	padding: 0 15px 15px 40px; /* this padding mirrors the right padding in the headings and paragraph rule above. Padding was placed on the bottom for space between other elements on the lists and on the left to create the indention. These may be adjusted as you wish. */
}
/* ~~ The footer ~~ */
.footer {
	background: #CCCCCC;
	clear: both; /* this clear property forces the .container to understand where the columns end and contain them */
	padding: 10px 0;
	position: relative;/* this gives IE6 hasLayout to properly clear */
}
/* ~~ miscellaneous float/clear classes ~~ */
#main-wrapper-sco .fltrt {  /* this class can be used to float an element right in your page. The floated element must precede the element it should be next to on the page. */
	float: right;
	margin-left: 8px;
}
#main-wrapper-sco .fltlft { /* this class can be used to float an element left in your page. The floated element must precede the element it should be next to on the page. */
	float: left;
	margin-right: 8px;
}
-->
.sco #universalheader #header {
	filter: none;
}
#main-wrapper-sco input.inactive, #main-wrapper-sco textarea.inactive{
	color: #666567;
}
#main-wrapper-sco select {
    border: 1px solid #999999;
	font-size: 12px;
}
#main-wrapper-sco input,#main-wrapper-sco select {
	line-height: normal;
	margin:0px;
	padding:1px;
}

#main-wrapper-sco .content .form-item, #main-wrapper-sco .content .form-actions{
	margin:0px;
}
#main-wrapper-sco h1, #main-wrapper-sco h2{
	background-image: url('/commerce/sites/all/themes/wv/images/header-blue-gradiant.png');
	background-position: top left;
	background-repeat: repeat-x;
	color:#fff;
	font-size: 16px;
	line-height: normal;
	margin: 0px;
	padding-bottom: 5px;
	padding-top: 4px;
}
#main-wrapper-sco form {
	margin:0px;
}
#main-wrapper-sco .recommendations{width:462px;}
#main-wrapper-sco .recommendations h2 {background-color:#686666;background-image:none;}
#main-wrapper-sco h3{
	background: #686666;
	color: #fff;
	font-size: 15px;
	line-height: normal;
	margin: 0px;
	padding-bottom: 5px;
	padding-top: 4px;
}
#main-wrapper-sco h3.header-only{
	background: #a4a3a3;
}
#main-wrapper-sco h4{
	font-size: 18px;
}

/* generic styling classes */
#main-wrapper-sco .left-border{
	border-left: 1px solid #DCDDDE;
}
#main-wrapper-sco .height-12{
	height: 12px;
}
#main-wrapper-sco .p-right-5{
	padding-right: 5px;
}
#main-wrapper-sco .p-right-10{
	padding-right: 10px;
}
#main-wrapper-sco .p-left-10{
	padding-left: 10px;
}
#main-wrapper-sco .p-top-10{
	padding-top: 10px;
}
#main-wrapper-sco .m-top-3{
	margin-top: 3px;
}
#main-wrapper-sco .m-top-5{
	margin-top: 5px;
}
#main-wrapper-sco .m-left-5{
	margin-left: 5px;
}
#main-wrapper-sco .m-left-8{
	margin-left: 8px;
}
#main-wrapper-sco .m-left-10{
	margin-left: 10px;
}
#main-wrapper-sco .m-left-15{
	margin-left: 15px;
}
#main-wrapper-sco .m-left-30{
	margin-left: 30px;
}
#main-wrapper-sco .m-top-10{
	margin-top: 10px;
}
#main-wrapper-sco .m-top-15{
	margin-top: 15px;
}
#main-wrapper-sco .m-bottom-10, .m-bottom-10{
	margin-bottom: 10px;
}
#main-wrapper-sco .m-bottom-20{
	margin-bottom: 20px;
}
#main-wrapper-sco .m-right-5{
	margin-right: 5px;
}
#main-wrapper-sco .m-right-10, .m-right-10{
	margin-right: 10px;
}
#main-wrapper-sco .m-right-20{
	margin-right: 20px;
}
#main-wrapper-sco .m-right-30{
	margin-right: 30px;
}
#main-wrapper-sco .thin-right-border{
	border-right: 1px solid #DCDDDE;
}
#main-wrapper-sco .thin-left-border{
	border-left: 1px solid #DCDDDE;
}
#main-wrapper-sco .thin-bottom-light-border{
	border-bottom: 1px solid #B3B3B3;
	padding-bottom: 0px;
}

#main-wrapper-sco .orangeButton.bin, #main-wrapper-sco .grayButton.bin {
    border-radius: 5px 5px 5px 5px;
    font-size: 16px;
    padding: 1px 10px;
}
#main-wrapper-sco .orangeButton, #main-wrapper-sco .orangeButton2, #main-wrapper-sco .grayButton, #main-wrapper-sco .grayButton2, .orangeButton, .orangeButton2, .grayButton, .grayButton2 {
    border: medium none;
    color: #fff;
    cursor: pointer;
    font-family: Trebuchet MS !important;
}
#main-wrapper-sco .orangeButton,#main-wrapper-sco .orangeButton2, .orangeButton, .orangeButton2 {
    background: none repeat scroll 0 0 #FF6600;
}
#main-wrapper-sco .grayButton,#main-wrapper-sco .grayButton2 {
    background: none repeat scroll 0 0 #006699;
}
#thank-you .upsell-bin a.orangeButton, #thank-you .upsell-bin a.orangeButton:visited,#thank-you .upsell-bin a.orangeButton:link, a.orangeButton, a.orangeButton2, a.grayButton, a.grayButton2 {
	color:#fff;
}
#thank-you .upsell-bin a.orangeButton, #thank-you .upsell-bin a.orangeButton:visited,#thank-you .upsell-bin a.orangeButton:link {
	font-weight: normal;
}
#thank-you .upsell-bin a.orangeButton, #thank-you .upsell-bin a.orangeButton:visited,#thank-you .upsell-bin a.orangeButton:link, a.orangeButton:hover, a.orangeButton:active, a.orangeButton:focus, a.grayButton:hover, a.grayButton:active, a.grayButton:focus {
	text-decoration:none;
}
.orangeButton2, .grayButton2 {
    border-radius: 10px 10px 10px 10px;
    font-size: 16px;
    margin-top: 10px;
    padding: 2px 20px;
}
.orangeButton, .grayButton {
    border-radius: 10px 10px 10px 10px;
    font-size: 16px;
    padding: 4px 15px;
}
.orangeButton.bin, .grayButton.bin { border-radius: 5px 5px 5px 5px; font-size: 16px; padding: 1px 10px; -moz-border-radius: 5px; -webkit-border-radius: 5px; }
#main-wrapper-sco  .orangeButton2:hover, #main-wrapper-sco  .orangeButton:hover, #main-wrapper-sco .grayButton2:hover, #main-wrapper-sco .grayButton:hover, .orangeButton2:hover, .orangeButton:hover, .grayButton2:hover, .grayButton:hover { background: #ff9046; }

.orangeButton.disabled, .orangeButton.disabled:hover, .grayButton.disabled, .grayButton.disabled:hover{
	background: #DCDDDE;
	color: #fff;
	cursor: text;
}

.basket-items, .checkout-options, .you-may-also-like, .need-help, .card-options, .trusted-site, .mailing-information, .payment-information, .review-and-submit{
	border: 1px solid #DCDDDE;
	margin: 10px;
}
.checkout-options, .you-may-also-like, .need-help, .trusted-site, .card-options, .mailing-information, .payment-information, .review-and-submit{
	margin-left: 0px;
	margin-bottom: 0px;
}
.card-options, .mailing-information, .payment-information, .review-and-submit{
	margin-top: 0px;
}
.payment-information-entry{
	margin-top: 10px;
	margin-bottom: 10px;
}

.also-like-item {
	float:left;
	width:110px;
}
.checkout-options{
	font-size: 13px;
	margin-bottom: 0px;
}
.checkout-options-inner{
	margin-bottom:15px;
	margin-top:15px;
}
.checkout-options h5, .checkout-options h6{
	font-size: 18px;
}
.checkout-options h5{
	color: #003f5f;
	margin-bottom: 12px;
}
.checkout-options h5, .checkout-options p{
	padding-left:0px;
}
.checkout-options input{
	margin-bottom:5px;
}
.checkout-options input.password, .checkout-options input.fake-password, .checkout-options input[type="password"], .checkout-options input[type="text"], .checkout-options input[type="email"]{
	width: 235px;
}
.checkout-options .column1, .checkout-options .column2 {
	float:left;
	padding: 0px;
}
.checkout-options .column1, .checkout-options .column2{
	padding-left:20px;
}
.checkout-options .column1{
	width: 35%;
}
.checkout-options .column2{
	width: 55%;
}
.checkout-options .column1 p{
	margin-bottom: 6px;
}

.checkout-options a{
	font-size: 11px;
}
.checkout-options #guest_checkout.disabled h5, .checkout-options #guest_checkout.disabled p{
	color: #828181;
}
.sprite-icon-basket{ float:right; }

.also-like-item h5 {
	padding:0px;
}
.item img {
	border: 1px solid #DCDDDE;
}
.donation-total, .need-help {
	background: #eff0f1;
}
.need-help .column1, .need-help .column2 {
	color: #666;
	float:left;
	padding-top: 5px;
}
.need-help .column1 {
	color: #000000;
	font-size: 15px;
	padding-left: 5px;
	width: 59%;
}
.need-help .column1 strong{
	font-size: 17px;
}
.need-help .column2 {
	color:#666567;
	font-size:13px;
	padding-right: 5px;
	width: 38%;
}
.need-help strong {
	color: #000000;
}
.popups-container .modal-header{
	border:none;
}
.item .price input{
	text-align: right;
	width: 50px;
}
.item .qty input{
	text-align: right;
	width: 25px;
}
.item {
	border-bottom: 3px solid #666;
	clear: both;
	margin: 10px 10px 20px 10px;
	padding-bottom: 10px;
}
.item .item-image, .item .item-information {
	float:left;
}
.item .item-image{
	width:90px;
}
.item .item-information {
	width:352px;
}
.item .item-description {
	float: left;
	margin-left: 10px;
	width: 230px;
}
.item .item-description h4, .item .item-description h4 a {
	color: #111111;
	margin:0px;
	padding:0px;
}
.item .item-description .sponsorship {
	color: #666567;
	font-size: 13px;
	margin-top: -2px;
}
.item .item-description .commitment-frequency {
	font-size: 13px;
	margin-top: 12px;
}
.item .line-item-summary {
	float: right;
	font-size: 14px;
	min-height: 80px;
	text-align: right;
	width: 110px;
}
.item .line-item-summary div.price, .item .line-item-summary div.qty, .item .line-item-summary div.item-total  {
	clear: both;
	margin-bottom: 5px;
}
.item .item-actions {
	clear:both;
	color: #DCDDDE;
	font-size: 11px;
	text-align:right;
}
.item .item-gift-card{
	border-top: 1px solid #DCDDDE;
	clear:both;
	font-size: 12px;
	height: 26px;
	margin-top: 6px;
}
.item .item-gift-card div{
	margin-right: 5px;
	margin-top: 6px;
}
.item .item-gift-card .note, .send-card-address-edit .note, #billing-address .note, .create-account .note, .send-card-to .note, .card-item .note{
	font-size:11px;
}
.send-card-to .note {
	margin-left: 34px;
	margin-top: 6px;
}
.item .item-gift-card .sprite-icon-gift-card{
	margin-top: 0px;
}

.line-item-summary .form-item{float:right;}
.line-item-summary .form-item input{margin-left:5px;}
#main-wrapper-sco .item-actions input{border:none;background:none;font-size: 11px;color: #006699;cursor:pointer;vertical-align: inherit;}
#main-wrapper-sco .item-actions input:hover{text-decoration:underline;}
.item-actions .ajax-progress-throbber.ajax-progress{margin-left:-70px;margin-top:15px;}
.item-actions .ajax-progress-throbber.ajax-progress .message{position:absolute;top:0px;margin-top:3px;text-align:left;width:70px;}

.clear-both {
	clear:both;
}
.float-left{
	float:left;
}
.float-right{
	float:right;
}
a.action {
	color: #006699;
	text-decoration: none;
}
a.action:hover, a.action:active, a.action:focus {
	text-decoration: underline;
}
.donation-total, .continue-browsing {
	clear: both;
	margin: 10px 10px 20px 10px;
	padding: 5px;
}

.donation-total h5{
	font-size: 19px;
	padding-bottom: 10px;
	padding-top: 10px;
}
.donation-total h6{
	font-size: 13px;
}
.donation-total h5, .donation-total h6 {
	float: left;
	height:22px;
	margin: 0px;
	padding:0px;
}
.donation-total h5.label, .donation-total h6.label {
	background-color: transparent;
	color: #000;
	margin-top: 5px;
	width:57%;
}
.donation-total h5.amount, .donation-total h6.amount {
	margin-top: 5px;
	text-align: right;
	width:42%;
}

div.ajax-progress-throbber.ajax-progress {float: none; position: absolute; margin-left: 5px; color: black; width: 65px; font-size: 10px;}
.ajax-progress .message{float:none;}

.sprite-icons-cart {
    background-image: url('/commerce/sites/all/themes/wv/images/sprite-icons-cart.png');
	background-repeat: no-repeat;
	background-position: top left;
}
.sprite-icons-cart:hover {
    background-image: url('/commerce/sites/all/themes/wv/images/sprite-icons-cart-hover.png');
	background-repeat: no-repeat;
	background-position: top left;
}

.sprite-arrow-double-blue-left, .sprite-arrow-double-blue-left:hover{ background-position: 0 0; width: 19px; height: 51px; }
.sprite-arrow-double-blue-right, .sprite-arrow-double-blue-right:hover{ background-position: 0 -101px; width: 19px; height: 50px; }
.sprite-button-cta-left-rollover, .sprite-button-cta-left-rollover:hover{ background-position: 0 -201px; width: 3px; height: 27px; }
.sprite-button-cta-left, .sprite-button-cta-left:hover{ background-position: 0 -278px; width: 3px; height: 27px; }
.sprite-button-cta-right-rollover, .sprite-button-cta-right-rollover:hover{ background-position: 0 -355px; width: 3px; height: 27px; }
.sprite-button-cta-right, .sprite-button-cta-right:hover{ background-position: 0 -432px; width: 3px; height: 27px; }
.sprite-icon-basket, .sprite-icon-basket:hover{ background-position: 0 -509px; width: 20px; height: 19px; }
.sprite-icon-gift-card, .sprite-icon-gift-card:hover{ background-position: 0 -578px; width: 22px; height: 26px; }
.sprite-icon-help, .sprite-icon-help:hover{ background-position: 0 -654px; width: 21px; height: 20px; }
.sprite-icon-lock, .sprite-icon-lock:hover{ background-position: 0 -724px; width: 13px; height: 19px; }
.sprite-icon-play-video, .sprite-icon-play-video:hover{ background-position: 0 -793px; width: 19px; height: 18px; }
.sprite-icon-telephone, .sprite-icon-telephone:hover{ background-position: 0 -861px; width: 31px; height: 33px; }


.sprite-icons-secure  {
    background-image: url('/commerce/sites/all/themes/wv/images/sprite-icons-secure.png');
	background-repeat: no-repeat;
	background-position: top left;
	display:block;
}
.sprite-logo-bbb{ background-position: 0 0; width: 34px; height: 55px; }
.sprite-logo-charity-navigator{ background-position: 0 -60px; width: 146px; height: 37px; }
.sprite-logo-ecfa{ background-position: 0 -102px; width: 34px; height: 33px; }
.sprite-logo-thawte{ background-position: 0 -140px; width: 110px; height: 27px; }

.sprite-icons-payment.amex, .sprite-icons-payment.amex.no-hover:hover{ background-position: 0 -112px; width: 57px; height: 36px; }
.sprite-icons-payment.amex.gray{ background-position: 0 0; width: 57px; height: 36px; }
.sprite-icons-payment.amex:hover, .sprite-icons-payment.amex.selected{ background-position: 0 -56px; width: 57px; height: 36px; }

.sprite-icons-payment.discover, .sprite-icons-payment.discover.no-hover:hover{ background-position: 0 -354px; width: 56px; height: 36px; }
.sprite-icons-payment.discover.gray{ background-position: 0 -242px; width: 56px; height: 36px; }
.sprite-icons-payment.discover:hover, .sprite-icons-payment.discover.selected{ background-position: 0 -298px; width: 56px; height: 36px; }

.sprite-icons-payment.mc, .sprite-icons-payment.mc.no-hover:hover{ background-position: 0 -522px; width: 55px; height: 36px; }
.sprite-icons-payment.mc.gray{ background-position: 0 -410px; width: 55px; height: 36px; }
.sprite-icons-payment.mc:hover, .sprite-icons-payment.mc.selected{ background-position: 0 -466px; width: 55px; height: 36px; }

.sprite-icons-payment.paypal, .sprite-icons-payment.paypal.no-hover:hover{ background-position: 0 -690px; width: 57px; height: 36px; }
.sprite-icons-payment.paypal.gray{ background-position: 0 -578px; width: 57px; height: 36px; }
.sprite-icons-payment.paypal:hover, .sprite-icons-payment.paypal.selected{ background-position: 0 -634px; width: 57px; height: 36px; }

.sprite-icons-payment.visa, .sprite-icons-payment.visa.no-hover:hover{ background-position: 0 -895px; width: 55px; height: 36px; }
.sprite-icons-payment.visa.gray{ background-position: 0 -783px; width: 55px; height: 36px; }
.sprite-icons-payment.visa:hover, .sprite-icons-payment.visa.selected{ background-position: 0 -839px; width: 55px; height: 36px; }


.sprite-payment-checked-checkbox{ background-position: 0 -168px; width: 18px; height: 17px; }
.sprite-payment-checkmark{ background-position: 0 -205px; width: 16px; height: 17px; }
.sprite-payment-no-checkmark{ background: none; width: 16px; height: 17px; }
.sprite-payment-unchecked-checkbox{ background-position: 0 -746px; width: 18px; height: 17px; }

.sprite-icons-payment {
    background-image: url('/commerce/sites/all/themes/wv/images/sprite-icons-payment.png');
	background-repeat: no-repeat;
	display:block;
}


.secure-checkout {
	border: 1px solid #DCDDDE;
	padding-bottom: 10px;
	padding-top: 5px;
	margin-right: 10px;
	margin-top: 10px;
}
.secure-checkout div{
	margin-left: 10px;
	padding-left:10px;
}
.sign-in-submit {
	margin-bottom: 10px;
	margin-top: 30px;
}
.sign-in-submit input{
	margin-right: 10px;
}
#main-wrapper-sco .content .form-item.form-item-email{
	margin-bottom: 8px;
}
.mailing-information label, .mailing-information .my-info .label, .send-card-address-edit label, .send-card-to-myself .label, .payment-information label, .payment-information .my-info .label, .card-info .label, .review-and-submit label{
	background:transparent;
	color: #000;
	clear:both;
	display:block;
	float: left;
	padding:0px;
}
.mailing-information label, .mailing-information .my-info .label, .send-card-address-edit label, .send-card-to-myself .label, .payment-information label, .payment-information .my-info .label, .card-info .label{
	width: 100px;
}
.review-and-submit label{
	width: 200px;
}

.mailing-information label, .review-and-submit label{
	padding-left: 15px;
}

.payment-information label.option{
	padding-left: 5px;
}
.mailing-information div.mailing-input, .send-card-address-edit div.send-card-input, .mailing-information .my-info .address, .payment-information div.payment-input, .payment-information .my-info .address{
	float:left;
}
.my-info .address, .card-item .send-to{
	float:left;
	overflow:hidden;
	text-overflow:ellipsis;
	white-space:nowrap;
	width: 335px;
}
.card-options .card-item .send-to {
	width: 385px;
}
.payment-information .my-info .address{
	width: 263px;
}
.send-card-to-myself.my-info .address{
	width: 295px;
}
.mailing-information input, .send-card-address-edit input, .payment-information input, .mailing-information select, .send-card-address-edit select, .payment-information select{
	width:320px;
}
.mailing-information input[type="checkbox"], .send-card-address-edit input[type="checkbox"], .payment-information input[type="checkbox"]{
	width:14px;
}
.mailing-information select.state, .mailing-information input {
	width:275px;
}
.payment-information select.expiration-month, .payment-information select.expiration-year{
	width: 60px;
}
.payment-information input.card-number{
	width:125px;
}
.mailing-information input.first-name,  .mailing-information input.last-name {
	 width: 133px;
}
.mailing-information input.zip, .send-card-address-edit input.zip, .payment-information input.zip{
	width:71px;
}
.mailing-information .form-item-use-billing label{
	clear: none;
	padding-left: 8px;
	width: 250px;
}

.mailing-information input.use-billing {
	width:15px;
}
.mailing-information div.mailing-input-no-label{
	clear: both;
	margin-left: 115px;
}
.mailing-information p {
	padding: 5px 0 15px 15px;
}
.mailing-information, .payment-information, .review-and-submit {
	font-size: 13px;
}
.mailing-information label, .send-card-address-edit label, .mailing-information div.mailing-input, .send-card-address-edit div.send-card-input, .payment-information div.payment-input{
	margin-bottom: 7px;
}
.mailing-information .my-info, .payment-information .form-item-paperless {
	margin: 10px;
}
.content .form-item.form-item-first-name, .content .form-item.form-item-last-name{float:left;}
.content .form-item.form-item-last-name{margin-left:6px;}

.content .panel-2col .panel-separator{
	margin: 0px;
}
.review-and-submit .donation-total{
	margin: 0px;
}
div.preauthenticated p{
	margin: 0px;
}
div.preauthenticated{
	margin: 20px 0 20px 15px;
}
.checkout-options div.preauthenticated a{
	font-size: 13px;
}
/* emptyp basket */
.empty-basket{
	margin-bottom: 50px;
	margin-top: 50px;
	min-height: 750px;
}

.empty-basket p{
	margin-bottom: 40px;
	text-align: center;
}

.empty-basket div.center{
	margin: 0 auto;
	width: 180px;
}

/* errors displayed to user */
.fieldError, .panelError, .forgotPWEmailError, .recommendations-widget #recItem-mostNeed  .amount-error {
	color: #bb0707;
	font-size: 13px;
	font-weight: bold;
}
/* address form for mailing address, payment address and send a card address */
.mailing-information .fieldError, .send-card-address-edit .fieldError, .payment-information .fieldError{
	clear:both;
}
.mailing-information .fieldError{
	padding-left:15px;
}

.send-card-to-addresses {
	width: 210px;
}

.panelError{
	font-size:12px;
}
h1 div.edit {
	padding-top: 2px;
}
h3 a, h3 a:link, h3 a:visited, h1 div.edit a,  h1 div.edit a:link,  h1 div.edit a:visited {
	color: #fff;
}
h3 .edit, h1 .edit{
	font-size:11px;
	margin-right: 5px;
}
.card-options {
	font-size: 13px;
}
.remaining-characters-message{
	color: #666567;
	float:right;
}
/* Edit, Edit & Personalize and Cancel button */
.card-options input.personalize, .card-options input.send-card-edit-cancel, .mailing-information input.send-card-edit-cancel, #paymentForm .payment-cancel, #billing-address input.payment-address-edit, #payment input.payment-method-edit {
	background:none;
	border:none;
	color: #006699;
	cursor:pointer;
	font-size: 11px;
	text-align: right;
}
.card-options input.personalize:hover, .card-options input.send-card-edit-cancel:hover, .mailing-information input.send-card-edit-cancel:hover, #paymentForm .payment-cancel:hover, #billing-address input.payment-address-edit:hover, #payment input.payment-method-edit :hover{
	text-decoration:underline;
}
.card-options input.personalize {
	margin-left: 8px;
    width: 102px;
}
.card-options input.personalize.edit-mode {
	display:none;
}

.card-options input.send-card-edit-cancel, .mailing-information input.send-card-edit-cancel, #paymentForm .payment-cancel, #billing-address input.payment-address-edit, #payment input.payment-method-edit {
    text-align: right;
	width: 40px;
}
.mailing-information input.send-card-edit-cancel {
        text-align: left;
        width: 45px;
}
/* Credit card and payment information */

.card-options .sub-header, .cardForm .sub-header{
	float:left;
	margin-top:5px;
	margin-bottom:5px;
	width: 400px;
}
.card-options .send-card-options, .cardForm .send-card-options{
	border-top: 1px solid #DCDDDE;
	clear:both;
	padding: 10px 0;
}
.card-options .send-card-options .send-card-to, .cardForm .send-card-options .send-card-to{
	padding: 0 10px;
}
.card-options .gift-card-actions, .card-options .gift-card-actions, .cardForm .gift-card-actions, .cardForm .gift-card-actions{
	margin-top: 10px;
	text-align:right;
}
.card-options .send-card-address-edit, .card-options .send-card-message-edit, .cardForm .send-card-address-edit, .cardForm .send-card-message-edit{
	padding: 10px 15px;
}
.card-options .send-card-message-edit textarea, .cardForm .send-card-message-edit textarea{
	clear:both;
}

.card-options .send-card-options.unchecked, .cardForm .send-card-options.unchecked{
	margin-bottom: 0px;
}
.card-options .send-card-options h5{
	font-size: 16px;
}
.card-item {
	border-top: 1px solid #DCDDDE;
	padding-bottom: 10px;
	padding-top: 10px;
}
.card-item:first-child{
	border:none;
}

.card-item h4{
	padding-left:0px;
}
.card-item{
	font-size: 14px;
}
.card-item .send-to .recipient{
	color: #666567;
}
.card-options fieldset{
	background: #EFF0F1;
}

.card-options fieldset.send-card-message-edit{
	background-color: #fff;
	background-image: url('/commerce/sites/all/themes/wv/images/card-message-gradiant.png');
	background-repeat: repeat-x;
	border-top: 1px dotted #666666;
}

.card-options input[type=checkbox] {
    position: absolute;
    left: -9999px;
}

.card-options .send-card-options input[type=checkbox] + label{
	background-image: url('/commerce/sites/all/themes/wv/images/sprite-icons-payment.png');
	background-position: 0 -167px;
	background-repeat: no-repeat;
	background-color: #fff;
    display:inline-block;
	height: 21px;
	margin-bottom:8px;
	padding: 0 0 0 30px;
}

#billing-address .my-info {
	padding-top: 5px;
}

.card-options  .send-card-options.unchecked input[type=checkbox] + label{
    background-position: 0 -745px;
}
.card-options .send-card-options-continue {
	margin-bottom: 10px;
	margin-left:247px;
	margin-top: 10px;
}
.card-options .send-card-options-continue.show-button {
	display: block;
}
.card-options .send-card-options-continue.hide-button {
	display: none;
}
.card-options .send-card-options .send-card-edit-container {
	margin-top: 14px;
}
#paymentForm{
	padding-bottom: 10px;
	padding-top: 10px;
}
#paymentForm input.visa, #paymentForm input.mc, #paymentForm input.amex, #paymentForm input.discover, #paymentForm input.paypal{
	border:none;
}
.card-options textarea{
	resize:none;
}
.send-card-address-edit .note, #billing-address .note{
	margin-top: 6px;
}
select.select-billing-address, select.select-payment-method {

	width: 100%;
}
ul.cc-types{
	height: 45px;
	padding:5px 0 0 53px;
}
.cc-types li{
	display:inline;
	float:left;
	margin-right:10px;
}
.cc-types li a{
	display:block;
}
.card-information, .card-info{
	clear:both;
}
.card-information{
	margin-bottom:10px;
	padding-top: 10px;
}
.card-info{
	padding-top: 10px;
}

#payment {
	border-top: 1px solid #DCDDDE;
}
#payment, #billing-address {
	padding:15px;
}

.form-item-paperless label{
	clear:none;
	float:left;
	width:346px;
}
.payment-information input.paperless{
	float:left;
	margin-left:5px;
}
.payment-information .opted-in-paperless{
	margin: 0 15px;
}
/* review & submit section */
.review-input{
	margin-bottom:10px;
}
.review-and-submit .donation-total{
	padding-left: 25px;
	padding-right: 25px;
}

/* Modal/lightbox and tooltips */
#modalBackdrop {
	position: fixed!important;
	background-color: black!important;
	opacity: .55;
}

div.ctools-modal-content a.close img {
	display: none;
}
div.ctools-modal-content {
	background: white;
	border: solid 1px #DDD;
	color: black;
	font-size: 12px;
	padding: 0;
	margin: 2px;
	text-align: left;
	-webkit-border-radius: 0.5em;
	-moz-border-radius: 0.5em;
	-webkit-box-shadow: -1em 1em 1em rgba(0, 0, 0, 0.5);
	width: 600px;
}

div.ctools-modal-content {
	font-size: 12px;
}
div.ctools-modal-content .modal-header {
	background: white url('../../../modules/panels/images/bg-shade-light.png') repeat-x bottom left;
	color: #777;
	display: block;
	font-weight: 700;
	letter-spacing: normal;
	padding: 0.25em 1em;
	-moz-border-radius-topleft: 0.5em;
	-moz-border-radius-topright: 0.5em;
	-webkit-border-top-left-radius: 0.5em;
	-webkit-border-top-right-radius: 0.5em;
	border-top-left-radius: 0.5em;
	border-top-right-radius: 0.5em;
}

div.ctools-modal-content .modal-title {
	color: #555;
	font-size: 120%;
	font-weight: bold;
	letter-spacing: normal;
	overflow: hidden;
	text-shadow: white 1px 1px 1px;
	white-space: nowrap;
}
div.ctools-modal-content {
	text-align: left;
}

.ctools-modal-card-options-lightbox, .monthly-giving-lightbox, .ctools-modal-countries-mailing-lightbox, .ctools-modal-countries-card-lightbox, .ctools-modal-countries-payment-lightbox, .ctools-modal-paperless-lightbox, .ctools-modal-card-message-lightbox, .ctools-modal-card-signature-lightbox, .ctools-modal-basket-multiple-card-lightbox, .ctools-modal-multiple-card-lightbox, .ctools-modal-multiple-card-edit-lightbox{
	background-image: url('/commerce/sites/all/themes/wv/images/sprite-icons-cart.png');
	background-repeat: no-repeat;
	background-position: 0 -654px;
	height: 20px;
	float: left;
	width: 21px;
}
.ctools-modal-card-options-lightbox:hover, .monthly-giving-lightbox:hover, .ctools-modal-countries-mailing-lightbox:hover, .ctools-modal-countries-card-lightbox:hover, .ctools-modal-countries-payment-lightbox:hover, .ctools-modal-paperless-lightbox:hover, .ctools-modal-card-message-lightbox:hover, .ctools-modal-card-signature-lightbox:hover, .ctools-modal-basket-multiple-card-lightbox:hover, .ctools-modal-multiple-card-lightbox:hover, .ctools-modal-multiple-card-edit-lightbox:hover{
    background-image: url('/commerce/sites/all/themes/wv/images/sprite-icons-cart-hover.png');
	background-repeat: no-repeat;
	background-position: top left;
	background-position: 0 -654px;
	height: 20px;
	float: left;
	width: 21px;
}
#basket-items .ctools-modal-card-options-lightbox {
	background: none;
	width: 350px;
}
.ctools-modal-card-options-lightbox a, .ctools-modal-card-options-lightbox div, .ctools-modal-card-options-lightbox a:link, .ctools-modal-card-options-lightbox a:visited  {
	color: #000000;
}
.card-options-full-description.need-help-pwd .need-help-header{
	font-weight: bold;
	font-size: 14px;
}
div.card-options-full-description p, div.card-options-full-description .need-help-pwd{
	color: #666567;
	padding-left: 0px;
}
.card-message-description h4, .card-signature-description h4 {
	margin: 0px;
}
.card-message-description ul, .card-signature-description ul {
	list-style-type: disc;
	padding-left: 45px;
	margin:0px;
}
div.ctools-modal-content a.close{
	background: url("https://cdn.worldvision.org/m/common/lightbox/skin/icons/phlex-close.png") no-repeat scroll 0 0 transparent;
    display: block;
    font-size:0px;
	height: 41px;
	line-height:0;
	opacity: 1;
	position: absolute;
	right: -15px;
	top: -15px;
    width: 41px;
}
.page-checkoutpage #shadowbox_body {background-color: white;}
.page-checkout #shadowbox_body {background-color: white;}

div.ctools-modal-content table, div.card-options-full-description table{
	width: auto;
}
div.ctools-modal-content table tbody{
	border-top: none;
}
div.ctools-modal-content tbody tr:nth-child(2n) td, div.ctools-modal-content tbody tr.even td,
div.card-options-full-description tbody tr:nth-child(2n) td, div.card-options-full-description tbody tr.even td  {
    background: white;
}
.forgot-password p{
	padding:0px;
	margin-bottom: 19px;
}
.forgot-password .form-item {
	margin-top: 0px;
}
.forgot-password .form-item input {
	margin-bottom: 0px;
}
.card-options-full-description table p{
	color: #565656;
	font-family: GillSansWeb;
	font-size:15px;
	margin-bottom:-2px;
	margin-top:0px;
}
.card-options-full-description table p.sub-head{
	font-weight:bold;
	margin-bottom: 8px;
}
.card-options-full-description a{
	color: #FF6600;
}
.card-options-full-description a:hover{
	color: #006699;
}
.basket-items .card-multiple-qty{
	clear:both;
	margin-left: 27px;
}
.card-multiple-qty{
	font-size: 11px;
	margin-top: 2px;
	width: 380px;
}
.basket-items .premium-item{
	clear:both;
	margin-left: 27px;
}
.premium-item{
	font-size: 11px;
	margin-top: 2px;
	width: 380px;
}
.page-wvcheckout-nojs .monthly-giving-description, .page-wvcheckout-nojs .paperless-description, .page-wvcheckout-nojs .card-message-description, .page-wvcheckout-nojs .card-signature-description, .page-wvcheckout-nojs .edit-card, .page-wvcheckout-nojs .multiple-card-description,
.page-wvcheckout-nojs .countries-description {
	padding: 30px;
	font-size: 14px;
}
.monthly-giving-description, .paperless-description {
	font-size: 13px;
}
#main-wrapper-sco .tooltip{
	opacity:1;
	filter: alpha(opacity = 100);
	position: relative;
	z-index: 10;
}
div.ctools-modal-content .modal-header.tooltip-popup {
	background: white;
}
.left-arrow{
	background-image: url('/commerce/sites/all/themes/wv/images/left-arrow.png');
	left: -10px;
}
.right-arrow{
	background-image: url('/commerce/sites/all/themes/wv/images/right-arrow.png');
	right: -17px;
}
.left-arrow, .right-arrow{
	background-repeat: no-repeat;
	height: 20px;
	position: absolute;
	top:50px;
	width: 21px;
}

#thank-you .item .line-item-summary .item-grumpy-goat {
	text-align:left;
	margin-top:10px;
	padding:0px;
	margin-right:0px;
	margin-bottom:-25px;
}
#thank-you .item .line-item-summary .item-grumpy-goat img {
	border:none;
}
#thank-you .item .line-item-summary .item-grumpy-goat-text {
	font-size:11px;
	width: 170px;
	float:left;
	padding:0px;
	margin:0px;
}

/* Thank you page */
#thank-you {
	padding: 30px;
	font-size: 14px;
}
#thank-you h1{
	background: #fff;
	color: #000;
	font-size:19px;
	padding-left: 0px;
	padding-bottom: 10px;
}
#thank-you p {
	font-size:12px;
	margin: 0 0 10px 0;
	padding: 0px;
}
#thank-you .item {
	border: 1px solid #DCDDDE;
	margin: 0px 0px 10px 0px;
	padding-top: 10px;
	position: relative;
}
#thank-you .item .item-information {
	width: 770px;
}
#thank-you .item .p-left-10 {
	position:absolute;
	bottom:10px;
}
#thank-you .item .item-description {
	width: 510px;
}
#thank-you .item .item-description p, #thank-you .item .item-description div.shipping-to{
	color: #666567;
}
#thank-you .item .item-description p{
	margin-top: 12px;
}
#thank-you .item .item-image {
	padding-left: 10px;
	width: 110px;
	height: 105px;
}
#thank-you .item.card-enabled .item-image, #thank-you .item.card-enabled .item-description {
	margin-bottom:25px;
}
#thank-you .item .line-item-summary {
	min-height: 40px;
	width: 250px;
}
#thank-you .item .line-item-summary div {
	clear: none;
	margin-right: 5px;
	padding-right: 5px;
	padding-bottom: 5px;
}
#thank-you .item .line-item-summary div.fb-share-button {
	margin:0px;
	padding:0px;
}
#thank-you .item .line-item-summary .fb, #thank-you .item .line-item-summary .twitter{
	float:right;
	margin:0px;
	padding:0px;
}
#thank-you .item .line-item-summary .twitter{
	width: 30px;
}
#thank-you .donation-total{
	margin:0px;
}
.your-account-number, .your-order-number {
	border: 1px solid #DCDDDE;
	float:left;
	font-size:12px;
	padding: 10px;
	width:419px;
}.your-account-number {
	margin-right:2%;
}
#thank-you .upsell-bin {
	border: 1px solid #DCDDDE;
	margin-top: 10px;
	padding: 5px 10px;
	font-family: Trebuchet MS;
	position: relative;
	min-height:81px;
}
#thank-you .upsell-bin.small-bin {
	min-height:85px;
}
#thank-you .upsell-bin.no-image {
	min-height: 30px;
}
#thank-you .upsell-bin h3 {
	background: none;
	color: #000;
	font-size: 15tpx;
	padding-left: 0px;
	font-weight: bold;
}
#thank-you .upsell-text {
	font-size: 12px;
	float: left;
}
#thank-you .upsell-image.right {
	position:absolute;
	top:5px;
	right:5px;
}
#thank-you .upsell-image.left {
	float:left;
	margin-right: 50px;
}
#thank-you .upsell-bin ul {
	list-style-type:disc;
	padding-left: 15px;
	padding-bottom: 0px;
	font-size: 12px;
	line-height: 18px;
}
#thank-you .upsell-bin .li-link {
	list-style-type:none;
}
#thank-you .upsell-bin a {
	text-decoration: none;
	color: #ff6600;
	font-weight: bold;
}
#thank-you .upsell-bin a:visited, #thank-you .upsell-bin a:link {
	color: #ff6600;
}
#thank-you .upsell-bin a:hover, #thank-you .upsell-bin a:active, #thank-you .upsell-bin a:focus {
	text-decoration: underline;
}
.sponsored-child h3 {
	border-bottom: 1px solid #DCDDDE;
	padding-left: 5px;
	margin-bottom: 8px;
}
#thank-you .my-sponsored-child, #thank-you .my-wv{
	float: left;
}
#thank-you .my-sponsored-child{
	border-right: 1px solid #DCDDDE;
	color: #666567;
	margin-right: 13px;
	padding-left: 5px;
	width: 275px;
}
#thank-you .my-wv{
	font-size:12px;
	padding-bottom: 10px;
	width: 598px;
}
#thank-you .tax-disclaimer .note{
	font-style: italic;
}
#thank-you .tax-deductible-mailing-address{
	font-size:12px;
}
.thin-bottom-border{
	border-bottom: 1px solid #DCDDDE;
}
.social-sharing{
	color: #666567;
	font-size:12px;
	margin-top: 30px;
}
/* thank you - create an account lightbox */
#create-account {
	display:none;
}
.create-account.lightbox {
	padding-left: 15px;
	padding-right: 15px;
	padding-top:5px;
}
.create-account.lightbox p {
	margin: 0px;
	padding-left: 0px;
	padding-right: 0px;
}
.create-account.lightbox h3 {
	background: none;
	color: #000;
	padding-left: 0px;
	padding-bottom: 15px;
	padding-top: 15px;
}
.create-account.lightbox h5 {
	background: none;
	color: #000;
	font-weight:normal;
	margin:0px;
	padding-left: 0px;
	padding-bottom: 8px;
	padding-top: 0px;
}
.create-account.lightbox input{
	margin:0px;
}
.create-account.lightbox .label, .create-account.lightbox .field {
	float: left;
	padding-left: 0px;
}
.create-account.lightbox .label {
	background-color: transparent;
	color: #000000;
	clear:both;
	font-weight:normal;
	text-shadow:none;
	width: 120px;
}
.create-account.lightbox .form-item-password {
	float: left;
	margin-bottom: 0px;
}
.create-account.lightbox .note.password {
	clear: both;
	margin-left: 120px;
}
.create-account.lightbox ul{
	list-style-type:disc;
	margin-left: 22px;
	margin-top: 0px;
}
#CreateAcctPWError {
	clear: both;
	margin-left: 120px;
}
.create-account.lightbox .form-$15,025</h5>
                                            <div class="clear-both">
                                            </div>
                                        <div class="continue-browsing">
                                            <a href="http://donate.worldvision.org/OA_HTML/xxwv2ibeCCtpSctDspRte.jsp?section=10373&amp;beginIndex=0"
                                                style="width: 150px;" class="grayButton bin" onclick="sendLPOS('lft_btn_ContinueBrowsing_MyBasket','');">
                                                Continue Browsing</a></div>
                                        </div>
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
                                    <!--  11/12/13 commenting out
<script type="text/javascript">
var axel = Math.random() + "";
var a = axel * 10000000000000;
document.write('<iframe src="https://4080299.fls.doubleclick.net/activityi;src=4080299;type=count025;cat=check016;ord=' + a + '?" width="1" height="1" frameborder="0" style="display:none"></iframe>');
</script>
<noscript>
<iframe src="https://4080299.fls.doubleclick.net/activityi;src=4080299;type=count025;cat=check016;ord=1?" width="1" height="1" frameborder="0" style="display:none"></iframe>
</noscript>
-->
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
                                        <%--<h2>
                                            <div class="float-left">
                                                Secure Checkout</div>
                                            <div class="sprite-icon-lock sprite-icons-cart float-right">
                                            </div>
                                            <div class="clear-both">
                                            </div>
                                        </h2>--%>
                                        <h2>
                                            <div class="float-left">
                                                Guest Secure Checkout

#errorMsg {
	font-style: italic;
	font-weight: bold;
	text-align: center;
	margin-top: 12px;
	clear:both;
}

#sponsorship div.cwsLoader {
	margin: 80px 0 0 70px;
	display: block;
	position: absolute;
	z-index: 99;
}
/*-------------------------------------
   Sponsorship Widget Errors
 ------------------------------------*/
.sponsorship-info-error {
	  text-align:center;
}
.sponsorship-info-error p {
	 font-size: 12px;
}
.sponsorship-info-error p b {
	 font-size: 16px;
}
.sponsorship-info-error .orangeButton2 {
	 padding: 2px 8px;
}

/*-------------------------------------
  Read My Story Lightbox Styles
-------------------------------------*/
.lb-content {
	background-color: white;
	margin: 0px;
}

.white_content h3 {
	font-size: 16px;
	margin: 0px;
	clear: both;
	margin-bottom: 8px;
}

.lb-close {
	display: block;
	float: right;
	margin-top: -20px;
}

#my-story {
	display: none
}

#sb-wrapper-inner {
	border: none
}

#sb-body {
	background: none
}

#my-story p {

}

.child-story {
	clear: both;
	position: relative;
	top: 15px;
}

.xxwvSponPara p {
	margin: 12px 0 12px 0;
}

#child-story-details {

}

#child-story-imageURL{
	background:url();
	height:213px;
	width:167px;
	float:none;
	padding:0px;
}

#child-story-content {
	background-color: white;
	padding: 25px;
}

#child-story-quick-stats .bold {
	font-weight: bold;
	margin-top: 10px;
}

#child-story-quick-stats #column1 {
	float: left;
	width: 150px;
}

#child-story-quick-stats #column2 {
	float: left;
	margin-left: 15px;
}

#child-story-image {
	width: 190px;
	height: 250px;
	float: left;
}

#sponsorChildTitleLink-FirstPerson {
	font-size: 18px;
	margin-bottom: 8px;
}

a#largeSponsorLink {
	text-align: center;
	padding-top: 7px;
	width: 170px;
	height: 33px;
	background:
		url('/commerce/sites/all/themes/wv/images/child-story-sponsor-button.gif')
		0px 0px no-repeat;
	display: block;
	vertical-align: middle;
	text-decoration: none;
	font-size: 12px;
	color: white;
	cursor: pointer;
	font-weight: bold;
	text-align: center;
	margin-top: 8px;
}

/*-------------------------------------
  End Read My Story Lightbox Styles
-------------------------------------*/
.recommendations-widget #recItem-mostNeed {
	padding: 10px 20px;
	border-left: 1px solid #DCDDDE;
	border-right: 1px solid #DCDDDE;
}

.recommendations-widget #recItem-mostNeed .recItemMostNeedImage {
	float:left;
	padding:30px;
	width: 70px;
}
.recommendations-widget #recItem-mostNeed  .recItemTitle {
	color: black;
	font-size: 16px;
	float:left;
	height: 25px;
	padding-top: 5px;
}
.recommendations-widget #recItem-mostNeed  .recItemPrice {
	float:right;
	margin: 2px 8px 0 0;
}
.recommendations-widget #recItem-mostNeed  .recItemPrice .form-type-textfield {
	float: right;
}
.recommendations-widget #recItem-mostNeed input[type="text"] {
	text-align: right;
	line-height: 22px;
	height: 22px;
    width: 50px;
}
.recommendations-widget #recItem-mostNeed .most-need {
	float:right;
	margin-right: 30px;
	margin-top: 2px;
}

/*--------------------------------------
  Recommendations - Where Most Needed
 -------------------------------------*/

@charset "UTF-8";
/* --------------------------------------------------------------

   typography.css
   * Sets up some sensible default typography.

-------------------------------------------------------------- */

/* Default font settings.
   The font-size percentage is of 16px. (0.75 * 16px = 12px) */
html { font-size:100.01%; }
body {
  font-size: 75%;
  color: #222;
  background: #fff;
  font-family: "Helvetica Neue", Arial, Helvetica, sans-serif;
}


/* Headings
-------------------------------------------------------------- */

h1,h2,h3,h4,h5,h6 { font-weight: normal; color: #111; }

h1 { font-size: 3em; line-height: 1; margin-bottom: 0.5em; }
h2 { font-size: 2em; margin-bottom: 0.75em; }
h3 { font-size: 1.5em; line-height: 1; margin-bottom: 1em; }
h4 { font-size: 1.2em; line-height: 1.25; margin-bottom: 1.25em; }
h5 { font-size: 1em; font-weight: bold; margin-bottom: 1.5em; }
h6 { font-size: 1em; font-weight: bold; }

h1 img, h2 img, h3 img,
h4 img, h5 img, h6 img {
  margin: 0;
}


/* Text elements
-------------------------------------------------------------- */

p           { margin: 0 0 1.5em; }
/*
  These can be used to pull an image at the start of a paragraph, so
  that the text flows around it (usage: <p><img class="left">Text</p>)
 */
.left       { float: left !important; }
p .left     { margin: 1.5em 1.5em 1.5em 0; padding: 0; }
.right      { float: right !important; }
p .right    { margin: 1.5em 0 1.5em 1.5em; padding: 0; }

a:focus,
a:hover     { color: #09f; }
a           { color: #06c; text-decoration: underline; }

blockquote  { margin: 1.5em; color: #666; font-style: italic; }
strong,dfn  { font-weight: bold; }
em,dfn      { font-style: italic; }
sup, sub    { line-height: 0; }

abbr,
acronym     { border-bottom: 1px dotted #666; }
address     { margin: 0 0 1.5em; font-style: italic; }
del         { color:#666; }

pre         { margin: 1.5em 0; white-space: pre; }
pre,code,tt { font: 1em 'andale mono', 'lucida console', monospace; line-height: 1.5; }


/* Lists
-------------------------------------------------------------- */

li ul,
li ol  { margin: 0; }
ul, ol { margin: 0 1.5em 1.5em 0; padding-left: 1.5em; }

ul     { list-style-type: disc; }
ol     { list-style-type: decimal; }

dl     { margin: 0 0 1.5em 0; }
dl dt  { font-weight: bold; }
dd     { margin-left: 1.5em;}


/* Tables
-------------------------------------------------------------- */

/*
  Because of the need for padding on TH and TD, the vertical rhythm
  on table cells has to be 27px, instead of the standard 18px or 36px
  of other elements.
 */
table         { margin-bottom: 1.4em; width:100%; }
th            { font-weight: bold; }
thead th      { background: #c3d9ff; }
th,td,caption { padding: 4px 10px 4px 5px; }
/*
  You can zebra-stripe your tables in outdated browsers by adding
  the class "even" to every other table row.
 */
tbody tr:nth-child(even) td,
tbody tr.even td  {
  background: #e5ecf9;
}
tfoot       { font-style: italic; }
caption     { background: #eee; }


/* Misc classes
-------------------------------------------------------------- */

.small     { font-size: .8em; margin-bottom: 1.875em; line-height: 1.875em; }
.large     { font-size: 1.2em; line-height: 2.5em; margin-bottom: 1.25em; }
.hide      { display: none; }

.quiet     { color: #666; }
.loud      { color: #000; }
.highlight { background:#ff0; }
.added     { background:#060; color: #fff; }
.removed   { background:#900; color: #fff; }

.first     { margin-left:0; padding-left:0; }
.last      { margin-right:0; padding-right:0; }
.top       { margin-top:0; padding-top:0; }
.bottom    { margin-bottom:0; padding-bottom:0; }

@charset "UTF-8";
/* --------------------------------------------------------------

   typography.css
   * Sets up some sensible default typography.

-------------------------------------------------------------- */

/* Default font settings.
   The font-size percentage is of 16px. (0.75 * 16px = 12px) */
html { font-size:100.01%; }
body {
  font-size: 75%;
  color: #222;
  background: #fff;
  font-family: "Helvetica Neue", Arial, Helvetica, sans-serif;
}


/* Headings
-------------------------------------------------------------- */

h1,h2,h3,h4,h5,h6 { font-weight: normal; color: #111; }

h1 { font-size: 3em; line-height: 1; margin-bottom: 0.5em; }
h2 { font-size: 2em; margin-bottom: 0.75em; }
h3 { font-size: 1.5em; line-height: 1; margin-bottom: 1em; }
h4 { font-size: 1.2em; line-height: 1.25; margin-bottom: 1.25em; }
h5 { font-size: 1em; font-weight: bold; margin-bottom: 1.5em; }
h6 { font-size: 1em; font-weight: bold; }

h1 img, h2 img, h3 img,
h4 img, h5 img, h6 img {
  margin: 0;
}


/* Text elements
-------------------------------------------------------------- */

p           { margin: 0 0 1.5em; }
/*
  These can be used to pull an image at the start of a paragraph, so
  that the text flows around it (usage: <p><img class="left">Text</p>)
 */
.left       { float: left !important; }
p .left     { margin: 1.5em 1.5em 1.5em 0; padding: 0; }
.right      { float: right !important; }
p .right    { margin: 1.5em 0 1.5em 1.5em; padding: 0; }

a:focus,
a:hover     { color: #09f; }
a           { color: #06c; text-decoration: underline; }

blockquote  { margin: 1.5em; color: #666; font-style: italic; }
strong,dfn  { font-weight: bold; }
em,dfn      { font-style: italic; }
sup, sub    { line-height: 0; }

abbr,
acronym     { border-bottom: 1px dotted #666; }
address     { margin: 0 0 1.5em; font-style: italic; }
del         { color:#666; }

pre         { margin: 1.5em 0; white-space: pre; }
pre,code,tt { font: 1em 'andale mono', 'lucida console', monospace; line-height: 1.5; }


/* Lists
-------------------------------------------------------------- */

li ul,
li ol  { margin: 0; }
ul, ol { margin: 0 1.5em 1.5em 0; padding-left: 1.5em; }

ul     { list-style-type: disc; }
ol     { list-style-type: decimal; }

dl     { margin: 0 0 1.5em 0; }
dl dt  { font-weight: bold; }
dd     { margin-left: 1.5em;}


/* Tables
-------------------------------------------------------------- */

/*
  Because of the need for padding on TH and TD, the vertical rhythm
  on table cells has to be 27px, instead of the standard 18px or 36px
  of other elements.
 */
table         { margin-bottom: 1.4em; width:100%; }
th            { font-weight: bold; }
thead th      { background: #c3d9ff; }
th,td,caption { padding: 4px 10px 4px 5px; }
/*
  You can zebra-stripe your tables in outdated browsers by adding
  the class "even" to every other table row.
 */
tbody tr:nth-child(even) td,
tbody tr.even td  {
  background: #e5ecf9;
}
tfoot       { font-style: italic; }
caption     { background: #eee; }


/* Misc classes
-------------------------------------------------------------- */

.small     { font-size: .8em; margin-bottom: 1.875em; line-height: 1.875em; }
.large     { font-size: 1.2em; line-height: 2.5em; margin-bottom: 1.25em; }
.hide      { display: none; }

.quiet     { color: #666; }
.loud      { color: #000; }
.highlight { background:#ff0; }
.added     { background:#060; color: #fff; }
.removed   { background:#900; color: #fff; }

.first     { margin-left:0; padding-left:0; }
.last      { margin-right:0; padding-right:0; }
.top       { margin-top:0; padding-top:0; }
.bottom    { margin-bottom:0; padding-bottom:0; }

@charset "UTF-8";
body,div,dl,dt,dd,ul,ol,li,h1,h2,h3,h4,h5,h6,pre,form,fieldset,input,textarea,p,blockquote,th,td {
	margin:0;
	padding:0;
}
table {
	border-collapse:collapse;
	border-spacing:0;
}
fieldset,img {
	border:0;
}
address,caption,cite,code,dfn,em,th,var {
	font-style:normal;
	font-weight:normal;
}
ol,ul {
	list-style:none;
}
caption,th {
	text-align:left;
}
h1,h2,h3,h4,h5,h6 {
	font-size:100%;
	font-weight:normal;
}
q:before,q:after {
	content:'';
}
abbr,acronym { border:0;
}

@charset "UTF-8";
body {
	background-color: #ccc;
	background-image: url("/OA_MEDIA/xxwv2/istore/bg-gradient.gif");
	background-repeat: repeat-x;
	color: #000;
	font: 100%/1.4 Trebuchet MS;
	margin: 0;
	padding: 0;
}
body.sco-body{
	background-color: #ccc;
}
/* ~~ Element/tag selectors ~~ */
ul, ol, dl { /* Due to variations between browsers, it's best practices to zero padding and margin on lists. For consistency, you can either specify the amounts you want here, or on the list items (LI, DT, DD) they contain. Remember that what you do here will cascade to the .nav list unless you write a more specific selector. */
	padding: 0;
	margin: 0;
}
h1, h2, h3, h4, h5, h6, p {
	margin-top: 0;	 /* removing the top margin gets around an issue where margins can escape from their containing div. The remaining bottom margin will hold it away from any elements that follow. */
	padding-right: 15px;
	padding-left: 15px; /* adding the padding to the sides of the elements within the divs, instead of the divs themselves, gets rid of any box model math. A nested div with side padding can also be used as an alternate method. */
}
a img { /* this selector removes the default blue border displayed in some browsers around an image when it is surrounded by a link */
	border: none;
}
/* ~~ Styling for your site's links must remain in this order - including the group of selectors that create the hover effect. ~~ */
a {
	text-decoration: none; /* unless you style your links to look extremely unique, it's best to provide underlines for quick visual identification */
}
a:visited, a:link {
	color: #006699;
}
a:hover, a:active, a:focus { /* this group of selectors will give a keyboard navigator the same hover experience as the person using a mouse. */
	text-decoration: underline;
}
/* ~~ this container surrounds all other divs giving them their percentage-based width ~~ */
.container.sco {
	width: 960px;
	background: #FFF;
	background-color: #FFF !important;
	margin: auto; /* the auto value on the sides, coupled with the width, centers the layout. It is not needed if you set the .container's width to 100%. */
}
/* ~~ the header is not given a width. It will extend the full width of your layout. It contains an image placeholder that should be replaced with your own linked logo ~~ */
.header {
	background: #FF6600;
}
/* ~~ Hides elements like the Skip to main content link */
.element-invisible{
	display:none;
}
/* ~~ These are the columns for the layout. ~~

1) Padding is only placed on the top and/or bottom of the divs. The elements within these divs have padding on their sides. This saves you from any "box model math". Keep in mind, if you add any side padding or border to the div itself, it will be added to the width you define to create the *total* width. You may also choose to remove the padding on the element in the div and place a second div within it with no width and the padding necessary for your design.

2) No margin has been given to the columns since they are all floated. If you must add margin, avoid placing it on the side you're floating toward (for example: a right margin on a div set to float right). Many times, padding can be used instead. For divs where this rule must be broken, you should add a "display:inline" declaration to the div's rule to tame a bug where some versions of Internet Explorer double the margin.

3) Since classes can be used multiple times in a document (and an element can also have multiple classes applied), the columns have been assigned class names instead of IDs. For example, two sidebar divs could be stacked if necessary. These can very easily be changed to IDs if that's your preference, as long as you'll only be using them once per document.

4) If you prefer your nav on the left instead of the right, simply float these columns the opposite direction (all left instead of all right) and they'll render in reverse order. There's no need to move the divs around in the HTML source.

*/
#main-wrapper-sco .page-checkoutpage .panel-2col .panel-col-first {
  width: 490px;
}
* html .page-checkoutpage .panel-2col .panel-col-first {
  width: 489px;
}
.page-checkoutpage .panel-2col .panel-col-first .inside {
	margin:0px;
}
.page-checkoutpage .panel-2col .panel-col-last {
  width: 470px;
}
* html .page-checkoutpage .panel-2col .panel-col-last {
  width: 469px;
}
.page-checkoutpage .panel-2col .panel-col-last .inside {
	margin:0px;
}
.page-checkout .panel-2col .panel-col-first {
  width: 490px;
}
* html .page-checkout .panel-2col .panel-col-first {
  width: 489px;
}
.page-checkout .panel-2col .panel-col-first .inside {
	margin:0px;
}
.page-checkout .panel-2col .panel-col-last {
  width: 470px;
}
* html .page-checkout .panel-2col .panel-col-last {
  width: 469px;
}
.page-checkout .panel-2col .panel-col-last .inside {
	margin:0px;
}
#main-wrapper-sco{
	min-height: 200px;
}
.page-level-error {
	padding:20px
}
.page-level-error .dcs-hours{
	color: 	#666567;
}
/* ~~ This grouped selector gives the lists in the .content area space ~~ */
.content ul, .content ol {
	padding: 0 15px 15px 40px; /* this padding mirrors the right padding in the headings and paragraph rule above. Padding was placed on the bottom for space between other elements on the lists and on the left to create the indention. These may be adjusted as you wish. */
}
/* ~~ The footer ~~ */
.footer {
	background: #CCCCCC;
	clear: both; /* this clear property forces the .container to understand where the columns end and contain them */
	padding: 10px 0;
	position: relative;/* this gives IE6 hasLayout to properly clear */
}
/* ~~ miscellaneous float/clear classes ~~ */
#main-wrapper-sco .fltrt {  /* this class can be used to float an element right in your page. The floated element must precede the element it should be next to on the page. */
	float: right;
	margin-left: 8px;
}
#main-wrapper-sco .fltlft { /* this class can be used to float an element left in your page. The floated element must precede the element it should be next to on the page. */
	float: left;
	margin-right: 8px;
}
-->
.sco #universalheader #header {
	filter: none;
}
#main-wrapper-sco input.inactive, #main-wrapper-sco textarea.inactive{
	color: #666567;
}
#main-wrapper-sco select {
    border: 1px solid #999999;
	font-size: 12px;
}
#main-wrapper-sco input,#main-wrapper-sco select {
	line-height: normal;
	margin:0px;
	padding:1px;
}

#main-wrapper-sco .content .form-item, #main-wrapper-sco .content .form-actions{
	margin:0px;
}
#main-wrapper-sco h1, #main-wrapper-sco h2{
	background-image: url('/commerce/sites/all/themes/wv/images/header-blue-gradiant.png');
	background-position: top left;
	background-repeat: repeat-x;
	color:#fff;
	font-size: 16px;
	line-height: normal;
	margin: 0px;
	padding-bottom: 5px;
	padding-top: 4px;
}
#main-wrapper-sco form {
	margin:0px;
}
#main-wrapper-sco .recommendations{width:462px;}
#main-wrapper-sco .recommendations h2 {background-color:#686666;background-image:none;}
#main-wrapper-sco h3{
	background: #686666;
	color: #fff;
	font-size: 15px;
	line-height: normal;
	margin: 0px;
	padding-bottom: 5px;
	padding-top: 4px;
}
#main-wrapper-sco h3.header-only{
	background: #a4a3a3;
}
#main-wrapper-sco h4{
	font-size: 18px;
}

/* generic styling classes */
#main-wrapper-sco .left-border{
	border-left: 1px solid #DCDDDE;
}
#main-wrapper-sco .height-12{
	height: 12px;
}
#main-wrapper-sco .p-right-5{
	padding-right: 5px;
}
#main-wrapper-sco .p-right-10{
	padding-right: 10px;
}
#main-wrapper-sco .p-left-10{
	padding-left: 10px;
}
#main-wrapper-sco .p-top-10{
	padding-top: 10px;
}
#main-wrapper-sco .m-top-3{
	margin-top: 3px;
}
#main-wrapper-sco .m-top-5{
	margin-top: 5px;
}
#main-wrapper-sco .m-left-5{
	margin-left: 5px;
}
#main-wrapper-sco .m-left-8{
	margin-left: 8px;
}
#main-wrapper-sco .m-left-10{
	margin-left: 10px;
}
#main-wrapper-sco .m-left-15{
	margin-left: 15px;
}
#main-wrapper-sco .m-left-30{
	margin-left: 30px;
}
#main-wrapper-sco .m-top-10{
	margin-top: 10px;
}
#main-wrapper-sco .m-top-15{
	margin-top: 15px;
}
#main-wrapper-sco .m-bottom-10, .m-bottom-10{
	margin-bottom: 10px;
}
#main-wrapper-sco .m-bottom-20{
	margin-bottom: 20px;
}
#main-wrapper-sco .m-right-5{
	margin-right: 5px;
}
#main-wrapper-sco .m-right-10, .m-right-10{
	margin-right: 10px;
}
#main-wrapper-sco .m-right-20{
	margin-right: 20px;
}
#main-wrapper-sco .m-right-30{
	margin-right: 30px;
}
#main-wrapper-sco .thin-right-border{
	border-right: 1px solid #DCDDDE;
}
#main-wrapper-sco .thin-left-border{
	border-left: 1px solid #DCDDDE;
}
#main-wrapper-sco .thin-bottom-light-border{
	border-bottom: 1px solid #B3B3B3;
	padding-bottom: 0px;
}

#main-wrapper-sco .orangeButton.bin, #main-wrapper-sco .grayButton.bin {
    border-radius: 5px 5px 5px 5px;
    font-size: 16px;
    padding: 1px 10px;
}
#main-wrapper-sco .orangeButton, #main-wrapper-sco .orangeButton2, #main-wrapper-sco .grayButton, #main-wrapper-sco .grayButton2, .orangeButton, .orangeButton2, .grayButton, .grayButton2 {
    border: medium none;
    color: #fff;
    cursor: pointer;
    font-family: Trebuchet MS !important;
}
#main-wrapper-sco .orangeButton,#main-wrapper-sco .orangeButton2, .orangeButton, .orangeButton2 {
    background: none repeat scroll 0 0 #FF6600;
}
#main-wrapper-sco .grayButton,#main-wrapper-sco .grayButton2 {
    background: none repeat scroll 0 0 #006699;
}
#thank-you .upsell-bin a.orangeButton, #thank-you .upsell-bin a.orangeButton:visited,#thank-you .upsell-bin a.orangeButton:link, a.orangeButton, a.orangeButton2, a.grayButton, a.grayButton2 {
	color:#fff;
}
#thank-you .upsell-bin a.orangeButton, #thank-you .upsell-bin a.orangeButton:visited,#thank-you .upsell-bin a.orangeButton:link {
	font-weight: normal;
}
#thank-you .upsell-bin a.orangeButton, #thank-you .upsell-bin a.orangeButton:visited,#thank-you .upsell-bin a.orangeButton:link, a.orangeButton:hover, a.orangeButton:active, a.orangeButton:focus, a.grayButton:hover, a.grayButton:active, a.grayButton:focus {
	text-decoration:none;
}
.orangeButton2, .grayButton2 {
    border-radius: 10px 10px 10px 10px;
    font-size: 16px;
    margin-top: 10px;
    padding: 2px 20px;
}
.orangeButton, .grayButton {
    border-radius: 10px 10px 10px 10px;
    font-size: 16px;
    padding: 4px 15px;
}
.orangeButton.bin, .grayButton.bin { border-radius: 5px 5px 5px 5px; font-size: 16px; padding: 1px 10px; -moz-border-radius: 5px; -webkit-border-radius: 5px; }
#main-wrapper-sco  .orangeButton2:hover, #main-wrapper-sco  .orangeButton:hover, #main-wrapper-sco .grayButton2:hover, #main-wrapper-sco .grayButton:hover, .orangeButton2:hover, .orangeButton:hover, .grayButton2:hover, .grayButton:hover { background: #ff9046; }

.orangeButton.disabled, .orangeButton.disabled:hover, .grayButton.disabled, .grayButton.disabled:hover{
	background: #DCDDDE;
	color: #fff;
	cursor: text;
}

.basket-items, .checkout-options, .you-may-also-like, .need-help, .card-options, .trusted-site, .mailing-information, .payment-information, .review-and-submit{
	border: 1px solid #DCDDDE;
	margin: 10px;
}
.checkout-options, .you-may-also-like, .need-help, .trusted-site, .card-options, .mailing-information, .payment-information, .review-and-submit{
	margin-left: 0px;
	margin-bottom: 0px;
}
.card-options, .mailing-information, .payment-information, .review-and-submit{
	margin-top: 0px;
}
.payment-information-entry{
	margin-top: 10px;
	margin-bottom: 10px;
}

.also-like-item {
	float:left;
	width:110px;
}
.checkout-options{
	font-size: 13px;
	margin-bottom: 0px;
}
.checkout-options-inner{
	margin-bottom:15px;
	margin-top:15px;
}
.checkout-options h5, .checkout-options h6{
	font-size: 18px;
}
.checkout-options h5{
	color: #003f5f;
	margin-bottom: 12px;
}
.checkout-options h5, .checkout-options p{
	padding-left:0px;
}
.checkout-options input{
	margin-bottom:5px;
}
.checkout-options input.password, .checkout-options input.fake-password, .checkout-options input[type="password"], .checkout-options input[type="text"], .checkout-options input[type="email"]{
	width: 235px;
}
.checkout-options .column1, .checkout-options .column2 {
	float:left;
	padding: 0px;
}
.checkout-options .column1, .checkout-options .column2{
	padding-left:20px;
}
.checkout-options .column1{
	width: 35%;
}
.checkout-options .column2{
	width: 55%;
}
.checkout-options .column1 p{
	margin-bottom: 6px;
}

.checkout-options a{
	font-size: 11px;
}
.checkout-options #guest_checkout.disabled h5, .checkout-options #guest_checkout.disabled p{
	color: #828181;
}
.sprite-icon-basket{ float:right; }

.also-like-item h5 {
	padding:0px;
}
.item img {
	border: 1px solid #DCDDDE;
}
.donation-total, .need-help {
	background: #eff0f1;
}
.need-help .column1, .need-help .column2 {
	color: #666;
	float:left;
	padding-top: 5px;
}
.need-help .column1 {
	color: #000000;
	font-size: 15px;
	padding-left: 5px;
	width: 59%;
}
.need-help .column1 strong{
	font-size: 17px;
}
.need-help .column2 {
	color:#666567;
	font-size:13px;
	padding-right: 5px;
	width: 38%;
}
.need-help strong {
	color: #000000;
}
.popups-container .modal-header{
	border:none;
}
.item .price input{
	text-align: right;
	width: 50px;
}
.item .qty input{
	text-align: right;
	width: 25px;
}
.item {
	border-bottom: 3px solid #666;
	clear: both;
	margin: 10px 10px 20px 10px;
	padding-bottom: 10px;
}
.item .item-image, .item .item-information {
	float:left;
}
.item .item-image{
	width:90px;
}
.item .item-information {
	width:352px;
}
.item .item-description {
	float: left;
	margin-left: 10px;
	width: 230px;
}
.item .item-description h4, .item .item-description h4 a {
	color: #111111;
	margin:0px;
	padding:0px;
}
.item .item-description .sponsorship {
	color: #666567;
	font-size: 13px;
	margin-top: -2px;
}
.item .item-description .commitment-frequency {
	font-size: 13px;
	margin-top: 12px;
}
.item .line-item-summary {
	float: right;
	font-size: 14px;
	min-height: 80px;
	text-align: right;
	width: 110px;
}
.item .line-item-summary div.price, .item .line-item-summary div.qty, .item .line-item-summary div.item-total  {
	clear: both;
	margin-bottom: 5px;
}
.item .item-actions {
	clear:both;
	color: #DCDDDE;
	font-size: 11px;
	text-align:right;
}
.item .item-gift-card{
	border-top: 1px solid #DCDDDE;
	clear:both;
	font-size: 12px;
	height: 26px;
	margin-top: 6px;
}
.item .item-gift-card div{
	margin-right: 5px;
	margin-top: 6px;
}
.item .item-gift-card .note, .send-card-address-edit .note, #billing-address .note, .create-account .note, .send-card-to .note, .card-item .note{
	font-size:11px;
}
.send-card-to .note {
	margin-left: 34px;
	margin-top: 6px;
}
.item .item-gift-card .sprite-icon-gift-card{
	margin-top: 0px;
}

.line-item-summary .form-item{float:right;}
.line-item-summary .form-item input{margin-left:5px;}
#main-wrapper-sco .item-actions input{border:none;background:none;font-size: 11px;color: #006699;cursor:pointer;vertical-align: inherit;}
#main-wrapper-sco .item-actions input:hover{text-decoration:underline;}
.item-actions .ajax-progress-throbber.ajax-progress{margin-left:-70px;margin-top:15px;}
.item-actions .ajax-progress-throbber.ajax-progress .message{position:absolute;top:0px;margin-top:3px;text-align:left;width:70px;}

.clear-both {
	clear:both;
}
.float-left{
	float:left;
}
.float-right{
	float:right;
}
a.action {
	color: #006699;
	text-decoration: none;
}
a.action:hover, a.action:active, a.action:focus {
	text-decoration: underline;
}
.donation-total, .continue-browsing {
	clear: both;
	margin: 10px 10px 20px 10px;
	padding: 5px;
}

.donation-total h5{
	font-size: 19px;
	padding-bottom: 10px;
	padding-top: 10px;
}
.donation-total h6{
	font-size: 13px;
}
.donation-total h5, .donation-total h6 {
	float: left;
	height:22px;
	margin: 0px;
	padding:0px;
}
.donation-total h5.label, .donation-total h6.label {
	background-color: transparent;
	color: #000;
	margin-top: 5px;
	width:57%;
}
.donation-total h5.amount, .donation-total h6.amount {
	margin-top: 5px;
	text-align: right;
	width:42%;
}

div.ajax-progress-throbber.ajax-progress {float: none; position: absolute; margin-left: 5px; color: black; width: 65px; font-size: 10px;}
.ajax-progress .message{float:none;}

.sprite-icons-cart {
    background-image: url('/commerce/sites/all/themes/wv/images/sprite-icons-cart.png');
	background-repeat: no-repeat;
	background-position: top left;
}
.sprite-icons-cart:hover {
    background-image: url('/commerce/sites/all/themes/wv/images/sprite-icons-cart-hover.png');
	background-repeat: no-repeat;
	background-position: top left;
}

.sprite-arrow-double-blue-left, .sprite-arrow-double-blue-left:hover{ background-position: 0 0; width: 19px; height: 51px; }
.sprite-arrow-double-blue-right, .sprite-arrow-double-blue-right:hover{ background-position: 0 -101px; width: 19px; height: 50px; }
.sprite-button-cta-left-rollover, .sprite-button-cta-left-rollover:hover{ background-position: 0 -201px; width: 3px; height: 27px; }
.sprite-button-cta-left, .sprite-button-cta-left:hover{ background-position: 0 -278px; width: 3px; height: 27px; }
.sprite-button-cta-right-rollover, .sprite-button-cta-right-rollover:hover{ background-position: 0 -355px; width: 3px; height: 27px; }
.sprite-button-cta-right, .sprite-button-cta-right:hover{ background-position: 0 -432px; width: 3px; height: 27px; }
.sprite-icon-basket, .sprite-icon-basket:hover{ background-position: 0 -509px; width: 20px; height: 19px; }
.sprite-icon-gift-card, .sprite-icon-gift-card:hover{ background-position: 0 -578px; width: 22px; height: 26px; }
.sprite-icon-help, .sprite-icon-help:hover{ background-position: 0 -654px; width: 21px; height: 20px; }
.sprite-icon-lock, .sprite-icon-lock:hover{ background-position: 0 -724px; width: 13px; height: 19px; }
.sprite-icon-play-video, .sprite-icon-play-video:hover{ background-position: 0 -793px; width: 19px; height: 18px; }
.sprite-icon-telephone, .sprite-icon-telephone:hover{ background-position: 0 -861px; width: 31px; height: 33px; }


.sprite-icons-secure  {
    background-image: url('/commerce/sites/all/themes/wv/images/sprite-icons-secure.png');
	background-repeat: no-repeat;
	background-position: top left;
	display:block;
}
.sprite-logo-bbb{ background-position: 0 0; width: 34px; height: 55px; }
.sprite-logo-charity-navigator{ background-position: 0 -60px; width: 146px; height: 37px; }
.sprite-logo-ecfa{ background-position: 0 -102px; width: 34px; height: 33px; }
.sprite-logo-thawte{ background-position: 0 -140px; width: 110px; height: 27px; }

.sprite-icons-payment.amex, .sprite-icons-payment.amex.no-hover:hover{ background-position: 0 -112px; width: 57px; height: 36px; }
.sprite-icons-payment.amex.gray{ background-position: 0 0; width: 57px; height: 36px; }
.sprite-icons-payment.amex:hover, .sprite-icons-payment.amex.selected{ background-position: 0 -56px; width: 57px; height: 36px; }

.sprite-icons-payment.discover, .sprite-icons-payment.discover.no-hover:hover{ background-position: 0 -354px; width: 56px; height: 36px; }
.sprite-icons-payment.discover.gray{ background-position: 0 -242px; width: 56px; height: 36px; }
.sprite-icons-payment.discover:hover, .sprite-icons-payment.discover.selected{ background-position: 0 -298px; width: 56px; height: 36px; }

.sprite-icons-payment.mc, .sprite-icons-payment.mc.no-hover:hover{ background-position: 0 -522px; width: 55px; height: 36px; }
.sprite-icons-payment.mc.gray{ background-position: 0 -410px; width: 55px; height: 36px; }
.sprite-icons-payment.mc:hover, .sprite-icons-payment.mc.selected{ background-position: 0 -466px; width: 55px; height: 36px; }

.sprite-icons-payment.paypal, .sprite-icons-payment.paypal.no-hover:hover{ background-position: 0 -690px; width: 57px; height: 36px; }
.sprite-icons-payment.paypal.gray{ background-position: 0 -578px; width: 57px; height: 36px; }
.sprite-icons-payment.paypal:hover, .sprite-icons-payment.paypal.selected{ background-position: 0 -634px; width: 57px; height: 36px; }

.sprite-icons-payment.visa, .sprite-icons-payment.visa.no-hover:hover{ background-position: 0 -895px; width: 55px; height: 36px; }
.sprite-icons-payment.visa.gray{ background-position: 0 -783px; width: 55px; height: 36px; }
.sprite-icons-payment.visa:hover, .sprite-icons-payment.visa.selected{ background-position: 0 -839px; width: 55px; height: 36px; }


.sprite-payment-checked-checkbox{ background-position: 0 -168px; width: 18px; height: 17px; }
.sprite-payment-checkmark{ background-position: 0 -205px; width: 16px; height: 17px; }
.sprite-payment-no-checkmark{ background: none; width: 16px; height: 17px; }
.sprite-payment-unchecked-checkbox{ background-position: 0 -746px; width: 18px; height: 17px; }

.sprite-icons-payment {
    background-image: url('/commerce/sites/all/themes/wv/images/sprite-icons-payment.png');
	background-repeat: no-repeat;
	display:block;
}


.secure-checkout {
	border: 1px solid #DCDDDE;
	padding-bottom: 10px;
	padding-top: 5px;
	margin-right: 10px;
	margin-top: 10px;
}
.secure-checkout div{
	margin-left: 10px;
	padding-left:10px;
}
.sign-in-submit {
	margin-bottom: 10px;
	margin-top: 30px;
}
.sign-in-submit input{
	margin-right: 10px;
}
#main-wrapper-sco .content .form-item.form-item-email{
	margin-bottom: 8px;
}
.mailing-information label, .mailing-information .my-info .label, .send-card-address-edit label, .send-card-to-myself .label, .payment-information label, .payment-information .my-info .label, .card-info .label, .review-and-submit label{
	background:transparent;
	color: #000;
	clear:both;
	display:block;
	float: left;
	padding:0px;
}
.mailing-information label, .mailing-information .my-info .label, .send-card-address-edit label, .send-card-to-myself .label, .payment-information label, .payment-information .my-info .label, .card-info .label{
	width: 100px;
}
.review-and-submit label{
	width: 200px;
}

.mailing-information label, .review-and-submit label{
	padding-left: 15px;
}

.payment-information label.option{
	padding-left: 5px;
}
.mailing-information div.mailing-input, .send-card-address-edit div.send-card-input, .mailing-information .my-info .address, .payment-information div.payment-input, .payment-information .my-info .address{
	float:left;
}
.my-info .address, .card-item .send-to{
	float:left;
	overflow:hidden;
	text-overflow:ellipsis;
	white-space:nowrap;
	width: 335px;
}
.card-options .card-item .send-to {
	width: 385px;
}
.payment-information .my-info .address{
	width: 263px;
}
.send-card-to-myself.my-info .address{
	width: 295px;
}
.mailing-information input, .send-card-address-edit input, .payment-information input, .mailing-information select, .send-card-address-edit select, .payment-information select{
	width:320px;
}
.mailing-information input[type="checkbox"], .send-card-address-edit input[type="checkbox"], .payment-information input[type="checkbox"]{
	width:14px;
}
.mailing-information select.state, .mailing-information input {
	width:275px;
}
.payment-information select.expiration-month, .payment-information select.expiration-year{
	width: 60px;
}
.payment-information input.card-number{
	width:125px;
}
.mailing-information input.first-name,  .mailing-information input.last-name {
	 width: 133px;
}
.mailing-information input.zip, .send-card-address-edit input.zip, .payment-information input.zip{
	width:71px;
}
.mailing-information .form-item-use-billing label{
	clear: none;
	padding-left: 8px;
	width: 250px;
}

.mailing-information input.use-billing {
	width:15px;
}
.mailing-information div.mailing-input-no-label{
	clear: both;
	margin-left: 115px;
}
.mailing-information p {
	padding: 5px 0 15px 15px;
}
.mailing-information, .payment-information, .review-and-submit {
	font-size: 13px;
}
.mailing-information label, .send-card-address-edit label, .mailing-information div.mailing-input, .send-card-address-edit div.send-card-input, .payment-information div.payment-input{
	margin-bottom: 7px;
}
.mailing-information .my-info, .payment-information .form-item-paperless {
	margin: 10px;
}
.content .form-item.form-item-first-name, .content .form-item.form-item-last-name{float:left;}
.content .form-item.form-item-last-name{margin-left:6px;}

.content .panel-2col .panel-separator{
	margin: 0px;
}
.review-and-submit .donation-total{
	margin: 0px;
}
div.preauthenticated p{
	margin: 0px;
}
div.preauthenticated{
	margin: 20px 0 20px 15px;
}
.checkout-options div.preauthenticated a{
	font-size: 13px;
}
/* emptyp basket */
.empty-basket{
	margin-bottom: 50px;
	margin-top: 50px;
	min-height: 750px;
}

.empty-basket p{
	margin-bottom: 40px;
	text-align: center;
}

.empty-basket div.center{
	margin: 0 auto;
	width: 180px;
}

/* errors displayed to user */
.fieldError, .panelError, .forgotPWEmailError, .recommendations-widget #recItem-mostNeed  .amount-error {
	color: #bb0707;
	font-size: 13px;
	font-weight: bold;
}
/* address form for mailing address, payment address and send a card address */
.mailing-information .fieldError, .send-card-address-edit .fieldError, .payment-information .fieldError{
	clear:both;
}
.mailing-information .fieldError{
	padding-left:15px;
}

.send-card-to-addresses {
	width: 210px;
}

.panelError{
	font-size:12px;
}
h1 div.edit {
	padding-top: 2px;
}
h3 a, h3 a:link, h3 a:visited, h1 div.edit a,  h1 div.edit a:link,  h1 div.edit a:visited {
	color: #fff;
}
h3 .edit, h1 .edit{
	font-size:11px;
	margin-right: 5px;
}
.card-options {
	font-size: 13px;
}
.remaining-characters-message{
	color: #666567;
	float:right;
}
/* Edit, Edit & Personalize and Cancel button */
.card-options input.personalize, .card-options input.send-card-edit-cancel, .mailing-information input.send-card-edit-cancel, #paymentForm .payment-cancel, #billing-address input.payment-address-edit, #payment input.payment-method-edit {
	background:none;
	border:none;
	color: #006699;
	cursor:pointer;
	font-size: 11px;
	text-align: right;
}
.card-options input.personalize:hover, .card-options input.send-card-edit-cancel:hover, .mailing-information input.send-card-edit-cancel:hover, #paymentForm .payment-cancel:hover, #billing-address input.payment-address-edit:hover, #payment input.payment-method-edit :hover{
	text-decoration:underline;
}
.card-options input.personalize {
	margin-left: 8px;
    width: 102px;
}
.card-options input.personalize.edit-mode {
	display:none;
}

.card-options input.send-card-edit-cancel, .mailing-information input.send-card-edit-cancel, #paymentForm .payment-cancel, #billing-address input.payment-address-edit, #payment input.payment-method-edit {
    text-align: right;
	width: 40px;
}
.mailing-information input.send-card-edit-cancel {
        text-align: left;
        width: 45px;
}
/* Credit card and payment information */

.card-options .sub-header, .cardForm .sub-header{
	float:left;
	margin-top:5px;
	margin-bottom:5px;
	width: 400px;
}
.card-options .send-card-options, .cardForm .send-card-options{
	border-top: 1px solid #DCDDDE;
	clear:both;
	padding: 10px 0;
}
.card-options .send-card-options .send-card-to, .cardForm .send-card-options .send-card-to{
	padding: 0 10px;
}
.card-options .gift-card-actions, .card-options .gift-card-actions, .cardForm .gift-card-actions, .cardForm .gift-card-actions{
	margin-top: 10px;
	text-align:right;
}
.card-options .send-card-address-edit, .card-options .send-card-message-edit, .cardForm .send-card-address-edit, .cardForm .send-card-message-edit{
	padding: 10px 15px;
}
.card-options .send-card-message-edit textarea, .cardForm .send-card-message-edit textarea{
	clear:both;
}

.card-options .send-card-options.unchecked, .cardForm .send-card-options.unchecked{
	margin-bottom: 0px;
}
.card-options .send-card-options h5{
	font-size: 16px;
}
.card-item {
	border-top: 1px solid #DCDDDE;
	padding-bottom: 10px;
	padding-top: 10px;
}
.card-item:first-child{
	border:none;
}

.card-item h4{
	padding-left:0px;
}
.card-item{
	font-size: 14px;
}
.card-item .send-to .recipient{
	color: #666567;
}
.card-options fieldset{
	background: #EFF0F1;
}

.card-options fieldset.send-card-message-edit{
	background-color: #fff;
	background-image: url('/commerce/sites/all/themes/wv/images/card-message-gradiant.png');
	background-repeat: repeat-x;
	border-top: 1px dotted #666666;
}

.card-options input[type=checkbox] {
    position: absolute;
    left: -9999px;
}

.card-options .send-card-options input[type=checkbox] + label{
	background-image: url('/commerce/sites/all/themes/wv/images/sprite-icons-payment.png');
	background-position: 0 -167px;
	background-repeat: no-repeat;
	background-color: #fff;
    display:inline-block;
	height: 21px;
	margin-bottom:8px;
	padding: 0 0 0 30px;
}

#billing-address .my-info {
	padding-top: 5px;
}

.card-options  .send-card-options.unchecked input[type=checkbox] + label{
    background-position: 0 -745px;
}
.card-options .send-card-options-continue {
	margin-bottom: 10px;
	margin-left:247px;
	margin-top: 10px;
}
.card-options .send-card-options-continue.show-button {
	display: block;
}
.card-options .send-card-options-continue.hide-button {
	display: none;
}
.card-options .send-card-options .send-card-edit-container {
	margin-top: 14px;
}
#paymentForm{
	padding-bottom: 10px;
	padding-top: 10px;
}
#paymentForm input.visa, #paymentForm input.mc, #paymentForm input.amex, #paymentForm input.discover, #paymentForm input.paypal{
	border:none;
}
.card-options textarea{
	resize:none;
}
.send-card-address-edit .note, #billing-address .note{
	margin-top: 6px;
}
select.select-billing-address, select.select-payment-method {

	width: 100%;
}
ul.cc-types{
	height: 45px;
	padding:5px 0 0 53px;
}
.cc-types li{
	display:inline;
	float:left;
	margin-right:10px;
}
.cc-types li a{
	display:block;
}
.card-information, .card-info{
	clear:both;
}
.card-information{
	margin-bottom:10px;
	padding-top: 10px;
}
.card-info{
	padding-top: 10px;
}

#payment {
	border-top: 1px solid #DCDDDE;
}
#payment, #billing-address {
	padding:15px;
}

.form-item-paperless label{
	clear:none;
	float:left;
	width:346px;
}
.payment-information input.paperless{
	float:left;
	margin-left:5px;
}
.payment-information .opted-in-paperless{
	margin: 0 15px;
}
/* review & submit section */
.review-input{
	margin-bottom:10px;
}
.review-and-submit .donation-total{
	padding-left: 25px;
	padding-right: 25px;
}

/* Modal/lightbox and tooltips */
#modalBackdrop {
	position: fixed!important;
	background-color: black!important;
	opacity: .55;
}

div.ctools-modal-content a.close img {
	display: none;
}
div.ctools-modal-content {
	background: white;
	border: solid 1px #DDD;
	color: black;
	font-size: 12px;
	padding: 0;
	margin: 2px;
	text-align: left;
	-webkit-border-radius: 0.5em;
	-moz-border-radius: 0.5em;
	-webkit-box-shadow: -1em 1em 1em rgba(0, 0, 0, 0.5);
	width: 600px;
}

div.ctools-modal-content {
	font-size: 12px;
}
div.ctools-modal-content .modal-header {
	background: white url('../../../modules/panels/images/bg-shade-light.png') repeat-x bottom left;
	color: #777;
	display: block;
	font-weight: 700;
	letter-spacing: normal;
	padding: 0.25em 1em;
	-moz-border-radius-topleft: 0.5em;
	-moz-border-radius-topright: 0.5em;
	-webkit-border-top-left-radius: 0.5em;
	-webkit-border-top-right-radius: 0.5em;
	border-top-left-radius: 0.5em;
	border-top-right-radius: 0.5em;
}

div.ctools-modal-content .modal-title {
	color: #555;
	font-size: 120%;
	font-weight: bold;
	letter-spacing: normal;
	overflow: hidden;
	text-shadow: white 1px 1px 1px;
	white-space: nowrap;
}
div.ctools-modal-content {
	text-align: left;
}

.ctools-modal-card-options-lightbox, .monthly-giving-lightbox, .ctools-modal-countries-mailing-lightbox, .ctools-modal-countries-card-lightbox, .ctools-modal-countries-payment-lightbox, .ctools-modal-paperless-lightbox, .ctools-modal-card-message-lightbox, .ctools-modal-card-signature-lightbox, .ctools-modal-basket-multiple-card-lightbox, .ctools-modal-multiple-card-lightbox, .ctools-modal-multiple-card-edit-lightbox{
	background-image: url('/commerce/sites/all/themes/wv/images/sprite-icons-cart.png');
	background-repeat: no-repeat;
	background-position: 0 -654px;
	height: 20px;
	float: left;
	width: 21px;
}
.ctools-modal-card-options-lightbox:hover, .monthly-giving-lightbox:hover, .ctools-modal-countries-mailing-lightbox:hover, .ctools-modal-countries-card-lightbox:hover, .ctools-modal-countries-payment-lightbox:hover, .ctools-modal-paperless-lightbox:hover, .ctools-modal-card-message-lightbox:hover, .ctools-modal-card-signature-lightbox:hover, .ctools-modal-basket-multiple-card-lightbox:hover, .ctools-modal-multiple-card-lightbox:hover, .ctools-modal-multiple-card-edit-lightbox:hover{
    background-image: url('/commerce/sites/all/themes/wv/images/sprite-icons-cart-hover.png');
	background-repeat: no-repeat;
	background-position: top left;
	background-position: 0 -654px;
	height: 20px;
	float: left;
	width: 21px;
}
#basket-items .ctools-modal-card-options-lightbox {
	background: none;
	width: 350px;
}
.ctools-modal-card-options-lightbox a, .ctools-modal-card-options-lightbox div, .ctools-modal-card-options-lightbox a:link, .ctools-modal-card-options-lightbox a:visited  {
	color: #000000;
}
.card-options-full-description.need-help-pwd .need-help-header{
	font-weight: bold;
	font-size: 14px;
}
div.card-options-full-description p, div.card-options-full-description .need-help-pwd{
	color: #666567;
	padding-left: 0px;
}
.card-message-description h4, .card-signature-description h4 {
	margin: 0px;
}
.card-message-description ul, .card-signature-description ul {
	list-style-type: disc;
	padding-left: 45px;
	margin:0px;
}
div.ctools-modal-content a.close{
	background: url("https://cdn.worldvision.org/m/common/lightbox/skin/icons/phlex-close.png") no-repeat scroll 0 0 transparent;
    display: block;
    font-size:0px;
	height: 41px;
	line-height:0;
	opacity: 1;
	position: absolute;
	right: -15px;
	top: -15px;
    width: 41px;
}
.page-checkoutpage #shadowbox_body {background-color: white;}
.page-checkout #shadowbox_body {background-color: white;}

div.ctools-modal-content table, div.card-options-full-description table{
	width: auto;
}
div.ctools-modal-content table tbody{
	border-top: none;
}
div.ctools-modal-content tbody tr:nth-child(2n) td, div.ctools-modal-content tbody tr.even td,
div.card-options-full-description tbody tr:nth-child(2n) td, div.card-options-full-description tbody tr.even td  {
    background: white;
}
.forgot-password p{
	padding:0px;
	margin-bottom: 19px;
}
.forgot-password .form-item {
	margin-top: 0px;
}
.forgot-password .form-item input {
	margin-bottom: 0px;
}
.card-options-full-description table p{
	color: #565656;
	font-family: GillSansWeb;
	font-size:15px;
	margin-bottom:-2px;
	margin-top:0px;
}
.card-options-full-description table p.sub-head{
	font-weight:bold;
	margin-bottom: 8px;
}
.card-options-full-description a{
	color: #FF6600;
}
.card-options-full-description a:hover{
	color: #006699;
}
.basket-items .card-multiple-qty{
	clear:both;
	margin-left: 27px;
}
.card-multiple-qty{
	font-size: 11px;
	margin-top: 2px;
	width: 380px;
}
.basket-items .premium-item{
	clear:both;
	margin-left: 27px;
}
.premium-item{
	font-size: 11px;
	margin-top: 2px;
	width: 380px;
}
.page-wvcheckout-nojs .monthly-giving-description, .page-wvcheckout-nojs .paperless-description, .page-wvcheckout-nojs .card-message-description, .page-wvcheckout-nojs .card-signature-description, .page-wvcheckout-nojs .edit-card, .page-wvcheckout-nojs .multiple-card-description,
.page-wvcheckout-nojs .countries-description {
	padding: 30px;
	font-size: 14px;
}
.monthly-giving-description, .paperless-description {
	font-size: 13px;
}
#main-wrapper-sco .tooltip{
	opacity:1;
	filter: alpha(opacity = 100);
	position: relative;
	z-index: 10;
}
div.ctools-modal-content .modal-header.tooltip-popup {
	background: white;
}
.left-arrow{
	background-image: url('/commerce/sites/all/themes/wv/images/left-arrow.png');
	left: -10px;
}
.right-arrow{
	background-image: url('/commerce/sites/all/themes/wv/images/right-arrow.png');
	right: -17px;
}
.left-arrow, .right-arrow{
	background-repeat: no-repeat;
	height: 20px;
	position: absolute;
	top:50px;
	width: 21px;
}

#thank-you .item .line-item-summary .item-grumpy-goat {
	text-align:left;
	margin-top:10px;
	padding:0px;
	margin-right:0px;
	margin-bottom:-25px;
}
#thank-you .item .line-item-summary .item-grumpy-goat img {
	border:none;
}
#thank-you .item .line-item-summary .item-grumpy-goat-text {
	font-size:11px;
	width: 170px;
	float:left;
	padding:0px;
	margin:0px;
}

/* Thank you page */
#thank-you {
	padding: 30px;
	font-size: 14px;
}
#thank-you h1{
	background: #fff;
	color: #000;
	font-size:19px;
	padding-left: 0px;
	padding-bottom: 10px;
}
#thank-you p {
	font-size:12px;
	margin: 0 0 10px 0;
	padding: 0px;
}
#thank-you .item {
	border: 1px solid #DCDDDE;
	margin: 0px 0px 10px 0px;
	padding-top: 10px;
	position: relative;
}
#thank-you .item .item-information {
	width: 770px;
}
#thank-you .item .p-left-10 {
	position:absolute;
	bottom:10px;
}
#thank-you .item .item-description {
	width: 510px;
}
#thank-you .item .item-description p, #thank-you .item .item-description div.shipping-to{
	color: #666567;
}
#thank-you .item .item-description p{
	margin-top: 12px;
}
#thank-you .item .item-image {
	padding-left: 10px;
	width: 110px;
	height: 105px;
}
#thank-you .item.card-enabled .item-image, #thank-you .item.card-enabled .item-description {
	margin-bottom:25px;
}
#thank-you .item .line-item-summary {
	min-height: 40px;
	width: 250px;
}
#thank-you .item .line-item-summary div {
	clear: none;
	margin-right: 5px;
	padding-right: 5px;
	padding-bottom: 5px;
}
#thank-you .item .line-item-summary div.fb-share-button {
	margin:0px;
	padding:0px;
}
#thank-you .item .line-item-summary .fb, #thank-you .item .line-item-summary .twitter{
	float:right;
	margin:0px;
	padding:0px;
}
#thank-you .item .line-item-summary .twitter{
	width: 30px;
}
#thank-you .donation-total{
	margin:0px;
}
.your-account-number, .your-order-number {
	border: 1px solid #DCDDDE;
	float:left;
	font-size:12px;
	padding: 10px;
	width:419px;
}.your-account-number {
	margin-right:2%;
}
#thank-you .upsell-bin {
	border: 1px solid #DCDDDE;
	margin-top: 10px;
	padding: 5px 10px;
	font-family: Trebuchet MS;
	position: relative;
	min-height:81px;
}
#thank-you .upsell-bin.small-bin {
	min-height:85px;
}
#thank-you .upsell-bin.no-image {
	min-height: 30px;
}
#thank-you .upsell-bin h3 {
	background: none;
	color: #000;
	font-size: 15tpx;
	padding-left: 0px;
	font-weight: bold;
}
#thank-you .upsell-text {
	font-size: 12px;
	float: left;
}
#thank-you .upsell-image.right {
	position:absolute;
	top:5px;
	right:5px;
}
#thank-you .upsell-image.left {
	float:left;
	margin-right: 50px;
}
#thank-you .upsell-bin ul {
	list-style-type:disc;
	padding-left: 15px;
	padding-bottom: 0px;
	font-size: 12px;
	line-height: 18px;
}
#thank-you .upsell-bin .li-link {
	list-style-type:none;
}
#thank-you .upsell-bin a {
	text-decoration: none;
	color: #ff6600;
	font-weight: bold;
}
#thank-you .upsell-bin a:visited, #thank-you .upsell-bin a:link {
	color: #ff6600;
}
#thank-you .upsell-bin a:hover, #thank-you .upsell-bin a:active, #thank-you .upsell-bin a:focus {
	text-decoration: underline;
}
.sponsored-child h3 {
	border-bottom: 1px solid #DCDDDE;
	padding-left: 5px;
	margin-bottom: 8px;
}
#thank-you .my-sponsored-child, #thank-you .my-wv{
	float: left;
}
#thank-you .my-sponsored-child{
	border-right: 1px solid #DCDDDE;
	color: #666567;
	margin-right: 13px;
	padding-left: 5px;
	width: 275px;
}
#thank-you .my-wv{
	font-size:12px;
	padding-bottom: 10px;
	width: 598px;
}
#thank-you .tax-disclaimer .note{
	font-style: italic;
}
#thank-you .tax-deductible-mailing-address{
	font-size:12px;
}
.thin-bottom-border{
	border-bottom: 1px solid #DCDDDE;
}
.social-sharing{
	color: #666567;
	font-size:12px;
	margin-top: 30px;
}
/* thank you - create an account lightbox */
#create-account {
	display:none;
}
.create-account.lightbox {
	padding-left: 15px;
	padding-right: 15px;
	padding-top:5px;
}
.create-account.lightbox p {
	margin: 0px;
	padding-left: 0px;
	padding-right: 0px;
}
.create-account.lightbox h3 {
	background: none;
	color: #000;
	padding-left: 0px;
	padding-bottom: 15px;
	padding-top: 15px;
}
.create-account.lightbox h5 {
	background: none;
	color: #000;
	font-weight:normal;
	margin:0px;
	padding-left: 0px;
	padding-bottom: 8px;
	padding-top: 0px;
}
.create-account.lightbox input{
	margin:0px;
}
.create-account.lightbox .label, .create-account.lightbox .field {
	float: left;
	padding-left: 0px;
}
.create-account.lightbox .label {
	background-color: transparent;
	color: #000000;
	clear:both;
	font-weight:normal;
	text-shadow:none;
	width: 120px;
}
.create-account.lightbox .form-item-password {
	float: left;
	margin-bottom: 0px;
}
.create-account.lightbox .note.password {
	clear: both;
	margin-left: 120px;
}
.create-account.lightbox ul{
	list-style-type:disc;
	margin-left: 22px;
	margin-top: 0px;
}
#CreateAcctPWError {
	clear: both;
	margin-left: 120px;
}
.create-account.lightbox .form-item {
	margin-top: 0px;
}
.create-account.lightbox .cancel {
	float: left;
	margin-left: 10px;
}
.create-account.lightbox .submit {
	float: left;
	margin-left: 120px;
}

.error-form-disabled, a.error-form-disabled {
	color: #828181;
	cursor: default;
}
a.error-form-disabled:link, a.error-form-disabled:hover {
	color: #828181;
}
 a.error-form-disabled {
	text-decoration:none;
}
.orangeButton.error-form-disabled, .orangeButton2.error-form-disabled, .orangeButton:hover.error-form-disabled, .orangeButton2:hover.error-form-disabled{
	background: #F0F0F0;
}
.card-options input.error-form-disabled, .mailing-information input.error-form-disabled {
	color: #828181;
}
/* log in and admin page */
.page-user .content, .page-admin .content {
	font-size: 13px;
	margin: 10px;
}
.page-user .content .form-type-password {
	margin-top: 10px;
}
.page-user .content #edit-actions {
	margin-top: 5px;
}
.page-user .content .form-submit {
	background: none repeat scroll 0 0 #FF6600;
    border: medium none;
	border-radius: 5px 5px 5px 5px;
    color: #FFFFFF;
    cursor: pointer;
    font-family: Trebuchet MS !important;
	font-size:15px;
    padding: 1px 10px;
}

/*  Child card module
    -----------------  */
#sponsorship .child-cards-container {
	max-width: 462px;
}

#sponsorship .child-cards {
	position: relative;
}

#sponsorship .card-area {
	border: 1px solid #DCDDDE;
	filter: inherit;
	max-width: 462px;
	opacity: inherit;
}

#sponsorship #loader {
	margin-top: -150px;
	margin-left: 70px;
	position: absolute;
	z-index: 2;
}

#sponsorship .child-image {
	filter: inherit;
	float: left;
	height: 133px;
	padding: 0;
	opacity: inherit;
}
#sponsorship .to, #sponsorship .child-image{
	width: 100px;
}

#sponsorship .card {
	float: left;
	opacity: inherit;
	filter: inherit;
	padding-left: 15px;
	padding-top: 10px;
	width: 383px;
}

#sponsorship .card .copy {
	display: none;
	float: left;
	opacity: inherit;
	filter: inherit;
	font-size: 13px;
	margin-left: 12px;
	width: 250px;
}

#sponsorship .card h2 {
	background: none;
	color: #000;
	margin: 0 0 8px 0;
	padding: 0px;
}

#sponsorship .card-area .child-navigation {
	display:block;
	float: left;
	height: 180px;
	width: 31px;
}

#sponsorship .card-area .previous-button, #sponsorship .card-area .next-button {
	background: #EFF0F1;
	cursor: pointer;
	height: 50px;
	padding: 65px 6px;
	width: 19px;
}

#sponsorship .card-area .next-button .arrow, #sponsorship .card-area .previous-button .arrow{
	background-image: url('/commerce/sites/all/themes/wv/images/sprite-icons-cart.png');
	background-repeat: no-repeat;
	background-position: top left;
	display:block;
	height: 50px;
	width: 19px;
}
#sponsorship .card-area .next-button .arrow{
	background-position: 0 -101px;
}
#sponsorship .card-area .previous-button .arrow{
	background-position: 0 0;
}

#sponsorship .child-details tr {
	padding: 0;
}

#sponsorship .child-details th {
	padding-bottom: 4px;
	text-align: left;
}

#sponsorship .child-details td {
	padding-bottom: 16px;
}

#sponsorship .child-details td:first-child {
	padding-right: 32px;
}

#sponsorship .read-my-story {
	display: block;
	height: 24px;
	padding: 3px 0 0 0px;
}

#sponsorship .child-photo{
	float:left;
}

#sponsorship .read-my-story{
	display:none;
	font-size:13px;
}

#sponsorship .sponsor-button {
	background: #006699;
	border-radius: 10px 10px 10px 10px;
	color: white !important;
	cursor: pointer;
	display: none;
	float: left;
	margin: 10px 0px 0 0px;
	padding-bottom: 4px;
	padding-top: 4px;
}
#sponsorship .sponsor-button:hover {
	background: #ff9046;
}
#sponsorship .search-link, #sponsorship .sponsor-button{
	text-align: center;
	width: 242px;
}
#sponsorship  .monthly-sponsorship {
	font-weight:bold;
}

#sponsorship .sponsor-button:hover {
	color: white;
	text-decoration: none !important;
}

#sponsorship .find-a-child-button {
	background: url('/commerce/sites/all/themes/wv/images/find-a-child-button.gif');
	display: block;
	width: 244px;
	height: 37px;
	float: left;
	margin-top: 14px;
	display: none;
	cursor:pointer;
	cursor:hand;
}
#sponsorship .sponsor-button.error-form-disabled {
	background: #F0F0F0;
	cursor: default;
}
#failoverChildSponsorLink {
	display: none;
	float: left;
	margin-left: 20px;
	background: url('/commerce/sites/all/themes/wv/images/failover-sponsor-button.gif')
		repeat-x;
	width: 230px;
	height: 36px;
	text-indent: -9999px;
}

#failoverChildSponsorLink:hover {
	background-position: 230px 0px;
}

#errorMsg {
	font-style: italic;
	font-weight: bold;
	text-align: center;
	margin-top: 12px;
	clear:both;
}

#sponsorship div.cwsLoader {
	margin: 80px 0 0 70px;
	display: block;
	position: absolute;
	z-index: 99;
}
/*-------------------------------------
   Sponsorship Widget Errors
 ------------------------------------*/
.sponsorship-info-error {
	  text-align:center;
}
.sponsorship-info-error p {
	 font-size: 12px;
}
.sponsorship-info-error p b {
	 font-size: 16px;
}
.sponsorship-info-error .orangeButton2 {
	 padding: 2px 8px;
}

/*-------------------------------------
  Read My Story Lightbox Styles
-------------------------------------*/
.lb-content {
	background-color: white;
	margin: 0px;
}

.white_content h3 {
	font-size: 16px;
	margin: 0px;
	clear: both;
	margin-bottom: 8px;
}

.lb-close {
	display: block;
	float: right;
	margin-top: -20px;
}

#my-story {
	display: none
}

#sb-wrapper-inner {
	border: none
}

#sb-body {
	background: none
}

#my-story p {

}

.child-story {
	clear: both;
	position: relative;
	top: 15px;
}

.xxwvSponPara p {
	margin: 12px 0 12px 0;
}

#child-story-details {

}

#child-story-imageURL{
	background:url();
	height:213px;
	width:167px;
	float:none;
	padding:0px;
}

#child-story-content {
	background-color: white;
	padding: 25px;
}

#child-story-quick-stats .bold {
	font-weight: bold;
	margin-top: 10px;
}

#child-story-quick-stats #column1 {
	float: left;
	width: 150px;
}

#child-story-quick-stats #column2 {
	float: left;
	margin-left: 15px;
}

#child-story-image {
	width: 190px;
	height: 250px;
	float: left;
}

#sponsorChildTitleLink-FirstPerson {
	font-size: 18px;
	margin-bottom: 8px;
}

a#largeSponsorLink {
	text-align: center;
	padding-top: 7px;
	width: 170px;
	height: 33px;
	background:
		url('/commerce/sites/all/themes/wv/images/child-story-sponsor-button.gif')
		0px 0px no-repeat;
	display: block;
	vertical-align: middle;
	text-decoration: none;
	font-size: 12px;
	color: white;
	cursor: pointer;
	font-weight: bold;
	text-align: center;
	margin-top: 8px;
}

/*-------------------------------------
  End Read My Story Lightbox Styles
-------------------------------------*/
.recommendations-widget #recItem-mostNeed {
	padding: 10px 20px;
	border-left: 1px solid #DCDDDE;
	border-right: 1px solid #DCDDDE;
}

.recommendations-widget #recItem-mostNeed .recItemMostNeedImage {
	float:left;
	padding:30px;
	width: 70px;
}
.recommendations-widget #recItem-mostNeed  .recItemTitle {
	color: black;
	font-size: 16px;
	float:left;
	height: 25px;
	padding-top: 5px;
}
.recommendations-widget #recItem-mostNeed  .recItemPrice {
	float:right;
	margin: 2px 8px 0 0;
}
.recommendations-widget #recItem-mostNeed  .recItemPrice .form-type-textfield {
	float: right;
}
.recommendations-widget #recItem-mostNeed input[type="text"] {
	text-align: right;
	line-height: 22px;
	height: 22px;
    width: 50px;
}
.recommendations-widget #recItem-mostNeed .most-need {
	float:right;
	margin-right: 30px;
	margin-top: 2px;
}

/*--------------------------------------
  Recommendations - Where Most Needed
 -------------------------------------*/

</style>
<div id="main-wrapper-sco" class="clearfix">
    <div class="region region-content">
        <div id="block-system-main" class="block block-system">
            <div class="content">
                <div class="panel-display panel-2col clearfix">
                    <img style="width: 940px; margin-left: 10px; margin-right: 10px;" src="https://www.worldvision.org/sites/default/files/images/abtest/75/ABTesting-VarA.jpg">
                    <div class="panel-panel panel-col-first">
                        <div class="inside">
                            <div class="panel-pane pane-block pane-wvcheckout-cart">
                                <div class="pane-content">
                                    <div class="basket-items" id="basket-items">
                                        <h1>
                                            <div class="float-left">
                                                My Basket</div>
                                            <div class="sprite-icon-basket sprite-icons-cart">
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
                                                        width="90"></div>
                                                <div class="item-information">
                                                    <div class="item-description">
                                                        <h4>
                                                            <a href="/OA_HTML/xxwv2ibeCCtpItmDspRte.jsp?item=154" onclick="sendLPOS('lft_txt_DeepWell_MyBasket','');">
                                                                Deep Well</a></h4>
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
                                                                        id="edit-amount" name="amount" value="15000" size="60">
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
                                                            <input type="hidden" name="line" value="121764727">
                                                            <input type="hidden" name="cart" value="28512027">
                                                            <div class="item-total">
                                                                Total: $15,000</div>
                                                            <div class="item-actions">
                                                                <a href="/commerce/wvcheckout/deletecartline/28512027/121764727" class="use-ajax action ajax-processed"
                                                                    title="Remove this item from your basket">Remove</a> |
                                                                <input type="submit" id="edit-submit" name="op" value="Update" class="form-submit ajax-processed"></div>
                                                            <input type="hidden" name="form_build_id" value="form-hakKszAJhpBweSL2Sh3GMyIj_iK2mBSxy39Kxc1a4Ws">
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
                                        </div>
                                        <div class="item card-enabled" id="cartitem-121764687">
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
                                                        <div>
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
                                        </div>
                                        <div class="donation-total">
                                            <div class="panelError">
                                            </div>
                                            <h5 class="label">
                                                Donation Total</h5>
                                            <h5 class="amount">
                                                $15,025</h5>
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
                                    <!--  11/12/13 commenting out
<script type="text/javascript">
var axel = Math.random() + "";
var a = axel * 10000000000000;
document.write('<iframe src="https://4080299.fls.doubleclick.net/activityi;src=4080299;type=count025;cat=check016;ord=' + a + '?" width="1" height="1" frameborder="0" style="display:none"></iframe>');
</script>
<noscript>
<iframe src="https://4080299.fls.doubleclick.net/activityi;src=4080299;type=count025;cat=check016;ord=1?" width="1" height="1" frameborder="0" style="display:none"></iframe>
</noscript>
-->
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
                                        <%--<h2>
                                            <div class="float-left">
                                                Secure Checkout</div>
                                            <div class="sprite-icon-lock sprite-icons-cart float-right">
                                            </div>
                                            <div class="clear-both">
                                            </div>
                                        </h2>--%>
                                        <h2>
                                            <div class="float-left">
                                                Guest Secure Checkout</div>
                                            <div class="sprite-icon-lock sprite-icons-cart float-right">
                                            </div>
                                            <div class="clear-both">
                                            </div>
                                        </h2>
                                        <div id="signInSectionError" class="fieldError">
                                        </div>
                                        <div class="checkout-options-inner">
                                            <div class="column1">
                                                <form action="/commerce/checkout?msg=&amp;ref=xxwv2ibeCCtpSctDspRte.jsp%3Fsection%3D10373%26beginIndex%3D0&amp;add=true"
                                                method="post" id="wvcheckout-guest-checkout-enabled" accept-charset="UTF-8">
                                                <div>
                                                    <div id="guest_checkout" class="enabled">
                                                        <h5>
                                                            Guest Checkout</h5>
                                                        <p>
                                                            Continue as a new donor and checkout as a guest. You may create an account sign
                                                            in later.
                                                        </p>
                                                    </div>
                                                    <input class="orangeButton bin form-submit ajax-processed" type="submit" id="edit-guest-checkout-submit"
                                                        name="op" value="Continue"><input type="hidden" name="form_build_id" value="form-xCIO8OORwysz2emtuQQmu7KxwiPKOxW8SlTR8O0TcQw">
                                                    <input type="hidden" name="form_id" value="wvcheckout_guest_checkout_enabled">
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
                                                            id="edit-email" name="email" value="Email" size="20" maxlength="128">
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
                                                            maxlength="128">
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
                            <div class="panel-pane pane-custom pane-3">
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
                                                                name="password" size="20" maxlength="128">
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
                                                    <input type="hidden" name="mailPrevStatus" value="HIDDEN">
                                                    <input class="send-card-edit-cancel form-submit ajax-processed" type="submit" id="edit-mailcancel"
                                                        name="cancel" value="Cancel"><input class="orangeButton bin form-submit ajax-processed"
                                                            style="width: 150px;" type="submit" id="edit-mailsubmit" name="op" value="Continue"></div>
                                                <input type="hidden" name="form_build_id" value="form-fxdfNrN4mABnNUKqVkxMgkGh4StFWRRYb0BCqXNL1fk">
                                                <input type="hidden" name="form_id" value="wvcheckout_mailing_form">
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
                                    <div class="card-options">
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
                                    </div>
                                </div>
                            </div>
                            <div class="panel-separator">
                            </div>
                            <div class="panel-pane pane-custom pane-5">
                                <div class="pane-content">
                                    <div class="payment-information">
                                        <div>
                                            <h3>
                                                3. Payment Information</h3>
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
                                                                id="edit-payaddredit" name="EditAddress" value="Edit"><div class="clear-both">
                                                                </div>
                                                        </div>
                                                    </div>
                                                    <div id="payment">
                                                        <div class="payment-types-container">
                                                            <div class="card-information">
                                                                <ul class="cc-types">
                                                                    <li>
                                                                        <input type="button" data-type="visa" class="cc-card visa sprite-icons-payment "></li><li>
                                                                            <input type="button" data-type="mc" class="cc-card mc sprite-icons-payment "></li><li>
                                                                                <input type="button" data-type="amex" class="cc-card amex sprite-icons-payment "></li><li>
                                                                                    <input type="button" data-type="discover" class="cc-card discover sprite-icons-payment "></li><li>
                                                                                        <input class="cc-card paypal sprite-icons-payment  form-submit ajax-processed" type="submit"
                                                                                            id="edit-paypal" name="op" value=""></li></ul>
                                                                <input type="hidden" name="card-type" value="">
                                                            </div>
                                                        </div>
                                                        <div class="fieldError card-number">
                                                        </div>
                                                        <label for="card-number">
                                                            Card number</label><div class="payment-input">
                                                                <div class="form-item form-type-textfield form-item-card-number">
                                                                    <input maxlength="16" class="card-number numeric-only form-text" type="text" id="edit-card-number"
                                                                        name="card-number" value="" size="60">
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
                                                                        name="card-name" value="" size="60">
                                                                </div>
                                                            </div>
                                                        <div class="clear-both">
                                                        </div>
                                                    </div>
                                                    <div style="margin-top: 10px; margin-left: 235px;">
                                                        <input class="orangeButton bin m-left-10 form-submit ajax-processed" style="width: 150px;"
                                                            type="submit" id="edit-paysubmit" name="Continue" value="Continue"></div>
                                                    <div class="clear-both">
                                                    </div>
                                                    <input type="hidden" name="form_build_id" value="form-BfRAOrRfA8-Z-cTi5AxtoSSg6Q7j9vl9s5PgkfkxGZg">
                                                    <input type="hidden" name="form_id" value="wvcheckout_payment_form">
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
                                    <div class="recommendations-widget" style="display: block;">
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
                                                        name="op" value="Add Donation"></div>
                                                <div class="recItemPrice">
                                                    <div class="form-item form-type-textfield form-item-most-needed-amount">
                                                        <input maxlength="6" class="numeric-only form-text" type="text" id="edit-most-needed-amount"
                                                            name="most-needed-amount" value="0" size="60">
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
                                            <input type="hidden" name="form_build_id" value="form-qsMRTpm6SUzhh7JVDTxJdq7jEqq4IqZvd-MZVH4gRpg">
                                            <input type="hidden" name="form_id" value="wvcheckout_where_most_needed_form">
                                        </div>
                                        </form>
                                        <div id="recBody">
                                            <div id="recPrev" class="recNav" onclick="showRecs(-1); sendLPOS('rgt_img_Recmd_Previous');"
                                                style="visibility: hidden;">
                                                <div class="sprite-icons-cart sprite-arrow-double-blue-left">
                                                </div>
                                            </div>
                                            <div id="recItems">
                                                <div style="display: block;" id="recItem1" class="recItem ">
                                                    <div class="recItemImage">
                                                        <a onclick="sendLPOS('rgt_img_Recmd_2Chickens');" href="/OA_HTML/xxwv2ibeCCtpItmDspRte.jsp?item=1270176">
                                                            <img src="/OA_MEDIA/xxwvus/istore/Chickens-0911-Sm.jpg"></a>
                                                    </div>
                                                    <div class="recItemTitle">
                                                        <a onclick="sendLPOS('rgt_txt_Recmd_2Chickens');" href="/OA_HTML/xxwv2ibeCCtpItmDspRte.jsp?item=1270176">
                                                            2 Chickens</a>
                                                    </div>
                                                    <div class="recItemPrice">
                                                        $25
                                                    </div>
                                                    <div class="recItemDonate">
                                                        <form action="/OA_HTML/xxwv2ibeCCtpBuyRoute.jsp?a=b" method="GET" name="myBasketDonateForm">
                                                        <input value="null" name="refpage" type="hidden">
                                                        <input value="1270176" name="item" type="hidden">
                                                        <input value="" name="section" type="hidden">
                                                        <input value="1" name="qty" type="hidden">
                                                        <input value="100" name="tmpx" type="hidden">
                                                        <input value="100" name="tmpy" type="hidden">
                                                        <input class="greyCTA" onclick="sendLPOS('rgt_btn_Recmd_2Chickens')" name="Add to Cart.x"
                                                            value="Add Donation" border="0" type="submit">
                                                        </form>
                                                    </div>
                                                </div>
                                                <div style="display: block;" id="recItem2" class="recItem recItemMid">
                                                    <div class="recItemImage">
                                                        <a onclick="sendLPOS('rgt_img_Recmd_CleanWaterFund');" href="/OA_HTML/xxwv2ibeCCtpItmDspRte.jsp?item=1895304">
                                                            <img src="/OA_MEDIA/xxwvus/istore/cleanwater_08_sm.jpg"></a>
                                                    </div>
                                                    <div class="recItemTitle">
                                                        <a onclick="sendLPOS('rgt_txt_Recmd_CleanWaterFund');" href="/OA_HTML/xxwv2ibeCCtpItmDspRte.jsp?item=1895304">
                                                            Clean Water Fund</a>
                                                    </div>
                                                    <div class="recItemPrice">
                                                        $25
                                                    </div>
                                                    <div class="recItemDonate">
                                                        <form action="/OA_HTML/xxwv2ibeCCtpBuyRoute.jsp?a=b" method="GET" name="myBasketDonateForm">
                                                        <input value="null" name="refpage" type="hidden">
                                                        <input value="1895304" name="item" type="hidden">
                                                        <input value="" name="section" type="hidden">
                                                        <input value="1" name="qty" type="hidden">
                                                        <input value="100" name="tmpx" type="hidden">
                                                        <input value="100" name="tmpy" type="hidden">
                                                        <input class="greyCTA" onclick="sendLPOS('rgt_btn_Recmd_CleanWaterFund')" name="Add to Cart.x"
                                                            value="Add Donation" border="0" type="submit">
                                                        </form>
                                                    </div>
                                                </div>
                                                <div style="display: block;" id="recItem3" class="recItem ">
                                                    <div class="recItemImage">
                                                        <a onclick="sendLPOS('rgt_img_Recmd_ClothingforChildren');" href="/OA_HTML/xxwv2ibeCCtpItmDspRte.jsp?item=1753164">
                                                            <img src="/OA_MEDIA/xxwvus/istore/clothing_children_2010_sm.jpg"></a>
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
                                                        <input value="null" name="refpage" type="hidden">
                                                        <input value="1753164" name="item" type="hidden">
                                                        <input value="" name="section" type="hidden">
                                                        <input value="1" name="qty" type="hidden">
                                                        <input value="100" name="tmpx" type="hidden">
                                                        <input value="100" name="tmpy" type="hidden">
                                                        <input class="greyCTA" onclick="sendLPOS('rgt_btn_Recmd_ClothingforChildren')" name="Add to Cart.x"
                                                            value="Add Donation" border="0" type="submit">
                                                        </form>
                                                    </div>
                                                </div>
                                                <div style="display: none;" id="recItem4" class="recItem ">
                                                    <div class="recItemImage">
                                                        <a onclick="sendLPOS('rgt_img_Recmd_2Bibles');" href="/OA_HTML/xxwv2ibeCCtpItmDspRte.jsp?item=274">
                                                            <img src="/OA_MEDIA/xxwvus/istore/GCS_bibles.jpg"></a>
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
                                                        <input value="null" name="refpage" type="hidden">
                                                        <input value="274" name="item" type="hidden">
                                                        <input value="" name="section" type="hidden">
                                                        <input value="1" name="qty" type="hidden">
                                                        <input value="100" name="tmpx" type="hidden">
                                                        <input value="100" name="tmpy" type="hidden">
                                                        <input class="greyCTA" onclick="sendLPOS('rgt_btn_Recmd_2Bibles')" name="Add to Cart.x"
                                                            value="Add Donation" border="0" type="submit">
                                                        </form>
                                                    </div>
                                                </div>
                                                <div style="display: none;" id="recItem5" class="recItem recItemMid">
                                                    <div class="recItemImage">
                                                        <a onclick="sendLPOS('rgt_img_Recmd_HopeforSexuallyExploitedGirls');" href="/OA_HTML/xxwv2ibeCCtpItmDspRte.jsp?item=186">
                                                            <img src="/OA_MEDIA/xxwvus/istore/girlrescued_08_sm.jpg"></a>
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
                                                        <input value="null" name="refpage" type="hidden">
                                                        <input value="186" name="item" type="hidden">
                                                        <input value="" name="section" type="hidden">
                                                        <input value="1" name="qty" type="hidden">
                                                        <input value="100" name="tmpx" type="hidden">
                                                        <input value="100" name="tmpy" type="hidden">
                                                        <input class="greyCTA" onclick="sendLPOS('rgt_btn_Recmd_HopeforSexuallyExploitedGirls')"
                                                            name="Add to Cart.x" value="Add Donation" border="0" type="submit">
                                                        </form>
                                                    </div>
                                                </div>
                                                <div style="display: none;" id="recItem6" class="recItem ">
                                                    <div class="recItemImage">
                                                        <a onclick="sendLPOS('rgt_img_Recmd_350WorthofMedicines');" href="/OA_HTML/xxwv2ibeCCtpItmDspRte.jsp?item=1895066">
                                                            <img src="/OA_MEDIA/xxwvus/istore/S1763.jpg"></a>
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
                                                        <input value="null" name="refpage" type="hidden">
                                                        <input value="1895066" name="item" type="hidden">
                                                        <input value="" name="section" type="hidden">
                                                        <input value="1" name="qty" type="hidden">
                                                        <input value="100" name="tmpx" type="hidden">
                                                        <input value="100" name="tmpy" type="hidden">
                                                        <input class="greyCTA" onclick="sendLPOS('rgt_btn_Recmd_350WorthofMedicines')" name="Add to Cart.x"
                                                            value="Add Donation" border="0" type="submit">
                                                        </form>
                                                    </div>
                                                </div>
                                                <div style="display: none;" id="recItem7" class="recItem ">
                                                    <div class="recItemImage">
                                                        <a onclick="sendLPOS('rgt_img_Recmd_CareerTrainingforGirlsandWomen');" href="/OA_HTML/xxwv2ibeCCtpItmDspRte.jsp?item=1445848">
                                                            <img src="/OA_MEDIA/xxwvus/istore/Career_Training_Women_SM_FY14.jpg"></a>
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
                                                        <input value="null" name="refpage" type="hidden">
                                                        <input value="1445848" name="item" type="hidden">
                                                        <input value="" name="section" type="hidden">
                                                        <input value="1" name="qty" type="hidden">
                                                        <input value="100" name="tmpx" type="hidden">
                                                        <input value="100" name="tmpy" type="hidden">
                                                        <input class="greyCTA" onclick="sendLPOS('rgt_btn_Recmd_CareerTrainingforGirlsandWomen')"
                                                            name="Add to Cart.x" value="Add Donation" border="0" type="submit">
                                                        </form>
                                                    </div>
                                                </div>
                                                <div style="display: none;" id="recItem8" class="recItem recItemMid">
                                                    <div class="recItemImage">
                                                        <a onclick="sendLPOS('rgt_img_Recmd_Seedsfor1Family');" href="/OA_HTML/xxwv2ibeCCtpItmDspRte.jsp?item=1115387">
                                                            <img src="/OA_MEDIA/xxwvus/istore/Seeds-SM-FY13.jpg"></a>
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
                                                        <input value="null" name="refpage" type="hidden">
                                                        <input value="1115387" name="item" type="hidden">
                                                        <input value="" name="section" type="hidden">
                                                        <input value="1" name="qty" type="hidden">
                                                        <input value="100" name="tmpx" type="hidden">
                                                        <input value="100" name="tmpy" type="hidden">
                                                        <input class="greyCTA" onclick="sendLPOS('rgt_btn_Recmd_Seedsfor1Family')" name="Add to Cart.x"
                                                            value="Add Donation" border="0" type="submit">
                                                        </form>
                                                    </div>
                                                </div>
                                                <div style="display: none;" id="recItem9" class="recItem ">
                                                    <div class="recItemImage">
                                                        <a onclick="sendLPOS('rgt_img_Recmd_250WorthofNecessitiesintheUSA');" href="/OA_HTML/xxwv2ibeCCtpItmDspRte.jsp?item=1115331">
                                                            <img src="/OA_MEDIA/xxwvus/istore/S0419.jpg"></a>
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
                                                        <input value="null" name="refpage" type="hidden">
                                                        <input value="1115331" name="item" type="hidden">
                                                        <input value="" name="section" type="hidden">
                                                        <input value="1" name="qty" type="hidden">
                                                        <input value="100" name="tmpx" type="hidden">
                                                        <input value="100" name="tmpy" type="hidden">
                                                        <input class="greyCTA" onclick="sendLPOS('rgt_btn_Recmd_250WorthofNecessitiesintheUSA')"
                                                            name="Add to Cart.x" value="Add Donation" border="0" type="submit">
                                                        </form>
                                                    </div>
                                                </div>
                                            </div>
                                            <div style="visibility: visible;" id="recNext" class="recNav" onclick="showRecs(1); sendLPOS('rgt_img_Recmd_Next');">
                                                <div class="sprite-icons-cart sprite-arrow-double-blue-right">
                                                </div>
                                            </div>
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
                                            <div class="float-left m-top-5 m-left-10" style="width: 200px;">
                                                <strong>Need help?</strong> 1-888-511-6443</div>
                                        </div>
                                        <div class="column2">
                                            M-F 6AM - 6PM Pacific Time<br/>
                                            Sat-Sun Closed</div>
                                        <div class="clear-both">
                                            &nbsp;</div>
                                    </div>
                                </div>
                            </div>
                            <div class="panel-separator">
                            </div>
                            <div class="panel-pane pane-custom pane-9">
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
                            </div>
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