module Money exposing
    ( Currency(..)
    , all, toString, fromString
    , toSymbol, toName, toNativeSymbol, toDecimalDigits
    , USD, CAD, EUR, BTC, AED, AFN, ALL, AMD, ARS, AUD, AZN, BAM, BDT, BGN, BHD, BIF, BND, BOB, BRL, BWP, BYR, BZD, CDF, CHF, CLP, CNY, COP, CRC, CVE, CZK, DJF, DKK, DOP, DZD, EEK, EGP, ERN, ETB, GBP, GEL, GHS, GNF, GTQ, HKD, HNL, HRK, HUF, IDR, ILS, INR, IQD, IRR, ISK, JMD, JOD, JPY, KES, KHR, KMF, KRW, KWD, KZT, LAK, LBP, LKR, LTL, LVL, LYD, MAD, MDL, MGA, MKD, MMK, MOP, MUR, MXN, MYR, MZN, NAD, NGN, NIO, NOK, NPR, NZD, OMR, PAB, PEN, PHP, PKR, PLN, PYG, QAR, RON, RSD, RUB, RWF, SAR, SDG, SEK, SGD, SOS, SYP, THB, TND, TOP, TRY, TTD, TWD, TZS, UAH, UGX, UYU, UZS, VEF, VND, XAF, XOF, YER, ZAR, ZMK
    )

{-| All the worlds currencies as records and union types, with helper functions too.


# Types

@docs Currency


# Basics

@docs all, toString, fromString


# Propertues

@docs toSymbol, toName, toNativeSymbol, toDecimalDigits


# Currencies as Types

@docs USD, CAD, EUR, BTC, AED, AFN, ALL, AMD, ARS, AUD, AZN, BAM, BDT, BGN, BHD, BIF, BND, BOB, BRL, BWP, BYR, BZD, CDF, CHF, CLP, CNY, COP, CRC, CVE, CZK, DJF, DKK, DOP, DZD, EEK, EGP, ERN, ETB, GBP, GEL, GHS, GNF, GTQ, HKD, HNL, HRK, HUF, IDR, ILS, INR, IQD, IRR, ISK, JMD, JOD, JPY, KES, KHR, KMF, KRW, KWD, KZT, LAK, LBP, LKR, LTL, LVL, LYD, MAD, MDL, MGA, MKD, MMK, MOP, MUR, MXN, MYR, MZN, NAD, NGN, NIO, NOK, NPR, NZD, OMR, PAB, PEN, PHP, PKR, PLN, PYG, QAR, RON, RSD, RUB, RWF, SAR, SDG, SEK, SGD, SOS, SYP, THB, TND, TOP, TRY, TTD, TWD, TZS, UAH, UGX, UYU, UZS, VEF, VND, XAF, XOF, YER, ZAR, ZMK

-}


{-| This type represents all the possible currencies as currency codes. There are over 100 of them.

    type Currency
        = USD
        | EUR
        | CAD -- ..

-}
type Currency
    = USD
    | CAD
    | EUR
    | BTC
    | AED
    | AFN
    | ALL
    | AMD
    | ARS
    | AUD
    | AZN
    | BAM
    | BDT
    | BGN
    | BHD
    | BIF
    | BND
    | BOB
    | BRL
    | BWP
    | BYR
    | BZD
    | CDF
    | CHF
    | CLP
    | CNY
    | COP
    | CRC
    | CVE
    | CZK
    | DJF
    | DKK
    | DOP
    | DZD
    | EEK
    | EGP
    | ERN
    | ETB
    | GBP
    | GEL
    | GHS
    | GNF
    | GTQ
    | HKD
    | HNL
    | HRK
    | HUF
    | IDR
    | ILS
    | INR
    | IQD
    | IRR
    | ISK
    | JMD
    | JOD
    | JPY
    | KES
    | KHR
    | KMF
    | KRW
    | KWD
    | KZT
    | LAK
    | LBP
    | LKR
    | LTL
    | LVL
    | LYD
    | MAD
    | MDL
    | MGA
    | MKD
    | MMK
    | MOP
    | MUR
    | MXN
    | MYR
    | MZN
    | NAD
    | NGN
    | NIO
    | NOK
    | NPR
    | NZD
    | OMR
    | PAB
    | PEN
    | PHP
    | PKR
    | PLN
    | PYG
    | QAR
    | RON
    | RSD
    | RUB
    | RWF
    | SAR
    | SDG
    | SEK
    | SGD
    | SOS
    | SYP
    | THB
    | TND
    | TOP
    | TRY
    | TTD
    | TWD
    | TZS
    | UAH
    | UGX
    | UYU
    | UZS
    | VEF
    | VND
    | XAF
    | XOF
    | YER
    | ZAR
    | ZMK


{-| Get the symbol of a currency from its code

        toSymbol USD == "$"
        toSymbol CAD == "CA$
        toSymbol BTC == "BTC"

Look at the documentation for `toNativeSymbol` for more details.

-}
toSymbol : Currency -> String
toSymbol currency =
    case currency of
        USD ->
            "$"

        CAD ->
            "CA$"

        EUR ->
            "€"

        BTC ->
            "BTC"

        AED ->
            "AED"

        AFN ->
            "Af"

        ALL ->
            "ALL"

        AMD ->
            "AMD"

        ARS ->
            "AR$"

        AUD ->
            "AU$"

        AZN ->
            "man."

        BAM ->
            "KM"

        BDT ->
            "Tk"

        BGN ->
            "BGN"

        BHD ->
            "BD"

        BIF ->
            "FBu"

        BND ->
            "BN$"

        BOB ->
            "Bs"

        BRL ->
            "R$"

        BWP ->
            "BWP"

        BYR ->
            "BYR"

        BZD ->
            "BZ$"

        CDF ->
            "CDF"

        CHF ->
            "CHF"

        CLP ->
            "CL$"

        CNY ->
            "CN¥"

        COP ->
            "CO$"

        CRC ->
            "₡"

        CVE ->
            "CV$"

        CZK ->
            "Kč"

        DJF ->
            "Fdj"

        DKK ->
            "Dkr"

        DOP ->
            "RD$"

        DZD ->
            "DA"

        EEK ->
            "Ekr"

        EGP ->
            "EGP"

        ERN ->
            "Nfk"

        ETB ->
            "Br"

        GBP ->
            "£"

        GEL ->
            "GEL"

        GHS ->
            "GH₵"

        GNF ->
            "FG"

        GTQ ->
            "GTQ"

        HKD ->
            "HK$"

        HNL ->
            "HNL"

        HRK ->
            "kn"

        HUF ->
            "Ft"

        IDR ->
            "Rp"

        ILS ->
            "₪"

        INR ->
            "₹"

        IQD ->
            "IQD"

        IRR ->
            "IRR"

        ISK ->
            "Ikr"

        JMD ->
            "J$"

        JOD ->
            "JD"

        JPY ->
            "¥"

        KES ->
            "Ksh"

        KHR ->
            "KHR"

        KMF ->
            "CF"

        KRW ->
            "₩"

        KWD ->
            "KD"

        KZT ->
            "KZT"

        LAK ->
            "₭"

        LBP ->
            "LB£"

        LKR ->
            "SLRs"

        LTL ->
            "Lt"

        LVL ->
            "Ls"

        LYD ->
            "LD"

        MAD ->
            "MAD"

        MDL ->
            "MDL"

        MGA ->
            "MGA"

        MKD ->
            "MKD"

        MMK ->
            "MMK"

        MOP ->
            "MOP$"

        MUR ->
            "MURs"

        MXN ->
            "MX$"

        MYR ->
            "RM"

        MZN ->
            "MTn"

        NAD ->
            "N$"

        NGN ->
            "₦"

        NIO ->
            "C$"

        NOK ->
            "Nkr"

        NPR ->
            "NPRs"

        NZD ->
            "NZ$"

        OMR ->
            "OMR"

        PAB ->
            "B/."

        PEN ->
            "S/."

        PHP ->
            "₱"

        PKR ->
            "PKRs"

        PLN ->
            "zł"

        PYG ->
            "₲"

        QAR ->
            "QR"

        RON ->
            "RON"

        RSD ->
            "din."

        RUB ->
            "RUB"

        RWF ->
            "RWF"

        SAR ->
            "SR"

        SDG ->
            "SDG"

        SEK ->
            "Skr"

        SGD ->
            "S$"

        SOS ->
            "Ssh"

        SYP ->
            "SY£"

        THB ->
            "฿"

        TND ->
            "DT"

        TOP ->
            "T$"

        TRY ->
            "TL"

        TTD ->
            "TT$"

        TWD ->
            "NT$"

        TZS ->
            "TSh"

        UAH ->
            "₴"

        UGX ->
            "USh"

        UYU ->
            "$U"

        UZS ->
            "UZS"

        VEF ->
            "Bs.F."

        VND ->
            "₫"

        XAF ->
            "FCFA"

        XOF ->
            "CFA"

        YER ->
            "YR"

        ZAR ->
            "R"

        ZMK ->
            "ZK"


{-| Get the native symbol of a currency from its code.

        toNativeSymbol LAK == "ກີບ"
        toSymbol LAK == "₭"

        toNativeSymbol CAD == "$"
        toSymbol CAD == "CA$"

        toNativeSymbol USD == "$"
        toSymbol USD == "$"

The `native symbol` is different from the `symbol`. The `symbol` is what is used
in international currency exchange contexts. Imagine a currency exchange shop
at an airport that lists several currencies right next to each other. The native symbol,
however, is used in more local and natural settings of the currency; such as if someone
were looking at a restaurant menu with currency amounts next to menu items.

-}
toNativeSymbol : Currency -> String
toNativeSymbol currency =
    case currency of
        USD ->
            "$"

        CAD ->
            "$"

        EUR ->
            "€"

        BTC ->
            "฿"

        AED ->
            "د.إ.\u{200F}"

        AFN ->
            "؋"

        ALL ->
            "Lek"

        AMD ->
            "դր."

        ARS ->
            "$"

        AUD ->
            "$"

        AZN ->
            "ман."

        BAM ->
            "KM"

        BDT ->
            "৳"

        BGN ->
            "лв."

        BHD ->
            "د.ب.\u{200F}"

        BIF ->
            "FBu"

        BND ->
            "$"

        BOB ->
            "Bs"

        BRL ->
            "R$"

        BWP ->
            "P"

        BYR ->
            "BYR"

        BZD ->
            "$"

        CDF ->
            "FrCD"

        CHF ->
            "CHF"

        CLP ->
            "$"

        CNY ->
            "CN¥"

        COP ->
            "$"

        CRC ->
            "₡"

        CVE ->
            "CV$"

        CZK ->
            "Kč"

        DJF ->
            "Fdj"

        DKK ->
            "kr"

        DOP ->
            "RD$"

        DZD ->
            "د.ج.\u{200F}"

        EEK ->
            "kr"

        EGP ->
            "ج.م.\u{200F}"

        ERN ->
            "Nfk"

        ETB ->
            "Br"

        GBP ->
            "£"

        GEL ->
            "GEL"

        GHS ->
            "GH₵"

        GNF ->
            "FG"

        GTQ ->
            "Q"

        HKD ->
            "$"

        HNL ->
            "L"

        HRK ->
            "kn"

        HUF ->
            "Ft"

        IDR ->
            "Rp"

        ILS ->
            "₪"

        INR ->
            "₹"

        IQD ->
            "د.ع.\u{200F}"

        IRR ->
            "﷼"

        ISK ->
            "kr"

        JMD ->
            "$"

        JOD ->
            "د.أ.\u{200F}"

        JPY ->
            "￥"

        KES ->
            "Ksh"

        KHR ->
            "៛"

        KMF ->
            "FC"

        KRW ->
            "₩"

        KWD ->
            "د.ك.\u{200F}"

        KZT ->
            "тңг."

        LAK ->
            "ກີບ"

        LBP ->
            "ل.ل.\u{200F}"

        LKR ->
            "SL Re"

        LTL ->
            "Lt"

        LVL ->
            "Ls"

        LYD ->
            "د.ل.\u{200F}"

        MAD ->
            "د.م.\u{200F}"

        MDL ->
            "MDL"

        MGA ->
            "MGA"

        MKD ->
            "MKD"

        MMK ->
            "K"

        MOP ->
            "MOP$"

        MUR ->
            "MURs"

        MXN ->
            "$"

        MYR ->
            "RM"

        MZN ->
            "MTn"

        NAD ->
            "N$"

        NGN ->
            "₦"

        NIO ->
            "C$"

        NOK ->
            "kr"

        NPR ->
            "नेरू"

        NZD ->
            "$"

        OMR ->
            "ر.ع.\u{200F}"

        PAB ->
            "B/."

        PEN ->
            "S/."

        PHP ->
            "₱"

        PKR ->
            "₨"

        PLN ->
            "zł"

        PYG ->
            "₲"

        QAR ->
            "ر.ق.\u{200F}"

        RON ->
            "RON"

        RSD ->
            "дин."

        RUB ->
            "₽"

        RWF ->
            "FR"

        SAR ->
            "ر.س.\u{200F}"

        SDG ->
            "SDG"

        SEK ->
            "kr"

        SGD ->
            "$"

        SOS ->
            "Ssh"

        SYP ->
            "ل.س.\u{200F}"

        THB ->
            "฿"

        TND ->
            "د.ت.\u{200F}"

        TOP ->
            "T$"

        TRY ->
            "TL"

        TTD ->
            "$"

        TWD ->
            "NT$"

        TZS ->
            "TSh"

        UAH ->
            "₴"

        UGX ->
            "USh"

        UYU ->
            "$"

        UZS ->
            "UZS"

        VEF ->
            "Bs.F."

        VND ->
            "₫"

        XAF ->
            "FCFA"

        XOF ->
            "CFA"

        YER ->
            "ر.ي.\u{200F}"

        ZAR ->
            "R"

        ZMK ->
            "ZK"


{-| Get the name of a currency from its code

        toName EUR { plural = True } == "euros"
        toName ALL { plural = False } == "Albanian Lek"
        toName ALL { plural = True } == "Albanian lekë"

-}
toName : Currency -> { plural : Bool } -> String
toName currency { plural } =
    case currency of
        USD ->
            if plural then
                "US dollars"

            else
                "US Dollar"

        CAD ->
            if plural then
                "Canadian dollars"

            else
                "Canadian Dollar"

        EUR ->
            if plural then
                "euros"

            else
                "Euro"

        BTC ->
            if plural then
                "Bitcoins"

            else
                "Bitcoin"

        AED ->
            if plural then
                "UAE dirhams"

            else
                "United Arab Emirates Dirham"

        AFN ->
            if plural then
                "Afghan Afghanis"

            else
                "Afghan Afghani"

        ALL ->
            if plural then
                "Albanian lekë"

            else
                "Albanian Lek"

        AMD ->
            if plural then
                "Armenian drams"

            else
                "Armenian Dram"

        ARS ->
            if plural then
                "Argentine pesos"

            else
                "Argentine Peso"

        AUD ->
            if plural then
                "Australian dollars"

            else
                "Australian Dollar"

        AZN ->
            if plural then
                "Azerbaijani manats"

            else
                "Azerbaijani Manat"

        BAM ->
            if plural then
                "Bosnia-Herzegovina convertible marks"

            else
                "Bosnia-Herzegovina Convertible Mark"

        BDT ->
            if plural then
                "Bangladeshi takas"

            else
                "Bangladeshi Taka"

        BGN ->
            if plural then
                "Bulgarian leva"

            else
                "Bulgarian Lev"

        BHD ->
            if plural then
                "Bahraini dinars"

            else
                "Bahraini Dinar"

        BIF ->
            if plural then
                "Burundian francs"

            else
                "Burundian Franc"

        BND ->
            if plural then
                "Brunei dollars"

            else
                "Brunei Dollar"

        BOB ->
            if plural then
                "Bolivian bolivianos"

            else
                "Bolivian Boliviano"

        BRL ->
            if plural then
                "Brazilian reals"

            else
                "Brazilian Real"

        BWP ->
            if plural then
                "Botswanan pulas"

            else
                "Botswanan Pula"

        BYR ->
            if plural then
                "Belarusian rubles"

            else
                "Belarusian Ruble"

        BZD ->
            if plural then
                "Belize dollars"

            else
                "Belize Dollar"

        CDF ->
            if plural then
                "Congolese francs"

            else
                "Congolese Franc"

        CHF ->
            if plural then
                "Swiss francs"

            else
                "Swiss Franc"

        CLP ->
            if plural then
                "Chilean pesos"

            else
                "Chilean Peso"

        CNY ->
            if plural then
                "Chinese yuan"

            else
                "Chinese Yuan"

        COP ->
            if plural then
                "Colombian pesos"

            else
                "Colombian Peso"

        CRC ->
            if plural then
                "Costa Rican colóns"

            else
                "Costa Rican Colón"

        CVE ->
            if plural then
                "Cape Verdean escudos"

            else
                "Cape Verdean Escudo"

        CZK ->
            if plural then
                "Czech Republic korunas"

            else
                "Czech Republic Koruna"

        DJF ->
            if plural then
                "Djiboutian francs"

            else
                "Djiboutian Franc"

        DKK ->
            if plural then
                "Danish kroner"

            else
                "Danish Krone"

        DOP ->
            if plural then
                "Dominican pesos"

            else
                "Dominican Peso"

        DZD ->
            if plural then
                "Algerian dinars"

            else
                "Algerian Dinar"

        EEK ->
            if plural then
                "Estonian kroons"

            else
                "Estonian Kroon"

        EGP ->
            if plural then
                "Egyptian pounds"

            else
                "Egyptian Pound"

        ERN ->
            if plural then
                "Eritrean nakfas"

            else
                "Eritrean Nakfa"

        ETB ->
            if plural then
                "Ethiopian birrs"

            else
                "Ethiopian Birr"

        GBP ->
            if plural then
                "British pounds sterling"

            else
                "British Pound Sterling"

        GEL ->
            if plural then
                "Georgian laris"

            else
                "Georgian Lari"

        GHS ->
            if plural then
                "Ghanaian cedis"

            else
                "Ghanaian Cedi"

        GNF ->
            if plural then
                "Guinean francs"

            else
                "Guinean Franc"

        GTQ ->
            if plural then
                "Guatemalan quetzals"

            else
                "Guatemalan Quetzal"

        HKD ->
            if plural then
                "Hong Kong dollars"

            else
                "Hong Kong Dollar"

        HNL ->
            if plural then
                "Honduran lempiras"

            else
                "Honduran Lempira"

        HRK ->
            if plural then
                "Croatian kunas"

            else
                "Croatian Kuna"

        HUF ->
            if plural then
                "Hungarian forints"

            else
                "Hungarian Forint"

        IDR ->
            if plural then
                "Indonesian rupiahs"

            else
                "Indonesian Rupiah"

        ILS ->
            if plural then
                "Israeli new sheqels"

            else
                "Israeli New Sheqel"

        INR ->
            if plural then
                "Indian rupees"

            else
                "Indian Rupee"

        IQD ->
            if plural then
                "Iraqi dinars"

            else
                "Iraqi Dinar"

        IRR ->
            if plural then
                "Iranian rials"

            else
                "Iranian Rial"

        ISK ->
            if plural then
                "Icelandic krónur"

            else
                "Icelandic Króna"

        JMD ->
            if plural then
                "Jamaican dollars"

            else
                "Jamaican Dollar"

        JOD ->
            if plural then
                "Jordanian dinars"

            else
                "Jordanian Dinar"

        JPY ->
            if plural then
                "Japanese yen"

            else
                "Japanese Yen"

        KES ->
            if plural then
                "Kenyan shillings"

            else
                "Kenyan Shilling"

        KHR ->
            if plural then
                "Cambodian riels"

            else
                "Cambodian Riel"

        KMF ->
            if plural then
                "Comorian francs"

            else
                "Comorian Franc"

        KRW ->
            if plural then
                "South Korean won"

            else
                "South Korean Won"

        KWD ->
            if plural then
                "Kuwaiti dinars"

            else
                "Kuwaiti Dinar"

        KZT ->
            if plural then
                "Kazakhstani tenges"

            else
                "Kazakhstani Tenge"

        LAK ->
            if plural then
                "Lao kips"

            else
                "Lao kip"

        LBP ->
            if plural then
                "Lebanese pounds"

            else
                "Lebanese Pound"

        LKR ->
            if plural then
                "Sri Lankan rupees"

            else
                "Sri Lankan Rupee"

        LTL ->
            if plural then
                "Lithuanian litai"

            else
                "Lithuanian Litas"

        LVL ->
            if plural then
                "Latvian lati"

            else
                "Latvian Lats"

        LYD ->
            if plural then
                "Libyan dinars"

            else
                "Libyan Dinar"

        MAD ->
            if plural then
                "Moroccan dirhams"

            else
                "Moroccan Dirham"

        MDL ->
            if plural then
                "Moldovan lei"

            else
                "Moldovan Leu"

        MGA ->
            if plural then
                "Malagasy Ariaries"

            else
                "Malagasy Ariary"

        MKD ->
            if plural then
                "Macedonian denari"

            else
                "Macedonian Denar"

        MMK ->
            if plural then
                "Myanma kyats"

            else
                "Myanma Kyat"

        MOP ->
            if plural then
                "Macanese patacas"

            else
                "Macanese Pataca"

        MUR ->
            if plural then
                "Mauritian rupees"

            else
                "Mauritian Rupee"

        MXN ->
            if plural then
                "Mexican pesos"

            else
                "Mexican Peso"

        MYR ->
            if plural then
                "Malaysian ringgits"

            else
                "Malaysian Ringgit"

        MZN ->
            if plural then
                "Mozambican meticals"

            else
                "Mozambican Metical"

        NAD ->
            if plural then
                "Namibian dollars"

            else
                "Namibian Dollar"

        NGN ->
            if plural then
                "Nigerian nairas"

            else
                "Nigerian Naira"

        NIO ->
            if plural then
                "Nicaraguan córdobas"

            else
                "Nicaraguan Córdoba"

        NOK ->
            if plural then
                "Norwegian kroner"

            else
                "Norwegian Krone"

        NPR ->
            if plural then
                "Nepalese rupees"

            else
                "Nepalese Rupee"

        NZD ->
            if plural then
                "New Zealand dollars"

            else
                "New Zealand Dollar"

        OMR ->
            if plural then
                "Omani rials"

            else
                "Omani Rial"

        PAB ->
            if plural then
                "Panamanian balboas"

            else
                "Panamanian Balboa"

        PEN ->
            if plural then
                "Peruvian nuevos soles"

            else
                "Peruvian Nuevo Sol"

        PHP ->
            if plural then
                "Philippine pesos"

            else
                "Philippine Peso"

        PKR ->
            if plural then
                "Pakistani rupees"

            else
                "Pakistani Rupee"

        PLN ->
            if plural then
                "Polish zlotys"

            else
                "Polish Zloty"

        PYG ->
            if plural then
                "Paraguayan guaranis"

            else
                "Paraguayan Guarani"

        QAR ->
            if plural then
                "Qatari rials"

            else
                "Qatari Rial"

        RON ->
            if plural then
                "Romanian lei"

            else
                "Romanian Leu"

        RSD ->
            if plural then
                "Serbian dinars"

            else
                "Serbian Dinar"

        RUB ->
            if plural then
                "Russian rubles"

            else
                "Russian Ruble"

        RWF ->
            if plural then
                "Rwandan francs"

            else
                "Rwandan Franc"

        SAR ->
            if plural then
                "Saudi riyals"

            else
                "Saudi Riyal"

        SDG ->
            if plural then
                "Sudanese pounds"

            else
                "Sudanese Pound"

        SEK ->
            if plural then
                "Swedish kronor"

            else
                "Swedish Krona"

        SGD ->
            if plural then
                "Singapore dollars"

            else
                "Singapore Dollar"

        SOS ->
            if plural then
                "Somali shillings"

            else
                "Somali Shilling"

        SYP ->
            if plural then
                "Syrian pounds"

            else
                "Syrian Pound"

        THB ->
            if plural then
                "Thai baht"

            else
                "Thai Baht"

        TND ->
            if plural then
                "Tunisian dinars"

            else
                "Tunisian Dinar"

        TOP ->
            if plural then
                "Tongan paʻanga"

            else
                "Tongan Paʻanga"

        TRY ->
            if plural then
                "Turkish Lira"

            else
                "Turkish Lira"

        TTD ->
            if plural then
                "Trinidad and Tobago dollars"

            else
                "Trinidad and Tobago Dollar"

        TWD ->
            if plural then
                "New Taiwan dollars"

            else
                "New Taiwan Dollar"

        TZS ->
            if plural then
                "Tanzanian shillings"

            else
                "Tanzanian Shilling"

        UAH ->
            if plural then
                "Ukrainian hryvnias"

            else
                "Ukrainian Hryvnia"

        UGX ->
            if plural then
                "Ugandan shillings"

            else
                "Ugandan Shilling"

        UYU ->
            if plural then
                "Uruguayan pesos"

            else
                "Uruguayan Peso"

        UZS ->
            if plural then
                "Uzbekistan som"

            else
                "Uzbekistan Som"

        VEF ->
            if plural then
                "Venezuelan bolívars"

            else
                "Venezuelan Bolívar"

        VND ->
            if plural then
                "Vietnamese dong"

            else
                "Vietnamese Dong"

        XAF ->
            if plural then
                "CFA francs BEAC"

            else
                "CFA Franc BEAC"

        XOF ->
            if plural then
                "CFA francs BCEAO"

            else
                "CFA Franc BCEAO"

        YER ->
            if plural then
                "Yemeni rials"

            else
                "Yemeni Rial"

        ZAR ->
            if plural then
                "South African rand"

            else
                "South African Rand"

        ZMK ->
            if plural then
                "Zambian kwachas"

            else
                "Zambian Kwacha"


{-| Get the number of decimal digits in a currency. of a currency from its code

The decimal digits is basically the size of the smaller unit the currency comes in.
American dollars and Euros, for example, both have cents, and 100 cents make a dollar or Euro. So the decimal
digits for these currencies is `2`. Extreme cases include the Japanese Yen, which has `0`, and
Bitcoin, which has `8`.

-}
toDecimalDigits : Currency -> Int
toDecimalDigits currency =
    case currency of
        USD ->
            2

        CAD ->
            2

        EUR ->
            2

        BTC ->
            8

        AED ->
            2

        AFN ->
            2

        ALL ->
            2

        AMD ->
            2

        ARS ->
            2

        AUD ->
            2

        AZN ->
            2

        BAM ->
            2

        BDT ->
            2

        BGN ->
            2

        BHD ->
            3

        BIF ->
            0

        BND ->
            2

        BOB ->
            2

        BRL ->
            2

        BWP ->
            2

        BYR ->
            0

        BZD ->
            2

        CDF ->
            2

        CHF ->
            2

        CLP ->
            0

        CNY ->
            2

        COP ->
            2

        CRC ->
            2

        CVE ->
            2

        CZK ->
            2

        DJF ->
            0

        DKK ->
            2

        DOP ->
            2

        DZD ->
            2

        EEK ->
            2

        EGP ->
            2

        ERN ->
            2

        ETB ->
            2

        GBP ->
            2

        GEL ->
            2

        GHS ->
            2

        GNF ->
            0

        GTQ ->
            2

        HKD ->
            2

        HNL ->
            2

        HRK ->
            2

        HUF ->
            2

        IDR ->
            2

        ILS ->
            2

        INR ->
            2

        IQD ->
            3

        IRR ->
            2

        ISK ->
            0

        JMD ->
            2

        JOD ->
            3

        JPY ->
            0

        KES ->
            2

        KHR ->
            2

        KMF ->
            0

        KRW ->
            0

        KWD ->
            3

        KZT ->
            2

        LAK ->
            2

        LBP ->
            2

        LKR ->
            2

        LTL ->
            2

        LVL ->
            2

        LYD ->
            3

        MAD ->
            2

        MDL ->
            2

        MGA ->
            2

        MKD ->
            2

        MMK ->
            2

        MOP ->
            2

        MUR ->
            2

        MXN ->
            2

        MYR ->
            2

        MZN ->
            2

        NAD ->
            2

        NGN ->
            2

        NIO ->
            2

        NOK ->
            2

        NPR ->
            2

        NZD ->
            2

        OMR ->
            3

        PAB ->
            2

        PEN ->
            2

        PHP ->
            2

        PKR ->
            2

        PLN ->
            2

        PYG ->
            0

        QAR ->
            2

        RON ->
            2

        RSD ->
            2

        RUB ->
            2

        RWF ->
            0

        SAR ->
            2

        SDG ->
            2

        SEK ->
            2

        SGD ->
            2

        SOS ->
            2

        SYP ->
            2

        THB ->
            2

        TND ->
            3

        TOP ->
            2

        TRY ->
            2

        TTD ->
            2

        TWD ->
            2

        TZS ->
            2

        UAH ->
            2

        UGX ->
            0

        UYU ->
            2

        UZS ->
            2

        VEF ->
            2

        VND ->
            0

        XAF ->
            0

        XOF ->
            0

        YER ->
            2

        ZAR ->
            2

        ZMK ->
            0


{-| Get the currency's code as a `String`

        toString CNY == "CNY"

-}
toString : Currency -> String
toString currency =
    case currency of
        USD ->
            "USD"

        CAD ->
            "CAD"

        EUR ->
            "EUR"

        BTC ->
            "BTC"

        AED ->
            "AED"

        AFN ->
            "AFN"

        ALL ->
            "ALL"

        AMD ->
            "AMD"

        ARS ->
            "ARS"

        AUD ->
            "AUD"

        AZN ->
            "AZN"

        BAM ->
            "BAM"

        BDT ->
            "BDT"

        BGN ->
            "BGN"

        BHD ->
            "BHD"

        BIF ->
            "BIF"

        BND ->
            "BND"

        BOB ->
            "BOB"

        BRL ->
            "BRL"

        BWP ->
            "BWP"

        BYR ->
            "BYR"

        BZD ->
            "BZD"

        CDF ->
            "CDF"

        CHF ->
            "CHF"

        CLP ->
            "CLP"

        CNY ->
            "CNY"

        COP ->
            "COP"

        CRC ->
            "CRC"

        CVE ->
            "CVE"

        CZK ->
            "CZK"

        DJF ->
            "DJF"

        DKK ->
            "DKK"

        DOP ->
            "DOP"

        DZD ->
            "DZD"

        EEK ->
            "EEK"

        EGP ->
            "EGP"

        ERN ->
            "ERN"

        ETB ->
            "ETB"

        GBP ->
            "GBP"

        GEL ->
            "GEL"

        GHS ->
            "GHS"

        GNF ->
            "GNF"

        GTQ ->
            "GTQ"

        HKD ->
            "HKD"

        HNL ->
            "HNL"

        HRK ->
            "HRK"

        HUF ->
            "HUF"

        IDR ->
            "IDR"

        ILS ->
            "ILS"

        INR ->
            "INR"

        IQD ->
            "IQD"

        IRR ->
            "IRR"

        ISK ->
            "ISK"

        JMD ->
            "JMD"

        JOD ->
            "JOD"

        JPY ->
            "JPY"

        KES ->
            "KES"

        KHR ->
            "KHR"

        KMF ->
            "KMF"

        KRW ->
            "KRW"

        KWD ->
            "KWD"

        KZT ->
            "KZT"

        LAK ->
            "LAK"

        LBP ->
            "LBP"

        LKR ->
            "LKR"

        LTL ->
            "LTL"

        LVL ->
            "LVL"

        LYD ->
            "LYD"

        MAD ->
            "MAD"

        MDL ->
            "MDL"

        MGA ->
            "MGA"

        MKD ->
            "MKD"

        MMK ->
            "MMK"

        MOP ->
            "MOP"

        MUR ->
            "MUR"

        MXN ->
            "MXN"

        MYR ->
            "MYR"

        MZN ->
            "MZN"

        NAD ->
            "NAD"

        NGN ->
            "NGN"

        NIO ->
            "NIO"

        NOK ->
            "NOK"

        NPR ->
            "NPR"

        NZD ->
            "NZD"

        OMR ->
            "OMR"

        PAB ->
            "PAB"

        PEN ->
            "PEN"

        PHP ->
            "PHP"

        PKR ->
            "PKR"

        PLN ->
            "PLN"

        PYG ->
            "PYG"

        QAR ->
            "QAR"

        RON ->
            "RON"

        RSD ->
            "RSD"

        RUB ->
            "RUB"

        RWF ->
            "RWF"

        SAR ->
            "SAR"

        SDG ->
            "SDG"

        SEK ->
            "SEK"

        SGD ->
            "SGD"

        SOS ->
            "SOS"

        SYP ->
            "SYP"

        THB ->
            "THB"

        TND ->
            "TND"

        TOP ->
            "TOP"

        TRY ->
            "TRY"

        TTD ->
            "TTD"

        TWD ->
            "TWD"

        TZS ->
            "TZS"

        UAH ->
            "UAH"

        UGX ->
            "UGX"

        UYU ->
            "UYU"

        UZS ->
            "UZS"

        VEF ->
            "VEF"

        VND ->
            "VND"

        XAF ->
            "XAF"

        XOF ->
            "XOF"

        YER ->
            "YER"

        ZAR ->
            "ZAR"

        ZMK ->
            "ZMK"


{-| Attempt to derive a `Currency` from a `String`. This function presumes the `String` is a currency code like `"USD"`.

        fromString "DKK" == Just DKK
        fromString "Danish Krone" == Nothing

-}
fromString : String -> Maybe Currency
fromString str =
    case String.toUpper str of
        "USD" ->
            Just USD

        "CAD" ->
            Just CAD

        "EUR" ->
            Just EUR

        "BTC" ->
            Just BTC

        "AED" ->
            Just AED

        "AFN" ->
            Just AFN

        "ALL" ->
            Just ALL

        "AMD" ->
            Just AMD

        "ARS" ->
            Just ARS

        "AUD" ->
            Just AUD

        "AZN" ->
            Just AZN

        "BAM" ->
            Just BAM

        "BDT" ->
            Just BDT

        "BGN" ->
            Just BGN

        "BHD" ->
            Just BHD

        "BIF" ->
            Just BIF

        "BND" ->
            Just BND

        "BOB" ->
            Just BOB

        "BRL" ->
            Just BRL

        "BWP" ->
            Just BWP

        "BYR" ->
            Just BYR

        "BZD" ->
            Just BZD

        "CDF" ->
            Just CDF

        "CHF" ->
            Just CHF

        "CLP" ->
            Just CLP

        "CNY" ->
            Just CNY

        "COP" ->
            Just COP

        "CRC" ->
            Just CRC

        "CVE" ->
            Just CVE

        "CZK" ->
            Just CZK

        "DJF" ->
            Just DJF

        "DKK" ->
            Just DKK

        "DOP" ->
            Just DOP

        "DZD" ->
            Just DZD

        "EEK" ->
            Just EEK

        "EGP" ->
            Just EGP

        "ERN" ->
            Just ERN

        "ETB" ->
            Just ETB

        "GBP" ->
            Just GBP

        "GEL" ->
            Just GEL

        "GHS" ->
            Just GHS

        "GNF" ->
            Just GNF

        "GTQ" ->
            Just GTQ

        "HKD" ->
            Just HKD

        "HNL" ->
            Just HNL

        "HRK" ->
            Just HRK

        "HUF" ->
            Just HUF

        "IDR" ->
            Just IDR

        "ILS" ->
            Just ILS

        "INR" ->
            Just INR

        "IQD" ->
            Just IQD

        "IRR" ->
            Just IRR

        "ISK" ->
            Just ISK

        "JMD" ->
            Just JMD

        "JOD" ->
            Just JOD

        "JPY" ->
            Just JPY

        "KES" ->
            Just KES

        "KHR" ->
            Just KHR

        "KMF" ->
            Just KMF

        "KRW" ->
            Just KRW

        "KWD" ->
            Just KWD

        "KZT" ->
            Just KZT

        "LAK" ->
            Just LAK

        "LBP" ->
            Just LBP

        "LKR" ->
            Just LKR

        "LTL" ->
            Just LTL

        "LVL" ->
            Just LVL

        "LYD" ->
            Just LYD

        "MAD" ->
            Just MAD

        "MDL" ->
            Just MDL

        "MGA" ->
            Just MGA

        "MKD" ->
            Just MKD

        "MMK" ->
            Just MMK

        "MOP" ->
            Just MOP

        "MUR" ->
            Just MUR

        "MXN" ->
            Just MXN

        "MYR" ->
            Just MYR

        "MZN" ->
            Just MZN

        "NAD" ->
            Just NAD

        "NGN" ->
            Just NGN

        "NIO" ->
            Just NIO

        "NOK" ->
            Just NOK

        "NPR" ->
            Just NPR

        "NZD" ->
            Just NZD

        "OMR" ->
            Just OMR

        "PAB" ->
            Just PAB

        "PEN" ->
            Just PEN

        "PHP" ->
            Just PHP

        "PKR" ->
            Just PKR

        "PLN" ->
            Just PLN

        "PYG" ->
            Just PYG

        "QAR" ->
            Just QAR

        "RON" ->
            Just RON

        "RSD" ->
            Just RSD

        "RUB" ->
            Just RUB

        "RWF" ->
            Just RWF

        "SAR" ->
            Just SAR

        "SDG" ->
            Just SDG

        "SEK" ->
            Just SEK

        "SGD" ->
            Just SGD

        "SOS" ->
            Just SOS

        "SYP" ->
            Just SYP

        "THB" ->
            Just THB

        "TND" ->
            Just TND

        "TOP" ->
            Just TOP

        "TRY" ->
            Just TRY

        "TTD" ->
            Just TTD

        "TWD" ->
            Just TWD

        "TZS" ->
            Just TZS

        "UAH" ->
            Just UAH

        "UGX" ->
            Just UGX

        "UYU" ->
            Just UYU

        "UZS" ->
            Just UZS

        "VEF" ->
            Just VEF

        "VND" ->
            Just VND

        "XAF" ->
            Just XAF

        "XOF" ->
            Just XOF

        "YER" ->
            Just YER

        "ZAR" ->
            Just ZAR

        "ZMK" ->
            Just ZMK

        _ ->
            Nothing


{-| All the currency codes in a list

    all =
        [ USD
        , EUR
        , CAD

        --..
        ]

-}
all : List Currency
all =
    [ USD
    , CAD
    , EUR
    , BTC
    , AED
    , AFN
    , ALL
    , AMD
    , ARS
    , AUD
    , AZN
    , BAM
    , BDT
    , BGN
    , BHD
    , BIF
    , BND
    , BOB
    , BRL
    , BWP
    , BYR
    , BZD
    , CDF
    , CHF
    , CLP
    , CNY
    , COP
    , CRC
    , CVE
    , CZK
    , DJF
    , DKK
    , DOP
    , DZD
    , EEK
    , EGP
    , ERN
    , ETB
    , GBP
    , GEL
    , GHS
    , GNF
    , GTQ
    , HKD
    , HNL
    , HRK
    , HUF
    , IDR
    , ILS
    , INR
    , IQD
    , IRR
    , ISK
    , JMD
    , JOD
    , JPY
    , KES
    , KHR
    , KMF
    , KRW
    , KWD
    , KZT
    , LAK
    , LBP
    , LKR
    , LTL
    , LVL
    , LYD
    , MAD
    , MDL
    , MGA
    , MKD
    , MMK
    , MOP
    , MUR
    , MXN
    , MYR
    , MZN
    , NAD
    , NGN
    , NIO
    , NOK
    , NPR
    , NZD
    , OMR
    , PAB
    , PEN
    , PHP
    , PKR
    , PLN
    , PYG
    , QAR
    , RON
    , RSD
    , RUB
    , RWF
    , SAR
    , SDG
    , SEK
    , SGD
    , SOS
    , SYP
    , THB
    , TND
    , TOP
    , TRY
    , TTD
    , TWD
    , TZS
    , UAH
    , UGX
    , UYU
    , UZS
    , VEF
    , VND
    , XAF
    , XOF
    , YER
    , ZAR
    , ZMK
    ]


{-| A type representing the US Dollar

Useful for phantom type currency functions. Checkout (this blog post)[https://thoughtbot.com/blog/modeling-currency-in-elm-using-phantom-types] to understand what that all means.

-}
type USD
    = USD__UNIT


{-| A type representing the Canadian Dollar

Useful for phantom type currency functions. Checkout (this blog post)[https://thoughtbot.com/blog/modeling-currency-in-elm-using-phantom-types] to understand what that all means.

-}
type CAD
    = CAD__UNIT


{-| A type representing the Euro

Useful for phantom type currency functions. Checkout (this blog post)[https://thoughtbot.com/blog/modeling-currency-in-elm-using-phantom-types] to understand what that all means.

-}
type EUR
    = EUR__UNIT


{-| A type representing the Bitcoin

Useful for phantom type currency functions. Checkout (this blog post)[https://thoughtbot.com/blog/modeling-currency-in-elm-using-phantom-types] to understand what that all means.

-}
type BTC
    = BTC__UNIT


{-| A type representing the United Arab Emirates Dirham

Useful for phantom type currency functions. Checkout (this blog post)[https://thoughtbot.com/blog/modeling-currency-in-elm-using-phantom-types] to understand what that all means.

-}
type AED
    = AED__UNIT


{-| A type representing the Afghan Afghani

Useful for phantom type currency functions. Checkout (this blog post)[https://thoughtbot.com/blog/modeling-currency-in-elm-using-phantom-types] to understand what that all means.

-}
type AFN
    = AFN__UNIT


{-| A type representing the Albanian Lek

Useful for phantom type currency functions. Checkout (this blog post)[https://thoughtbot.com/blog/modeling-currency-in-elm-using-phantom-types] to understand what that all means.

-}
type ALL
    = ALL__UNIT


{-| A type representing the Armenian Dram

Useful for phantom type currency functions. Checkout (this blog post)[https://thoughtbot.com/blog/modeling-currency-in-elm-using-phantom-types] to understand what that all means.

-}
type AMD
    = AMD__UNIT


{-| A type representing the Argentine Peso

Useful for phantom type currency functions. Checkout (this blog post)[https://thoughtbot.com/blog/modeling-currency-in-elm-using-phantom-types] to understand what that all means.

-}
type ARS
    = ARS__UNIT


{-| A type representing the Australian Dollar

Useful for phantom type currency functions. Checkout (this blog post)[https://thoughtbot.com/blog/modeling-currency-in-elm-using-phantom-types] to understand what that all means.

-}
type AUD
    = AUD__UNIT


{-| A type representing the Azerbaijani Manat

Useful for phantom type currency functions. Checkout (this blog post)[https://thoughtbot.com/blog/modeling-currency-in-elm-using-phantom-types] to understand what that all means.

-}
type AZN
    = AZN__UNIT


{-| A type representing the Bosnia-Herzegovina Convertible Mark

Useful for phantom type currency functions. Checkout (this blog post)[https://thoughtbot.com/blog/modeling-currency-in-elm-using-phantom-types] to understand what that all means.

-}
type BAM
    = BAM__UNIT


{-| A type representing the Bangladeshi Taka

Useful for phantom type currency functions. Checkout (this blog post)[https://thoughtbot.com/blog/modeling-currency-in-elm-using-phantom-types] to understand what that all means.

-}
type BDT
    = BDT__UNIT


{-| A type representing the Bulgarian Lev

Useful for phantom type currency functions. Checkout (this blog post)[https://thoughtbot.com/blog/modeling-currency-in-elm-using-phantom-types] to understand what that all means.

-}
type BGN
    = BGN__UNIT


{-| A type representing the Bahraini Dinar

Useful for phantom type currency functions. Checkout (this blog post)[https://thoughtbot.com/blog/modeling-currency-in-elm-using-phantom-types] to understand what that all means.

-}
type BHD
    = BHD__UNIT


{-| A type representing the Burundian Franc

Useful for phantom type currency functions. Checkout (this blog post)[https://thoughtbot.com/blog/modeling-currency-in-elm-using-phantom-types] to understand what that all means.

-}
type BIF
    = BIF__UNIT


{-| A type representing the Brunei Dollar

Useful for phantom type currency functions. Checkout (this blog post)[https://thoughtbot.com/blog/modeling-currency-in-elm-using-phantom-types] to understand what that all means.

-}
type BND
    = BND__UNIT


{-| A type representing the Bolivian Boliviano

Useful for phantom type currency functions. Checkout (this blog post)[https://thoughtbot.com/blog/modeling-currency-in-elm-using-phantom-types] to understand what that all means.

-}
type BOB
    = BOB__UNIT


{-| A type representing the Brazilian Real

Useful for phantom type currency functions. Checkout (this blog post)[https://thoughtbot.com/blog/modeling-currency-in-elm-using-phantom-types] to understand what that all means.

-}
type BRL
    = BRL__UNIT


{-| A type representing the Botswanan Pula

Useful for phantom type currency functions. Checkout (this blog post)[https://thoughtbot.com/blog/modeling-currency-in-elm-using-phantom-types] to understand what that all means.

-}
type BWP
    = BWP__UNIT


{-| A type representing the Belarusian Ruble

Useful for phantom type currency functions. Checkout (this blog post)[https://thoughtbot.com/blog/modeling-currency-in-elm-using-phantom-types] to understand what that all means.

-}
type BYR
    = BYR__UNIT


{-| A type representing the Belize Dollar

Useful for phantom type currency functions. Checkout (this blog post)[https://thoughtbot.com/blog/modeling-currency-in-elm-using-phantom-types] to understand what that all means.

-}
type BZD
    = BZD__UNIT


{-| A type representing the Congolese Franc

Useful for phantom type currency functions. Checkout (this blog post)[https://thoughtbot.com/blog/modeling-currency-in-elm-using-phantom-types] to understand what that all means.

-}
type CDF
    = CDF__UNIT


{-| A type representing the Swiss Franc

Useful for phantom type currency functions. Checkout (this blog post)[https://thoughtbot.com/blog/modeling-currency-in-elm-using-phantom-types] to understand what that all means.

-}
type CHF
    = CHF__UNIT


{-| A type representing the Chilean Peso

Useful for phantom type currency functions. Checkout (this blog post)[https://thoughtbot.com/blog/modeling-currency-in-elm-using-phantom-types] to understand what that all means.

-}
type CLP
    = CLP__UNIT


{-| A type representing the Chinese Yuan

Useful for phantom type currency functions. Checkout (this blog post)[https://thoughtbot.com/blog/modeling-currency-in-elm-using-phantom-types] to understand what that all means.

-}
type CNY
    = CNY__UNIT


{-| A type representing the Colombian Peso

Useful for phantom type currency functions. Checkout (this blog post)[https://thoughtbot.com/blog/modeling-currency-in-elm-using-phantom-types] to understand what that all means.

-}
type COP
    = COP__UNIT


{-| A type representing the Costa Rican Colón

Useful for phantom type currency functions. Checkout (this blog post)[https://thoughtbot.com/blog/modeling-currency-in-elm-using-phantom-types] to understand what that all means.

-}
type CRC
    = CRC__UNIT


{-| A type representing the Cape Verdean Escudo

Useful for phantom type currency functions. Checkout (this blog post)[https://thoughtbot.com/blog/modeling-currency-in-elm-using-phantom-types] to understand what that all means.

-}
type CVE
    = CVE__UNIT


{-| A type representing the Czech Republic Koruna

Useful for phantom type currency functions. Checkout (this blog post)[https://thoughtbot.com/blog/modeling-currency-in-elm-using-phantom-types] to understand what that all means.

-}
type CZK
    = CZK__UNIT


{-| A type representing the Djiboutian Franc

Useful for phantom type currency functions. Checkout (this blog post)[https://thoughtbot.com/blog/modeling-currency-in-elm-using-phantom-types] to understand what that all means.

-}
type DJF
    = DJF__UNIT


{-| A type representing the Danish Krone

Useful for phantom type currency functions. Checkout (this blog post)[https://thoughtbot.com/blog/modeling-currency-in-elm-using-phantom-types] to understand what that all means.

-}
type DKK
    = DKK__UNIT


{-| A type representing the Dominican Peso

Useful for phantom type currency functions. Checkout (this blog post)[https://thoughtbot.com/blog/modeling-currency-in-elm-using-phantom-types] to understand what that all means.

-}
type DOP
    = DOP__UNIT


{-| A type representing the Algerian Dinar

Useful for phantom type currency functions. Checkout (this blog post)[https://thoughtbot.com/blog/modeling-currency-in-elm-using-phantom-types] to understand what that all means.

-}
type DZD
    = DZD__UNIT


{-| A type representing the Estonian Kroon

Useful for phantom type currency functions. Checkout (this blog post)[https://thoughtbot.com/blog/modeling-currency-in-elm-using-phantom-types] to understand what that all means.

-}
type EEK
    = EEK__UNIT


{-| A type representing the Egyptian Pound

Useful for phantom type currency functions. Checkout (this blog post)[https://thoughtbot.com/blog/modeling-currency-in-elm-using-phantom-types] to understand what that all means.

-}
type EGP
    = EGP__UNIT


{-| A type representing the Eritrean Nakfa

Useful for phantom type currency functions. Checkout (this blog post)[https://thoughtbot.com/blog/modeling-currency-in-elm-using-phantom-types] to understand what that all means.

-}
type ERN
    = ERN__UNIT


{-| A type representing the Ethiopian Birr

Useful for phantom type currency functions. Checkout (this blog post)[https://thoughtbot.com/blog/modeling-currency-in-elm-using-phantom-types] to understand what that all means.

-}
type ETB
    = ETB__UNIT


{-| A type representing the British Pound Sterling

Useful for phantom type currency functions. Checkout (this blog post)[https://thoughtbot.com/blog/modeling-currency-in-elm-using-phantom-types] to understand what that all means.

-}
type GBP
    = GBP__UNIT


{-| A type representing the Georgian Lari

Useful for phantom type currency functions. Checkout (this blog post)[https://thoughtbot.com/blog/modeling-currency-in-elm-using-phantom-types] to understand what that all means.

-}
type GEL
    = GEL__UNIT


{-| A type representing the Ghanaian Cedi

Useful for phantom type currency functions. Checkout (this blog post)[https://thoughtbot.com/blog/modeling-currency-in-elm-using-phantom-types] to understand what that all means.

-}
type GHS
    = GHS__UNIT


{-| A type representing the Guinean Franc

Useful for phantom type currency functions. Checkout (this blog post)[https://thoughtbot.com/blog/modeling-currency-in-elm-using-phantom-types] to understand what that all means.

-}
type GNF
    = GNF__UNIT


{-| A type representing the Guatemalan Quetzal

Useful for phantom type currency functions. Checkout (this blog post)[https://thoughtbot.com/blog/modeling-currency-in-elm-using-phantom-types] to understand what that all means.

-}
type GTQ
    = GTQ__UNIT


{-| A type representing the Hong Kong Dollar

Useful for phantom type currency functions. Checkout (this blog post)[https://thoughtbot.com/blog/modeling-currency-in-elm-using-phantom-types] to understand what that all means.

-}
type HKD
    = HKD__UNIT


{-| A type representing the Honduran Lempira

Useful for phantom type currency functions. Checkout (this blog post)[https://thoughtbot.com/blog/modeling-currency-in-elm-using-phantom-types] to understand what that all means.

-}
type HNL
    = HNL__UNIT


{-| A type representing the Croatian Kuna

Useful for phantom type currency functions. Checkout (this blog post)[https://thoughtbot.com/blog/modeling-currency-in-elm-using-phantom-types] to understand what that all means.

-}
type HRK
    = HRK__UNIT


{-| A type representing the Hungarian Forint

Useful for phantom type currency functions. Checkout (this blog post)[https://thoughtbot.com/blog/modeling-currency-in-elm-using-phantom-types] to understand what that all means.

-}
type HUF
    = HUF__UNIT


{-| A type representing the Indonesian Rupiah

Useful for phantom type currency functions. Checkout (this blog post)[https://thoughtbot.com/blog/modeling-currency-in-elm-using-phantom-types] to understand what that all means.

-}
type IDR
    = IDR__UNIT


{-| A type representing the Israeli New Sheqel

Useful for phantom type currency functions. Checkout (this blog post)[https://thoughtbot.com/blog/modeling-currency-in-elm-using-phantom-types] to understand what that all means.

-}
type ILS
    = ILS__UNIT


{-| A type representing the Indian Rupee

Useful for phantom type currency functions. Checkout (this blog post)[https://thoughtbot.com/blog/modeling-currency-in-elm-using-phantom-types] to understand what that all means.

-}
type INR
    = INR__UNIT


{-| A type representing the Iraqi Dinar

Useful for phantom type currency functions. Checkout (this blog post)[https://thoughtbot.com/blog/modeling-currency-in-elm-using-phantom-types] to understand what that all means.

-}
type IQD
    = IQD__UNIT


{-| A type representing the Iranian Rial

Useful for phantom type currency functions. Checkout (this blog post)[https://thoughtbot.com/blog/modeling-currency-in-elm-using-phantom-types] to understand what that all means.

-}
type IRR
    = IRR__UNIT


{-| A type representing the Icelandic Króna

Useful for phantom type currency functions. Checkout (this blog post)[https://thoughtbot.com/blog/modeling-currency-in-elm-using-phantom-types] to understand what that all means.

-}
type ISK
    = ISK__UNIT


{-| A type representing the Jamaican Dollar

Useful for phantom type currency functions. Checkout (this blog post)[https://thoughtbot.com/blog/modeling-currency-in-elm-using-phantom-types] to understand what that all means.

-}
type JMD
    = JMD__UNIT


{-| A type representing the Jordanian Dinar

Useful for phantom type currency functions. Checkout (this blog post)[https://thoughtbot.com/blog/modeling-currency-in-elm-using-phantom-types] to understand what that all means.

-}
type JOD
    = JOD__UNIT


{-| A type representing the Japanese Yen

Useful for phantom type currency functions. Checkout (this blog post)[https://thoughtbot.com/blog/modeling-currency-in-elm-using-phantom-types] to understand what that all means.

-}
type JPY
    = JPY__UNIT


{-| A type representing the Kenyan Shilling

Useful for phantom type currency functions. Checkout (this blog post)[https://thoughtbot.com/blog/modeling-currency-in-elm-using-phantom-types] to understand what that all means.

-}
type KES
    = KES__UNIT


{-| A type representing the Cambodian Riel

Useful for phantom type currency functions. Checkout (this blog post)[https://thoughtbot.com/blog/modeling-currency-in-elm-using-phantom-types] to understand what that all means.

-}
type KHR
    = KHR__UNIT


{-| A type representing the Comorian Franc

Useful for phantom type currency functions. Checkout (this blog post)[https://thoughtbot.com/blog/modeling-currency-in-elm-using-phantom-types] to understand what that all means.

-}
type KMF
    = KMF__UNIT


{-| A type representing the South Korean Won

Useful for phantom type currency functions. Checkout (this blog post)[https://thoughtbot.com/blog/modeling-currency-in-elm-using-phantom-types] to understand what that all means.

-}
type KRW
    = KRW__UNIT


{-| A type representing the Kuwaiti Dinar

Useful for phantom type currency functions. Checkout (this blog post)[https://thoughtbot.com/blog/modeling-currency-in-elm-using-phantom-types] to understand what that all means.

-}
type KWD
    = KWD__UNIT


{-| A type representing the Kazakhstani Tenge

Useful for phantom type currency functions. Checkout (this blog post)[https://thoughtbot.com/blog/modeling-currency-in-elm-using-phantom-types] to understand what that all means.

-}
type KZT
    = KZT__UNIT


{-| A type representing the Lao kip

Useful for phantom type currency functions. Checkout (this blog post)[https://thoughtbot.com/blog/modeling-currency-in-elm-using-phantom-types] to understand what that all means.

-}
type LAK
    = LAK__UNIT


{-| A type representing the Lebanese Pound

Useful for phantom type currency functions. Checkout (this blog post)[https://thoughtbot.com/blog/modeling-currency-in-elm-using-phantom-types] to understand what that all means.

-}
type LBP
    = LBP__UNIT


{-| A type representing the Sri Lankan Rupee

Useful for phantom type currency functions. Checkout (this blog post)[https://thoughtbot.com/blog/modeling-currency-in-elm-using-phantom-types] to understand what that all means.

-}
type LKR
    = LKR__UNIT


{-| A type representing the Lithuanian Litas

Useful for phantom type currency functions. Checkout (this blog post)[https://thoughtbot.com/blog/modeling-currency-in-elm-using-phantom-types] to understand what that all means.

-}
type LTL
    = LTL__UNIT


{-| A type representing the Latvian Lats

Useful for phantom type currency functions. Checkout (this blog post)[https://thoughtbot.com/blog/modeling-currency-in-elm-using-phantom-types] to understand what that all means.

-}
type LVL
    = LVL__UNIT


{-| A type representing the Libyan Dinar

Useful for phantom type currency functions. Checkout (this blog post)[https://thoughtbot.com/blog/modeling-currency-in-elm-using-phantom-types] to understand what that all means.

-}
type LYD
    = LYD__UNIT


{-| A type representing the Moroccan Dirham

Useful for phantom type currency functions. Checkout (this blog post)[https://thoughtbot.com/blog/modeling-currency-in-elm-using-phantom-types] to understand what that all means.

-}
type MAD
    = MAD__UNIT


{-| A type representing the Moldovan Leu

Useful for phantom type currency functions. Checkout (this blog post)[https://thoughtbot.com/blog/modeling-currency-in-elm-using-phantom-types] to understand what that all means.

-}
type MDL
    = MDL__UNIT


{-| A type representing the Malagasy Ariary

Useful for phantom type currency functions. Checkout (this blog post)[https://thoughtbot.com/blog/modeling-currency-in-elm-using-phantom-types] to understand what that all means.

-}
type MGA
    = MGA__UNIT


{-| A type representing the Macedonian Denar

Useful for phantom type currency functions. Checkout (this blog post)[https://thoughtbot.com/blog/modeling-currency-in-elm-using-phantom-types] to understand what that all means.

-}
type MKD
    = MKD__UNIT


{-| A type representing the Myanma Kyat

Useful for phantom type currency functions. Checkout (this blog post)[https://thoughtbot.com/blog/modeling-currency-in-elm-using-phantom-types] to understand what that all means.

-}
type MMK
    = MMK__UNIT


{-| A type representing the Macanese Pataca

Useful for phantom type currency functions. Checkout (this blog post)[https://thoughtbot.com/blog/modeling-currency-in-elm-using-phantom-types] to understand what that all means.

-}
type MOP
    = MOP__UNIT


{-| A type representing the Mauritian Rupee

Useful for phantom type currency functions. Checkout (this blog post)[https://thoughtbot.com/blog/modeling-currency-in-elm-using-phantom-types] to understand what that all means.

-}
type MUR
    = MUR__UNIT


{-| A type representing the Mexican Peso

Useful for phantom type currency functions. Checkout (this blog post)[https://thoughtbot.com/blog/modeling-currency-in-elm-using-phantom-types] to understand what that all means.

-}
type MXN
    = MXN__UNIT


{-| A type representing the Malaysian Ringgit

Useful for phantom type currency functions. Checkout (this blog post)[https://thoughtbot.com/blog/modeling-currency-in-elm-using-phantom-types] to understand what that all means.

-}
type MYR
    = MYR__UNIT


{-| A type representing the Mozambican Metical

Useful for phantom type currency functions. Checkout (this blog post)[https://thoughtbot.com/blog/modeling-currency-in-elm-using-phantom-types] to understand what that all means.

-}
type MZN
    = MZN__UNIT


{-| A type representing the Namibian Dollar

Useful for phantom type currency functions. Checkout (this blog post)[https://thoughtbot.com/blog/modeling-currency-in-elm-using-phantom-types] to understand what that all means.

-}
type NAD
    = NAD__UNIT


{-| A type representing the Nigerian Naira

Useful for phantom type currency functions. Checkout (this blog post)[https://thoughtbot.com/blog/modeling-currency-in-elm-using-phantom-types] to understand what that all means.

-}
type NGN
    = NGN__UNIT


{-| A type representing the Nicaraguan Córdoba

Useful for phantom type currency functions. Checkout (this blog post)[https://thoughtbot.com/blog/modeling-currency-in-elm-using-phantom-types] to understand what that all means.

-}
type NIO
    = NIO__UNIT


{-| A type representing the Norwegian Krone

Useful for phantom type currency functions. Checkout (this blog post)[https://thoughtbot.com/blog/modeling-currency-in-elm-using-phantom-types] to understand what that all means.

-}
type NOK
    = NOK__UNIT


{-| A type representing the Nepalese Rupee

Useful for phantom type currency functions. Checkout (this blog post)[https://thoughtbot.com/blog/modeling-currency-in-elm-using-phantom-types] to understand what that all means.

-}
type NPR
    = NPR__UNIT


{-| A type representing the New Zealand Dollar

Useful for phantom type currency functions. Checkout (this blog post)[https://thoughtbot.com/blog/modeling-currency-in-elm-using-phantom-types] to understand what that all means.

-}
type NZD
    = NZD__UNIT


{-| A type representing the Omani Rial

Useful for phantom type currency functions. Checkout (this blog post)[https://thoughtbot.com/blog/modeling-currency-in-elm-using-phantom-types] to understand what that all means.

-}
type OMR
    = OMR__UNIT


{-| A type representing the Panamanian Balboa

Useful for phantom type currency functions. Checkout (this blog post)[https://thoughtbot.com/blog/modeling-currency-in-elm-using-phantom-types] to understand what that all means.

-}
type PAB
    = PAB__UNIT


{-| A type representing the Peruvian Nuevo Sol

Useful for phantom type currency functions. Checkout (this blog post)[https://thoughtbot.com/blog/modeling-currency-in-elm-using-phantom-types] to understand what that all means.

-}
type PEN
    = PEN__UNIT


{-| A type representing the Philippine Peso

Useful for phantom type currency functions. Checkout (this blog post)[https://thoughtbot.com/blog/modeling-currency-in-elm-using-phantom-types] to understand what that all means.

-}
type PHP
    = PHP__UNIT


{-| A type representing the Pakistani Rupee

Useful for phantom type currency functions. Checkout (this blog post)[https://thoughtbot.com/blog/modeling-currency-in-elm-using-phantom-types] to understand what that all means.

-}
type PKR
    = PKR__UNIT


{-| A type representing the Polish Zloty

Useful for phantom type currency functions. Checkout (this blog post)[https://thoughtbot.com/blog/modeling-currency-in-elm-using-phantom-types] to understand what that all means.

-}
type PLN
    = PLN__UNIT


{-| A type representing the Paraguayan Guarani

Useful for phantom type currency functions. Checkout (this blog post)[https://thoughtbot.com/blog/modeling-currency-in-elm-using-phantom-types] to understand what that all means.

-}
type PYG
    = PYG__UNIT


{-| A type representing the Qatari Rial

Useful for phantom type currency functions. Checkout (this blog post)[https://thoughtbot.com/blog/modeling-currency-in-elm-using-phantom-types] to understand what that all means.

-}
type QAR
    = QAR__UNIT


{-| A type representing the Romanian Leu

Useful for phantom type currency functions. Checkout (this blog post)[https://thoughtbot.com/blog/modeling-currency-in-elm-using-phantom-types] to understand what that all means.

-}
type RON
    = RON__UNIT


{-| A type representing the Serbian Dinar

Useful for phantom type currency functions. Checkout (this blog post)[https://thoughtbot.com/blog/modeling-currency-in-elm-using-phantom-types] to understand what that all means.

-}
type RSD
    = RSD__UNIT


{-| A type representing the Russian Ruble

Useful for phantom type currency functions. Checkout (this blog post)[https://thoughtbot.com/blog/modeling-currency-in-elm-using-phantom-types] to understand what that all means.

-}
type RUB
    = RUB__UNIT


{-| A type representing the Rwandan Franc

Useful for phantom type currency functions. Checkout (this blog post)[https://thoughtbot.com/blog/modeling-currency-in-elm-using-phantom-types] to understand what that all means.

-}
type RWF
    = RWF__UNIT


{-| A type representing the Saudi Riyal

Useful for phantom type currency functions. Checkout (this blog post)[https://thoughtbot.com/blog/modeling-currency-in-elm-using-phantom-types] to understand what that all means.

-}
type SAR
    = SAR__UNIT


{-| A type representing the Sudanese Pound

Useful for phantom type currency functions. Checkout (this blog post)[https://thoughtbot.com/blog/modeling-currency-in-elm-using-phantom-types] to understand what that all means.

-}
type SDG
    = SDG__UNIT


{-| A type representing the Swedish Krona

Useful for phantom type currency functions. Checkout (this blog post)[https://thoughtbot.com/blog/modeling-currency-in-elm-using-phantom-types] to understand what that all means.

-}
type SEK
    = SEK__UNIT


{-| A type representing the Singapore Dollar

Useful for phantom type currency functions. Checkout (this blog post)[https://thoughtbot.com/blog/modeling-currency-in-elm-using-phantom-types] to understand what that all means.

-}
type SGD
    = SGD__UNIT


{-| A type representing the Somali Shilling

Useful for phantom type currency functions. Checkout (this blog post)[https://thoughtbot.com/blog/modeling-currency-in-elm-using-phantom-types] to understand what that all means.

-}
type SOS
    = SOS__UNIT


{-| A type representing the Syrian Pound

Useful for phantom type currency functions. Checkout (this blog post)[https://thoughtbot.com/blog/modeling-currency-in-elm-using-phantom-types] to understand what that all means.

-}
type SYP
    = SYP__UNIT


{-| A type representing the Thai Baht

Useful for phantom type currency functions. Checkout (this blog post)[https://thoughtbot.com/blog/modeling-currency-in-elm-using-phantom-types] to understand what that all means.

-}
type THB
    = THB__UNIT


{-| A type representing the Tunisian Dinar

Useful for phantom type currency functions. Checkout (this blog post)[https://thoughtbot.com/blog/modeling-currency-in-elm-using-phantom-types] to understand what that all means.

-}
type TND
    = TND__UNIT


{-| A type representing the Tongan Paʻanga

Useful for phantom type currency functions. Checkout (this blog post)[https://thoughtbot.com/blog/modeling-currency-in-elm-using-phantom-types] to understand what that all means.

-}
type TOP
    = TOP__UNIT


{-| A type representing the Turkish Lira

Useful for phantom type currency functions. Checkout (this blog post)[https://thoughtbot.com/blog/modeling-currency-in-elm-using-phantom-types] to understand what that all means.

-}
type TRY
    = TRY__UNIT


{-| A type representing the Trinidad and Tobago Dollar

Useful for phantom type currency functions. Checkout (this blog post)[https://thoughtbot.com/blog/modeling-currency-in-elm-using-phantom-types] to understand what that all means.

-}
type TTD
    = TTD__UNIT


{-| A type representing the New Taiwan Dollar

Useful for phantom type currency functions. Checkout (this blog post)[https://thoughtbot.com/blog/modeling-currency-in-elm-using-phantom-types] to understand what that all means.

-}
type TWD
    = TWD__UNIT


{-| A type representing the Tanzanian Shilling

Useful for phantom type currency functions. Checkout (this blog post)[https://thoughtbot.com/blog/modeling-currency-in-elm-using-phantom-types] to understand what that all means.

-}
type TZS
    = TZS__UNIT


{-| A type representing the Ukrainian Hryvnia

Useful for phantom type currency functions. Checkout (this blog post)[https://thoughtbot.com/blog/modeling-currency-in-elm-using-phantom-types] to understand what that all means.

-}
type UAH
    = UAH__UNIT


{-| A type representing the Ugandan Shilling

Useful for phantom type currency functions. Checkout (this blog post)[https://thoughtbot.com/blog/modeling-currency-in-elm-using-phantom-types] to understand what that all means.

-}
type UGX
    = UGX__UNIT


{-| A type representing the Uruguayan Peso

Useful for phantom type currency functions. Checkout (this blog post)[https://thoughtbot.com/blog/modeling-currency-in-elm-using-phantom-types] to understand what that all means.

-}
type UYU
    = UYU__UNIT


{-| A type representing the Uzbekistan Som

Useful for phantom type currency functions. Checkout (this blog post)[https://thoughtbot.com/blog/modeling-currency-in-elm-using-phantom-types] to understand what that all means.

-}
type UZS
    = UZS__UNIT


{-| A type representing the Venezuelan Bolívar

Useful for phantom type currency functions. Checkout (this blog post)[https://thoughtbot.com/blog/modeling-currency-in-elm-using-phantom-types] to understand what that all means.

-}
type VEF
    = VEF__UNIT


{-| A type representing the Vietnamese Dong

Useful for phantom type currency functions. Checkout (this blog post)[https://thoughtbot.com/blog/modeling-currency-in-elm-using-phantom-types] to understand what that all means.

-}
type VND
    = VND__UNIT


{-| A type representing the CFA Franc BEAC

Useful for phantom type currency functions. Checkout (this blog post)[https://thoughtbot.com/blog/modeling-currency-in-elm-using-phantom-types] to understand what that all means.

-}
type XAF
    = XAF__UNIT


{-| A type representing the CFA Franc BCEAO

Useful for phantom type currency functions. Checkout (this blog post)[https://thoughtbot.com/blog/modeling-currency-in-elm-using-phantom-types] to understand what that all means.

-}
type XOF
    = XOF__UNIT


{-| A type representing the Yemeni Rial

Useful for phantom type currency functions. Checkout (this blog post)[https://thoughtbot.com/blog/modeling-currency-in-elm-using-phantom-types] to understand what that all means.

-}
type YER
    = YER__UNIT


{-| A type representing the South African Rand

Useful for phantom type currency functions. Checkout (this blog post)[https://thoughtbot.com/blog/modeling-currency-in-elm-using-phantom-types] to understand what that all means.

-}
type ZAR
    = ZAR__UNIT


{-| A type representing the Zambian Kwacha

Useful for phantom type currency functions. Checkout (this blog post)[https://thoughtbot.com/blog/modeling-currency-in-elm-using-phantom-types] to understand what that all means.

-}
type ZMK
    = ZMK__UNIT
