﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public partial class MergeFieldsProvider
{
    public enum eMyFields
    {
        BEGINSPONSORSHIPLOOP = 1,

        //donor
        DONORFIRSTNAME = 2,
        DONORMIDDLENAME = 3,
        DONORLASTNAME = 4,
        DONORADDRESSLINES = 5,
        DONORCITY = 6,
        DONORSTATE = 7,
        DONORZIP = 8,
        DONORCOUNTRY = 9,
        DONORDAYPHONE = 10,
        DONOREVENINGPHONE = 11,
        DONOREMAIL = 12,
        DONORCURRENTSPONSOR = 13,
        DONORHEARABOUTUS = 14,

        //payment
        CREDITCARDTYPE = 15,
        CREDITCARDNUMBER = 16,
        CREDITCARDHOLDERNAME = 17,
        PAYMENTRECURRENCE = 18,
        TOTALCOST = 19,

        //child
        BEGINCHILDLOOP = 20,
        CHILDNAME = 21,
        CHILDLOOKUPID = 22,
        CHILDLOCATION = 23,
        CHILDDOB = 24,
        CHILDGENDER = 25,
        AMOUNT = 26,
        ENDCHILDLOOP = 27,

        //categories
        DONORCATEGORY = 28,
        PAYMENTCATEGORY = 29,
        CHILDCATEGORY = 30,
        GENERALCATEGORY = 31,
        ENDSPONSORSHIPLOOP = 32
    }
}