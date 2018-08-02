module Money
    exposing
        ( Code(..)
        , Currency
        , aed
        , afn
        , all
        , allCodes
        , allCurrencies
        , amd
        , ars
        , aud
        , azn
        , bam
        , bdt
        , bgn
        , bhd
        , bif
        , bnd
        , bob
        , brl
        , btc
        , bwp
        , byr
        , bzd
        , cad
        , cdf
        , chf
        , clp
        , cny
        , codeFromString
        , cop
        , crc
        , currencyFromCode
        , currencyFromString
        , cve
        , czk
        , djf
        , dkk
        , dop
        , dzd
        , eek
        , egp
        , ern
        , etb
        , eur
        , gbp
        , gel
        , ghs
        , gnf
        , gtq
        , hkd
        , hnl
        , hrk
        , huf
        , idr
        , ils
        , inr
        , iqd
        , irr
        , isk
        , jmd
        , jod
        , jpy
        , kes
        , khr
        , kmf
        , krw
        , kwd
        , kzt
        , lak
        , lbp
        , lkr
        , ltl
        , lvl
        , lyd
        , mad
        , mdl
        , mga
        , mkd
        , mmk
        , mop
        , mur
        , mxn
        , myr
        , mzn
        , nad
        , ngn
        , nio
        , nok
        , npr
        , nzd
        , omr
        , pab
        , pen
        , php
        , pkr
        , pln
        , pyg
        , qar
        , ron
        , rsd
        , rub
        , rwf
        , sar
        , sdg
        , sek
        , sgd
        , sos
        , syp
        , thb
        , tnd
        , top
        , try
        , ttd
        , twd
        , tzs
        , uah
        , ugx
        , usd
        , uyu
        , uzs
        , vef
        , vnd
        , xaf
        , xof
        , yer
        , zar
        , zmk
        )

{-| All the worlds currencies as records and union types, with helper functions too.


# Types

@docs Currency, Code


# Values

@docs allCurrencies, allCodes


# Helpers

@docs currencyFromString, currencyFromCode, codeFromString


# Currencies

@docs usd, cad, eur, btc, aed, afn, all, amd, ars, aud, azn, bam, bdt, bgn, bhd, bif, bnd, bob, brl, bwp, byr, bzd, cdf, chf, clp, cny, cop, crc, cve, czk, djf, dkk, dop, dzd, eek, egp, ern, etb, gbp, gel, ghs, gnf, gtq, hkd, hnl, hrk, huf, idr, ils, inr, iqd, irr, isk, jmd, jod, jpy, kes, khr, kmf, krw, kwd, kzt, lak, lbp, lkr, ltl, lvl, lyd, mad, mdl, mga, mkd, mmk, mop, mur, mxn, myr, mzn, nad, ngn, nio, nok, npr, nzd, omr, pab, pen, php, pkr, pln, pyg, qar, ron, rsd, rub, rwf, sar, sdg, sek, sgd, sos, syp, thb, tnd, top, try, ttd, twd, tzs, uah, ugx, uyu, uzs, vef, vnd, xaf, xof, yer, zar, zmk

-}


{-| -}
type alias Currency =
    { symbol : String
    , name : String
    , namePlural : String
    , symbolNative : String
    , decimalDigits : Int
    , rounding : Float
    , code : String
    }


{-| This type represents all the possible currency codes
-}
type Code
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


{-| A list of all the currencies
-}
allCurrencies : List Currency
allCurrencies =
    [ usd
    , cad
    , eur
    , btc
    , aed
    , afn
    , all
    , amd
    , ars
    , aud
    , azn
    , bam
    , bdt
    , bgn
    , bhd
    , bif
    , bnd
    , bob
    , brl
    , bwp
    , byr
    , bzd
    , cdf
    , chf
    , clp
    , cny
    , cop
    , crc
    , cve
    , czk
    , djf
    , dkk
    , dop
    , dzd
    , eek
    , egp
    , ern
    , etb
    , gbp
    , gel
    , ghs
    , gnf
    , gtq
    , hkd
    , hnl
    , hrk
    , huf
    , idr
    , ils
    , inr
    , iqd
    , irr
    , isk
    , jmd
    , jod
    , jpy
    , kes
    , khr
    , kmf
    , krw
    , kwd
    , kzt
    , lak
    , lbp
    , lkr
    , ltl
    , lvl
    , lyd
    , mad
    , mdl
    , mga
    , mkd
    , mmk
    , mop
    , mur
    , mxn
    , myr
    , mzn
    , nad
    , ngn
    , nio
    , nok
    , npr
    , nzd
    , omr
    , pab
    , pen
    , php
    , pkr
    , pln
    , pyg
    , qar
    , ron
    , rsd
    , rub
    , rwf
    , sar
    , sdg
    , sek
    , sgd
    , sos
    , syp
    , thb
    , tnd
    , top
    , try
    , ttd
    , twd
    , tzs
    , uah
    , ugx
    , uyu
    , uzs
    , vef
    , vnd
    , xaf
    , xof
    , yer
    , zar
    , zmk
    ]


{-| A list of all the currency codes
-}
allCodes : List Code
allCodes =
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


{-| Get the currency from a code, with no Maybes involved
-}
currencyFromCode : Code -> Currency
currencyFromCode code =
    case code of
        USD ->
            usd

        CAD ->
            cad

        EUR ->
            eur

        BTC ->
            btc

        AED ->
            aed

        AFN ->
            afn

        ALL ->
            all

        AMD ->
            amd

        ARS ->
            ars

        AUD ->
            aud

        AZN ->
            azn

        BAM ->
            bam

        BDT ->
            bdt

        BGN ->
            bgn

        BHD ->
            bhd

        BIF ->
            bif

        BND ->
            bnd

        BOB ->
            bob

        BRL ->
            brl

        BWP ->
            bwp

        BYR ->
            byr

        BZD ->
            bzd

        CDF ->
            cdf

        CHF ->
            chf

        CLP ->
            clp

        CNY ->
            cny

        COP ->
            cop

        CRC ->
            crc

        CVE ->
            cve

        CZK ->
            czk

        DJF ->
            djf

        DKK ->
            dkk

        DOP ->
            dop

        DZD ->
            dzd

        EEK ->
            eek

        EGP ->
            egp

        ERN ->
            ern

        ETB ->
            etb

        GBP ->
            gbp

        GEL ->
            gel

        GHS ->
            ghs

        GNF ->
            gnf

        GTQ ->
            gtq

        HKD ->
            hkd

        HNL ->
            hnl

        HRK ->
            hrk

        HUF ->
            huf

        IDR ->
            idr

        ILS ->
            ils

        INR ->
            inr

        IQD ->
            iqd

        IRR ->
            irr

        ISK ->
            isk

        JMD ->
            jmd

        JOD ->
            jod

        JPY ->
            jpy

        KES ->
            kes

        KHR ->
            khr

        KMF ->
            kmf

        KRW ->
            krw

        KWD ->
            kwd

        KZT ->
            kzt

        LAK ->
            lak

        LBP ->
            lbp

        LKR ->
            lkr

        LTL ->
            ltl

        LVL ->
            lvl

        LYD ->
            lyd

        MAD ->
            mad

        MDL ->
            mdl

        MGA ->
            mga

        MKD ->
            mkd

        MMK ->
            mmk

        MOP ->
            mop

        MUR ->
            mur

        MXN ->
            mxn

        MYR ->
            myr

        MZN ->
            mzn

        NAD ->
            nad

        NGN ->
            ngn

        NIO ->
            nio

        NOK ->
            nok

        NPR ->
            npr

        NZD ->
            nzd

        OMR ->
            omr

        PAB ->
            pab

        PEN ->
            pen

        PHP ->
            php

        PKR ->
            pkr

        PLN ->
            pln

        PYG ->
            pyg

        QAR ->
            qar

        RON ->
            ron

        RSD ->
            rsd

        RUB ->
            rub

        RWF ->
            rwf

        SAR ->
            sar

        SDG ->
            sdg

        SEK ->
            sek

        SGD ->
            sgd

        SOS ->
            sos

        SYP ->
            syp

        THB ->
            thb

        TND ->
            tnd

        TOP ->
            top

        TRY ->
            try

        TTD ->
            ttd

        TWD ->
            twd

        TZS ->
            tzs

        UAH ->
            uah

        UGX ->
            ugx

        UYU ->
            uyu

        UZS ->
            uzs

        VEF ->
            vef

        VND ->
            vnd

        XAF ->
            xaf

        XOF ->
            xof

        YER ->
            yer

        ZAR ->
            zar

        ZMK ->
            zmk


{-| Get the currency code from a string
-}
codeFromString : String -> Maybe Code
codeFromString str =
    case String.toLower str of
        "usd" ->
            Just USD

        "cad" ->
            Just CAD

        "eur" ->
            Just EUR

        "btc" ->
            Just BTC

        "aed" ->
            Just AED

        "afn" ->
            Just AFN

        "all" ->
            Just ALL

        "amd" ->
            Just AMD

        "ars" ->
            Just ARS

        "aud" ->
            Just AUD

        "azn" ->
            Just AZN

        "bam" ->
            Just BAM

        "bdt" ->
            Just BDT

        "bgn" ->
            Just BGN

        "bhd" ->
            Just BHD

        "bif" ->
            Just BIF

        "bnd" ->
            Just BND

        "bob" ->
            Just BOB

        "brl" ->
            Just BRL

        "bwp" ->
            Just BWP

        "byr" ->
            Just BYR

        "bzd" ->
            Just BZD

        "cdf" ->
            Just CDF

        "chf" ->
            Just CHF

        "clp" ->
            Just CLP

        "cny" ->
            Just CNY

        "cop" ->
            Just COP

        "crc" ->
            Just CRC

        "cve" ->
            Just CVE

        "czk" ->
            Just CZK

        "djf" ->
            Just DJF

        "dkk" ->
            Just DKK

        "dop" ->
            Just DOP

        "dzd" ->
            Just DZD

        "eek" ->
            Just EEK

        "egp" ->
            Just EGP

        "ern" ->
            Just ERN

        "etb" ->
            Just ETB

        "gbp" ->
            Just GBP

        "gel" ->
            Just GEL

        "ghs" ->
            Just GHS

        "gnf" ->
            Just GNF

        "gtq" ->
            Just GTQ

        "hkd" ->
            Just HKD

        "hnl" ->
            Just HNL

        "hrk" ->
            Just HRK

        "huf" ->
            Just HUF

        "idr" ->
            Just IDR

        "ils" ->
            Just ILS

        "inr" ->
            Just INR

        "iqd" ->
            Just IQD

        "irr" ->
            Just IRR

        "isk" ->
            Just ISK

        "jmd" ->
            Just JMD

        "jod" ->
            Just JOD

        "jpy" ->
            Just JPY

        "kes" ->
            Just KES

        "khr" ->
            Just KHR

        "kmf" ->
            Just KMF

        "krw" ->
            Just KRW

        "kwd" ->
            Just KWD

        "kzt" ->
            Just KZT

        "lak" ->
            Just LAK

        "lbp" ->
            Just LBP

        "lkr" ->
            Just LKR

        "ltl" ->
            Just LTL

        "lvl" ->
            Just LVL

        "lyd" ->
            Just LYD

        "mad" ->
            Just MAD

        "mdl" ->
            Just MDL

        "mga" ->
            Just MGA

        "mkd" ->
            Just MKD

        "mmk" ->
            Just MMK

        "mop" ->
            Just MOP

        "mur" ->
            Just MUR

        "mxn" ->
            Just MXN

        "myr" ->
            Just MYR

        "mzn" ->
            Just MZN

        "nad" ->
            Just NAD

        "ngn" ->
            Just NGN

        "nio" ->
            Just NIO

        "nok" ->
            Just NOK

        "npr" ->
            Just NPR

        "nzd" ->
            Just NZD

        "omr" ->
            Just OMR

        "pab" ->
            Just PAB

        "pen" ->
            Just PEN

        "php" ->
            Just PHP

        "pkr" ->
            Just PKR

        "pln" ->
            Just PLN

        "pyg" ->
            Just PYG

        "qar" ->
            Just QAR

        "ron" ->
            Just RON

        "rsd" ->
            Just RSD

        "rub" ->
            Just RUB

        "rwf" ->
            Just RWF

        "sar" ->
            Just SAR

        "sdg" ->
            Just SDG

        "sek" ->
            Just SEK

        "sgd" ->
            Just SGD

        "sos" ->
            Just SOS

        "syp" ->
            Just SYP

        "thb" ->
            Just THB

        "tnd" ->
            Just TND

        "top" ->
            Just TOP

        "try" ->
            Just TRY

        "ttd" ->
            Just TTD

        "twd" ->
            Just TWD

        "tzs" ->
            Just TZS

        "uah" ->
            Just UAH

        "ugx" ->
            Just UGX

        "uyu" ->
            Just UYU

        "uzs" ->
            Just UZS

        "vef" ->
            Just VEF

        "vnd" ->
            Just VND

        "xaf" ->
            Just XAF

        "xof" ->
            Just XOF

        "yer" ->
            Just YER

        "zar" ->
            Just ZAR

        "zmk" ->
            Just ZMK

        _ ->
            Nothing


{-| Get the currency from a string
-}
currencyFromString : String -> Maybe Currency
currencyFromString str =
    case String.toLower str of
        "usd" ->
            Just usd

        "cad" ->
            Just cad

        "eur" ->
            Just eur

        "btc" ->
            Just btc

        "aed" ->
            Just aed

        "afn" ->
            Just afn

        "all" ->
            Just all

        "amd" ->
            Just amd

        "ars" ->
            Just ars

        "aud" ->
            Just aud

        "azn" ->
            Just azn

        "bam" ->
            Just bam

        "bdt" ->
            Just bdt

        "bgn" ->
            Just bgn

        "bhd" ->
            Just bhd

        "bif" ->
            Just bif

        "bnd" ->
            Just bnd

        "bob" ->
            Just bob

        "brl" ->
            Just brl

        "bwp" ->
            Just bwp

        "byr" ->
            Just byr

        "bzd" ->
            Just bzd

        "cdf" ->
            Just cdf

        "chf" ->
            Just chf

        "clp" ->
            Just clp

        "cny" ->
            Just cny

        "cop" ->
            Just cop

        "crc" ->
            Just crc

        "cve" ->
            Just cve

        "czk" ->
            Just czk

        "djf" ->
            Just djf

        "dkk" ->
            Just dkk

        "dop" ->
            Just dop

        "dzd" ->
            Just dzd

        "eek" ->
            Just eek

        "egp" ->
            Just egp

        "ern" ->
            Just ern

        "etb" ->
            Just etb

        "gbp" ->
            Just gbp

        "gel" ->
            Just gel

        "ghs" ->
            Just ghs

        "gnf" ->
            Just gnf

        "gtq" ->
            Just gtq

        "hkd" ->
            Just hkd

        "hnl" ->
            Just hnl

        "hrk" ->
            Just hrk

        "huf" ->
            Just huf

        "idr" ->
            Just idr

        "ils" ->
            Just ils

        "inr" ->
            Just inr

        "iqd" ->
            Just iqd

        "irr" ->
            Just irr

        "isk" ->
            Just isk

        "jmd" ->
            Just jmd

        "jod" ->
            Just jod

        "jpy" ->
            Just jpy

        "kes" ->
            Just kes

        "khr" ->
            Just khr

        "kmf" ->
            Just kmf

        "krw" ->
            Just krw

        "kwd" ->
            Just kwd

        "kzt" ->
            Just kzt

        "lak" ->
            Just lak

        "lbp" ->
            Just lbp

        "lkr" ->
            Just lkr

        "ltl" ->
            Just ltl

        "lvl" ->
            Just lvl

        "lyd" ->
            Just lyd

        "mad" ->
            Just mad

        "mdl" ->
            Just mdl

        "mga" ->
            Just mga

        "mkd" ->
            Just mkd

        "mmk" ->
            Just mmk

        "mop" ->
            Just mop

        "mur" ->
            Just mur

        "mxn" ->
            Just mxn

        "myr" ->
            Just myr

        "mzn" ->
            Just mzn

        "nad" ->
            Just nad

        "ngn" ->
            Just ngn

        "nio" ->
            Just nio

        "nok" ->
            Just nok

        "npr" ->
            Just npr

        "nzd" ->
            Just nzd

        "omr" ->
            Just omr

        "pab" ->
            Just pab

        "pen" ->
            Just pen

        "php" ->
            Just php

        "pkr" ->
            Just pkr

        "pln" ->
            Just pln

        "pyg" ->
            Just pyg

        "qar" ->
            Just qar

        "ron" ->
            Just ron

        "rsd" ->
            Just rsd

        "rub" ->
            Just rub

        "rwf" ->
            Just rwf

        "sar" ->
            Just sar

        "sdg" ->
            Just sdg

        "sek" ->
            Just sek

        "sgd" ->
            Just sgd

        "sos" ->
            Just sos

        "syp" ->
            Just syp

        "thb" ->
            Just thb

        "tnd" ->
            Just tnd

        "top" ->
            Just top

        "try" ->
            Just try

        "ttd" ->
            Just ttd

        "twd" ->
            Just twd

        "tzs" ->
            Just tzs

        "uah" ->
            Just uah

        "ugx" ->
            Just ugx

        "uyu" ->
            Just uyu

        "uzs" ->
            Just uzs

        "vef" ->
            Just vef

        "vnd" ->
            Just vnd

        "xaf" ->
            Just xaf

        "xof" ->
            Just xof

        "yer" ->
            Just yer

        "zar" ->
            Just zar

        "zmk" ->
            Just zmk

        _ ->
            Nothing


{-| US Dollar
-}
usd : Currency
usd =
    { symbol = "$"
    , name = "US Dollar"
    , namePlural = "US dollars"
    , symbolNative = "$"
    , decimalDigits = 2
    , rounding = 0
    , code = "USD"
    }


{-| Canadian Dollar
-}
cad : Currency
cad =
    { symbol = "CA$"
    , name = "Canadian Dollar"
    , namePlural = "Canadian dollars"
    , symbolNative = "$"
    , decimalDigits = 2
    , rounding = 0
    , code = "CAD"
    }


{-| Euro
-}
eur : Currency
eur =
    { symbol = "€"
    , name = "Euro"
    , namePlural = "euros"
    , symbolNative = "€"
    , decimalDigits = 2
    , rounding = 0
    , code = "EUR"
    }


{-| Bitcoin
-}
btc : Currency
btc =
    { symbol = "BTC"
    , name = "Bitcoin"
    , namePlural = "Bitcoins"
    , symbolNative = "฿"
    , decimalDigits = 8
    , rounding = 0
    , code = "BTC"
    }


{-| United Arab Emirates Dirham
-}
aed : Currency
aed =
    { symbol = "AED"
    , name = "United Arab Emirates Dirham"
    , namePlural = "UAE dirhams"
    , symbolNative = "د.إ.\x200F"
    , decimalDigits = 2
    , rounding = 0
    , code = "AED"
    }


{-| Afghan Afghani
-}
afn : Currency
afn =
    { symbol = "Af"
    , name = "Afghan Afghani"
    , namePlural = "Afghan Afghanis"
    , symbolNative = "؋"
    , decimalDigits = 2
    , rounding = 0
    , code = "AFN"
    }


{-| Albanian Lek
-}
all : Currency
all =
    { symbol = "ALL"
    , name = "Albanian Lek"
    , namePlural = "Albanian lekë"
    , symbolNative = "Lek"
    , decimalDigits = 2
    , rounding = 0
    , code = "ALL"
    }


{-| Armenian Dram
-}
amd : Currency
amd =
    { symbol = "AMD"
    , name = "Armenian Dram"
    , namePlural = "Armenian drams"
    , symbolNative = "դր."
    , decimalDigits = 2
    , rounding = 0
    , code = "AMD"
    }


{-| Argentine Peso
-}
ars : Currency
ars =
    { symbol = "AR$"
    , name = "Argentine Peso"
    , namePlural = "Argentine pesos"
    , symbolNative = "$"
    , decimalDigits = 2
    , rounding = 0
    , code = "ARS"
    }


{-| Australian Dollar
-}
aud : Currency
aud =
    { symbol = "AU$"
    , name = "Australian Dollar"
    , namePlural = "Australian dollars"
    , symbolNative = "$"
    , decimalDigits = 2
    , rounding = 0
    , code = "AUD"
    }


{-| Azerbaijani Manat
-}
azn : Currency
azn =
    { symbol = "man."
    , name = "Azerbaijani Manat"
    , namePlural = "Azerbaijani manats"
    , symbolNative = "ман."
    , decimalDigits = 2
    , rounding = 0
    , code = "AZN"
    }


{-| Bosnia-Herzegovina Convertible Mark
-}
bam : Currency
bam =
    { symbol = "KM"
    , name = "Bosnia-Herzegovina Convertible Mark"
    , namePlural = "Bosnia-Herzegovina convertible marks"
    , symbolNative = "KM"
    , decimalDigits = 2
    , rounding = 0
    , code = "BAM"
    }


{-| Bangladeshi Taka
-}
bdt : Currency
bdt =
    { symbol = "Tk"
    , name = "Bangladeshi Taka"
    , namePlural = "Bangladeshi takas"
    , symbolNative = "৳"
    , decimalDigits = 2
    , rounding = 0
    , code = "BDT"
    }


{-| Bulgarian Lev
-}
bgn : Currency
bgn =
    { symbol = "BGN"
    , name = "Bulgarian Lev"
    , namePlural = "Bulgarian leva"
    , symbolNative = "лв."
    , decimalDigits = 2
    , rounding = 0
    , code = "BGN"
    }


{-| Bahraini Dinar
-}
bhd : Currency
bhd =
    { symbol = "BD"
    , name = "Bahraini Dinar"
    , namePlural = "Bahraini dinars"
    , symbolNative = "د.ب.\x200F"
    , decimalDigits = 3
    , rounding = 0
    , code = "BHD"
    }


{-| Burundian Franc
-}
bif : Currency
bif =
    { symbol = "FBu"
    , name = "Burundian Franc"
    , namePlural = "Burundian francs"
    , symbolNative = "FBu"
    , decimalDigits = 0
    , rounding = 0
    , code = "BIF"
    }


{-| Brunei Dollar
-}
bnd : Currency
bnd =
    { symbol = "BN$"
    , name = "Brunei Dollar"
    , namePlural = "Brunei dollars"
    , symbolNative = "$"
    , decimalDigits = 2
    , rounding = 0
    , code = "BND"
    }


{-| Bolivian Boliviano
-}
bob : Currency
bob =
    { symbol = "Bs"
    , name = "Bolivian Boliviano"
    , namePlural = "Bolivian bolivianos"
    , symbolNative = "Bs"
    , decimalDigits = 2
    , rounding = 0
    , code = "BOB"
    }


{-| Brazilian Real
-}
brl : Currency
brl =
    { symbol = "R$"
    , name = "Brazilian Real"
    , namePlural = "Brazilian reals"
    , symbolNative = "R$"
    , decimalDigits = 2
    , rounding = 0
    , code = "BRL"
    }


{-| Botswanan Pula
-}
bwp : Currency
bwp =
    { symbol = "BWP"
    , name = "Botswanan Pula"
    , namePlural = "Botswanan pulas"
    , symbolNative = "P"
    , decimalDigits = 2
    , rounding = 0
    , code = "BWP"
    }


{-| Belarusian Ruble
-}
byr : Currency
byr =
    { symbol = "BYR"
    , name = "Belarusian Ruble"
    , namePlural = "Belarusian rubles"
    , symbolNative = "BYR"
    , decimalDigits = 0
    , rounding = 0
    , code = "BYR"
    }


{-| Belize Dollar
-}
bzd : Currency
bzd =
    { symbol = "BZ$"
    , name = "Belize Dollar"
    , namePlural = "Belize dollars"
    , symbolNative = "$"
    , decimalDigits = 2
    , rounding = 0
    , code = "BZD"
    }


{-| Congolese Franc
-}
cdf : Currency
cdf =
    { symbol = "CDF"
    , name = "Congolese Franc"
    , namePlural = "Congolese francs"
    , symbolNative = "FrCD"
    , decimalDigits = 2
    , rounding = 0
    , code = "CDF"
    }


{-| Swiss Franc
-}
chf : Currency
chf =
    { symbol = "CHF"
    , name = "Swiss Franc"
    , namePlural = "Swiss francs"
    , symbolNative = "CHF"
    , decimalDigits = 2
    , rounding = 0.05
    , code = "CHF"
    }


{-| Chilean Peso
-}
clp : Currency
clp =
    { symbol = "CL$"
    , name = "Chilean Peso"
    , namePlural = "Chilean pesos"
    , symbolNative = "$"
    , decimalDigits = 0
    , rounding = 0
    , code = "CLP"
    }


{-| Chinese Yuan
-}
cny : Currency
cny =
    { symbol = "CN¥"
    , name = "Chinese Yuan"
    , namePlural = "Chinese yuan"
    , symbolNative = "CN¥"
    , decimalDigits = 2
    , rounding = 0
    , code = "CNY"
    }


{-| Colombian Peso
-}
cop : Currency
cop =
    { symbol = "CO$"
    , name = "Colombian Peso"
    , namePlural = "Colombian pesos"
    , symbolNative = "$"
    , decimalDigits = 2
    , rounding = 0
    , code = "COP"
    }


{-| Costa Rican Colón
-}
crc : Currency
crc =
    { symbol = "₡"
    , name = "Costa Rican Colón"
    , namePlural = "Costa Rican colóns"
    , symbolNative = "₡"
    , decimalDigits = 2
    , rounding = 0
    , code = "CRC"
    }


{-| Cape Verdean Escudo
-}
cve : Currency
cve =
    { symbol = "CV$"
    , name = "Cape Verdean Escudo"
    , namePlural = "Cape Verdean escudos"
    , symbolNative = "CV$"
    , decimalDigits = 2
    , rounding = 0
    , code = "CVE"
    }


{-| Czech Republic Koruna
-}
czk : Currency
czk =
    { symbol = "Kč"
    , name = "Czech Republic Koruna"
    , namePlural = "Czech Republic korunas"
    , symbolNative = "Kč"
    , decimalDigits = 2
    , rounding = 0
    , code = "CZK"
    }


{-| Djiboutian Franc
-}
djf : Currency
djf =
    { symbol = "Fdj"
    , name = "Djiboutian Franc"
    , namePlural = "Djiboutian francs"
    , symbolNative = "Fdj"
    , decimalDigits = 0
    , rounding = 0
    , code = "DJF"
    }


{-| Danish Krone
-}
dkk : Currency
dkk =
    { symbol = "Dkr"
    , name = "Danish Krone"
    , namePlural = "Danish kroner"
    , symbolNative = "kr"
    , decimalDigits = 2
    , rounding = 0
    , code = "DKK"
    }


{-| Dominican Peso
-}
dop : Currency
dop =
    { symbol = "RD$"
    , name = "Dominican Peso"
    , namePlural = "Dominican pesos"
    , symbolNative = "RD$"
    , decimalDigits = 2
    , rounding = 0
    , code = "DOP"
    }


{-| Algerian Dinar
-}
dzd : Currency
dzd =
    { symbol = "DA"
    , name = "Algerian Dinar"
    , namePlural = "Algerian dinars"
    , symbolNative = "د.ج.\x200F"
    , decimalDigits = 2
    , rounding = 0
    , code = "DZD"
    }


{-| Estonian Kroon
-}
eek : Currency
eek =
    { symbol = "Ekr"
    , name = "Estonian Kroon"
    , namePlural = "Estonian kroons"
    , symbolNative = "kr"
    , decimalDigits = 2
    , rounding = 0
    , code = "EEK"
    }


{-| Egyptian Pound
-}
egp : Currency
egp =
    { symbol = "EGP"
    , name = "Egyptian Pound"
    , namePlural = "Egyptian pounds"
    , symbolNative = "ج.م.\x200F"
    , decimalDigits = 2
    , rounding = 0
    , code = "EGP"
    }


{-| Eritrean Nakfa
-}
ern : Currency
ern =
    { symbol = "Nfk"
    , name = "Eritrean Nakfa"
    , namePlural = "Eritrean nakfas"
    , symbolNative = "Nfk"
    , decimalDigits = 2
    , rounding = 0
    , code = "ERN"
    }


{-| Ethiopian Birr
-}
etb : Currency
etb =
    { symbol = "Br"
    , name = "Ethiopian Birr"
    , namePlural = "Ethiopian birrs"
    , symbolNative = "Br"
    , decimalDigits = 2
    , rounding = 0
    , code = "ETB"
    }


{-| British Pound Sterling
-}
gbp : Currency
gbp =
    { symbol = "£"
    , name = "British Pound Sterling"
    , namePlural = "British pounds sterling"
    , symbolNative = "£"
    , decimalDigits = 2
    , rounding = 0
    , code = "GBP"
    }


{-| Georgian Lari
-}
gel : Currency
gel =
    { symbol = "GEL"
    , name = "Georgian Lari"
    , namePlural = "Georgian laris"
    , symbolNative = "GEL"
    , decimalDigits = 2
    , rounding = 0
    , code = "GEL"
    }


{-| Ghanaian Cedi
-}
ghs : Currency
ghs =
    { symbol = "GH₵"
    , name = "Ghanaian Cedi"
    , namePlural = "Ghanaian cedis"
    , symbolNative = "GH₵"
    , decimalDigits = 2
    , rounding = 0
    , code = "GHS"
    }


{-| Guinean Franc
-}
gnf : Currency
gnf =
    { symbol = "FG"
    , name = "Guinean Franc"
    , namePlural = "Guinean francs"
    , symbolNative = "FG"
    , decimalDigits = 0
    , rounding = 0
    , code = "GNF"
    }


{-| Guatemalan Quetzal
-}
gtq : Currency
gtq =
    { symbol = "GTQ"
    , name = "Guatemalan Quetzal"
    , namePlural = "Guatemalan quetzals"
    , symbolNative = "Q"
    , decimalDigits = 2
    , rounding = 0
    , code = "GTQ"
    }


{-| Hong Kong Dollar
-}
hkd : Currency
hkd =
    { symbol = "HK$"
    , name = "Hong Kong Dollar"
    , namePlural = "Hong Kong dollars"
    , symbolNative = "$"
    , decimalDigits = 2
    , rounding = 0
    , code = "HKD"
    }


{-| Honduran Lempira
-}
hnl : Currency
hnl =
    { symbol = "HNL"
    , name = "Honduran Lempira"
    , namePlural = "Honduran lempiras"
    , symbolNative = "L"
    , decimalDigits = 2
    , rounding = 0
    , code = "HNL"
    }


{-| Croatian Kuna
-}
hrk : Currency
hrk =
    { symbol = "kn"
    , name = "Croatian Kuna"
    , namePlural = "Croatian kunas"
    , symbolNative = "kn"
    , decimalDigits = 2
    , rounding = 0
    , code = "HRK"
    }


{-| Hungarian Forint
-}
huf : Currency
huf =
    { symbol = "Ft"
    , name = "Hungarian Forint"
    , namePlural = "Hungarian forints"
    , symbolNative = "Ft"
    , decimalDigits = 2
    , rounding = 0
    , code = "HUF"
    }


{-| Indonesian Rupiah
-}
idr : Currency
idr =
    { symbol = "Rp"
    , name = "Indonesian Rupiah"
    , namePlural = "Indonesian rupiahs"
    , symbolNative = "Rp"
    , decimalDigits = 2
    , rounding = 0
    , code = "IDR"
    }


{-| Israeli New Sheqel
-}
ils : Currency
ils =
    { symbol = "₪"
    , name = "Israeli New Sheqel"
    , namePlural = "Israeli new sheqels"
    , symbolNative = "₪"
    , decimalDigits = 2
    , rounding = 0
    , code = "ILS"
    }


{-| Indian Rupee
-}
inr : Currency
inr =
    { symbol = "Rs"
    , name = "Indian Rupee"
    , namePlural = "Indian rupees"
    , symbolNative = "টকা"
    , decimalDigits = 2
    , rounding = 0
    , code = "INR"
    }


{-| Iraqi Dinar
-}
iqd : Currency
iqd =
    { symbol = "IQD"
    , name = "Iraqi Dinar"
    , namePlural = "Iraqi dinars"
    , symbolNative = "د.ع.\x200F"
    , decimalDigits = 3
    , rounding = 0
    , code = "IQD"
    }


{-| Iranian Rial
-}
irr : Currency
irr =
    { symbol = "IRR"
    , name = "Iranian Rial"
    , namePlural = "Iranian rials"
    , symbolNative = "﷼"
    , decimalDigits = 2
    , rounding = 0
    , code = "IRR"
    }


{-| Icelandic Króna
-}
isk : Currency
isk =
    { symbol = "Ikr"
    , name = "Icelandic Króna"
    , namePlural = "Icelandic krónur"
    , symbolNative = "kr"
    , decimalDigits = 0
    , rounding = 0
    , code = "ISK"
    }


{-| Jamaican Dollar
-}
jmd : Currency
jmd =
    { symbol = "J$"
    , name = "Jamaican Dollar"
    , namePlural = "Jamaican dollars"
    , symbolNative = "$"
    , decimalDigits = 2
    , rounding = 0
    , code = "JMD"
    }


{-| Jordanian Dinar
-}
jod : Currency
jod =
    { symbol = "JD"
    , name = "Jordanian Dinar"
    , namePlural = "Jordanian dinars"
    , symbolNative = "د.أ.\x200F"
    , decimalDigits = 3
    , rounding = 0
    , code = "JOD"
    }


{-| Japanese Yen
-}
jpy : Currency
jpy =
    { symbol = "¥"
    , name = "Japanese Yen"
    , namePlural = "Japanese yen"
    , symbolNative = "￥"
    , decimalDigits = 0
    , rounding = 0
    , code = "JPY"
    }


{-| Kenyan Shilling
-}
kes : Currency
kes =
    { symbol = "Ksh"
    , name = "Kenyan Shilling"
    , namePlural = "Kenyan shillings"
    , symbolNative = "Ksh"
    , decimalDigits = 2
    , rounding = 0
    , code = "KES"
    }


{-| Cambodian Riel
-}
khr : Currency
khr =
    { symbol = "KHR"
    , name = "Cambodian Riel"
    , namePlural = "Cambodian riels"
    , symbolNative = "៛"
    , decimalDigits = 2
    , rounding = 0
    , code = "KHR"
    }


{-| Comorian Franc
-}
kmf : Currency
kmf =
    { symbol = "CF"
    , name = "Comorian Franc"
    , namePlural = "Comorian francs"
    , symbolNative = "FC"
    , decimalDigits = 0
    , rounding = 0
    , code = "KMF"
    }


{-| South Korean Won
-}
krw : Currency
krw =
    { symbol = "₩"
    , name = "South Korean Won"
    , namePlural = "South Korean won"
    , symbolNative = "₩"
    , decimalDigits = 0
    , rounding = 0
    , code = "KRW"
    }


{-| Kuwaiti Dinar
-}
kwd : Currency
kwd =
    { symbol = "KD"
    , name = "Kuwaiti Dinar"
    , namePlural = "Kuwaiti dinars"
    , symbolNative = "د.ك.\x200F"
    , decimalDigits = 3
    , rounding = 0
    , code = "KWD"
    }


{-| Kazakhstani Tenge
-}
kzt : Currency
kzt =
    { symbol = "KZT"
    , name = "Kazakhstani Tenge"
    , namePlural = "Kazakhstani tenges"
    , symbolNative = "тңг."
    , decimalDigits = 2
    , rounding = 0
    , code = "KZT"
    }


{-| Lao kip
-}
lak : Currency
lak =
    { symbol = "₭"
    , name = "Lao kip"
    , namePlural = "Lao kips"
    , symbolNative = "ກີບ"
    , decimalDigits = 2
    , rounding = 0
    , code = "LAK"
    }


{-| Lebanese Pound
-}
lbp : Currency
lbp =
    { symbol = "LB£"
    , name = "Lebanese Pound"
    , namePlural = "Lebanese pounds"
    , symbolNative = "ل.ل.\x200F"
    , decimalDigits = 2
    , rounding = 0
    , code = "LBP"
    }


{-| Sri Lankan Rupee
-}
lkr : Currency
lkr =
    { symbol = "SLRs"
    , name = "Sri Lankan Rupee"
    , namePlural = "Sri Lankan rupees"
    , symbolNative = "SL Re"
    , decimalDigits = 2
    , rounding = 0
    , code = "LKR"
    }


{-| Lithuanian Litas
-}
ltl : Currency
ltl =
    { symbol = "Lt"
    , name = "Lithuanian Litas"
    , namePlural = "Lithuanian litai"
    , symbolNative = "Lt"
    , decimalDigits = 2
    , rounding = 0
    , code = "LTL"
    }


{-| Latvian Lats
-}
lvl : Currency
lvl =
    { symbol = "Ls"
    , name = "Latvian Lats"
    , namePlural = "Latvian lati"
    , symbolNative = "Ls"
    , decimalDigits = 2
    , rounding = 0
    , code = "LVL"
    }


{-| Libyan Dinar
-}
lyd : Currency
lyd =
    { symbol = "LD"
    , name = "Libyan Dinar"
    , namePlural = "Libyan dinars"
    , symbolNative = "د.ل.\x200F"
    , decimalDigits = 3
    , rounding = 0
    , code = "LYD"
    }


{-| Moroccan Dirham
-}
mad : Currency
mad =
    { symbol = "MAD"
    , name = "Moroccan Dirham"
    , namePlural = "Moroccan dirhams"
    , symbolNative = "د.م.\x200F"
    , decimalDigits = 2
    , rounding = 0
    , code = "MAD"
    }


{-| Moldovan Leu
-}
mdl : Currency
mdl =
    { symbol = "MDL"
    , name = "Moldovan Leu"
    , namePlural = "Moldovan lei"
    , symbolNative = "MDL"
    , decimalDigits = 2
    , rounding = 0
    , code = "MDL"
    }


{-| Malagasy Ariary
-}
mga : Currency
mga =
    { symbol = "MGA"
    , name = "Malagasy Ariary"
    , namePlural = "Malagasy Ariaries"
    , symbolNative = "MGA"
    , decimalDigits = 2
    , rounding = 0
    , code = "MGA"
    }


{-| Macedonian Denar
-}
mkd : Currency
mkd =
    { symbol = "MKD"
    , name = "Macedonian Denar"
    , namePlural = "Macedonian denari"
    , symbolNative = "MKD"
    , decimalDigits = 2
    , rounding = 0
    , code = "MKD"
    }


{-| Myanma Kyat
-}
mmk : Currency
mmk =
    { symbol = "MMK"
    , name = "Myanma Kyat"
    , namePlural = "Myanma kyats"
    , symbolNative = "K"
    , decimalDigits = 2
    , rounding = 0
    , code = "MMK"
    }


{-| Macanese Pataca
-}
mop : Currency
mop =
    { symbol = "MOP$"
    , name = "Macanese Pataca"
    , namePlural = "Macanese patacas"
    , symbolNative = "MOP$"
    , decimalDigits = 2
    , rounding = 0
    , code = "MOP"
    }


{-| Mauritian Rupee
-}
mur : Currency
mur =
    { symbol = "MURs"
    , name = "Mauritian Rupee"
    , namePlural = "Mauritian rupees"
    , symbolNative = "MURs"
    , decimalDigits = 2
    , rounding = 0
    , code = "MUR"
    }


{-| Mexican Peso
-}
mxn : Currency
mxn =
    { symbol = "MX$"
    , name = "Mexican Peso"
    , namePlural = "Mexican pesos"
    , symbolNative = "$"
    , decimalDigits = 2
    , rounding = 0
    , code = "MXN"
    }


{-| Malaysian Ringgit
-}
myr : Currency
myr =
    { symbol = "RM"
    , name = "Malaysian Ringgit"
    , namePlural = "Malaysian ringgits"
    , symbolNative = "RM"
    , decimalDigits = 2
    , rounding = 0
    , code = "MYR"
    }


{-| Mozambican Metical
-}
mzn : Currency
mzn =
    { symbol = "MTn"
    , name = "Mozambican Metical"
    , namePlural = "Mozambican meticals"
    , symbolNative = "MTn"
    , decimalDigits = 2
    , rounding = 0
    , code = "MZN"
    }


{-| Namibian Dollar
-}
nad : Currency
nad =
    { symbol = "N$"
    , name = "Namibian Dollar"
    , namePlural = "Namibian dollars"
    , symbolNative = "N$"
    , decimalDigits = 2
    , rounding = 0
    , code = "NAD"
    }


{-| Nigerian Naira
-}
ngn : Currency
ngn =
    { symbol = "₦"
    , name = "Nigerian Naira"
    , namePlural = "Nigerian nairas"
    , symbolNative = "₦"
    , decimalDigits = 2
    , rounding = 0
    , code = "NGN"
    }


{-| Nicaraguan Córdoba
-}
nio : Currency
nio =
    { symbol = "C$"
    , name = "Nicaraguan Córdoba"
    , namePlural = "Nicaraguan córdobas"
    , symbolNative = "C$"
    , decimalDigits = 2
    , rounding = 0
    , code = "NIO"
    }


{-| Norwegian Krone
-}
nok : Currency
nok =
    { symbol = "Nkr"
    , name = "Norwegian Krone"
    , namePlural = "Norwegian kroner"
    , symbolNative = "kr"
    , decimalDigits = 2
    , rounding = 0
    , code = "NOK"
    }


{-| Nepalese Rupee
-}
npr : Currency
npr =
    { symbol = "NPRs"
    , name = "Nepalese Rupee"
    , namePlural = "Nepalese rupees"
    , symbolNative = "नेरू"
    , decimalDigits = 2
    , rounding = 0
    , code = "NPR"
    }


{-| New Zealand Dollar
-}
nzd : Currency
nzd =
    { symbol = "NZ$"
    , name = "New Zealand Dollar"
    , namePlural = "New Zealand dollars"
    , symbolNative = "$"
    , decimalDigits = 2
    , rounding = 0
    , code = "NZD"
    }


{-| Omani Rial
-}
omr : Currency
omr =
    { symbol = "OMR"
    , name = "Omani Rial"
    , namePlural = "Omani rials"
    , symbolNative = "ر.ع.\x200F"
    , decimalDigits = 3
    , rounding = 0
    , code = "OMR"
    }


{-| Panamanian Balboa
-}
pab : Currency
pab =
    { symbol = "B/."
    , name = "Panamanian Balboa"
    , namePlural = "Panamanian balboas"
    , symbolNative = "B/."
    , decimalDigits = 2
    , rounding = 0
    , code = "PAB"
    }


{-| Peruvian Nuevo Sol
-}
pen : Currency
pen =
    { symbol = "S/."
    , name = "Peruvian Nuevo Sol"
    , namePlural = "Peruvian nuevos soles"
    , symbolNative = "S/."
    , decimalDigits = 2
    , rounding = 0
    , code = "PEN"
    }


{-| Philippine Peso
-}
php : Currency
php =
    { symbol = "₱"
    , name = "Philippine Peso"
    , namePlural = "Philippine pesos"
    , symbolNative = "₱"
    , decimalDigits = 2
    , rounding = 0
    , code = "PHP"
    }


{-| Pakistani Rupee
-}
pkr : Currency
pkr =
    { symbol = "PKRs"
    , name = "Pakistani Rupee"
    , namePlural = "Pakistani rupees"
    , symbolNative = "₨"
    , decimalDigits = 2
    , rounding = 0
    , code = "PKR"
    }


{-| Polish Zloty
-}
pln : Currency
pln =
    { symbol = "zł"
    , name = "Polish Zloty"
    , namePlural = "Polish zlotys"
    , symbolNative = "zł"
    , decimalDigits = 2
    , rounding = 0
    , code = "PLN"
    }


{-| Paraguayan Guarani
-}
pyg : Currency
pyg =
    { symbol = "₲"
    , name = "Paraguayan Guarani"
    , namePlural = "Paraguayan guaranis"
    , symbolNative = "₲"
    , decimalDigits = 0
    , rounding = 0
    , code = "PYG"
    }


{-| Qatari Rial
-}
qar : Currency
qar =
    { symbol = "QR"
    , name = "Qatari Rial"
    , namePlural = "Qatari rials"
    , symbolNative = "ر.ق.\x200F"
    , decimalDigits = 2
    , rounding = 0
    , code = "QAR"
    }


{-| Romanian Leu
-}
ron : Currency
ron =
    { symbol = "RON"
    , name = "Romanian Leu"
    , namePlural = "Romanian lei"
    , symbolNative = "RON"
    , decimalDigits = 2
    , rounding = 0
    , code = "RON"
    }


{-| Serbian Dinar
-}
rsd : Currency
rsd =
    { symbol = "din."
    , name = "Serbian Dinar"
    , namePlural = "Serbian dinars"
    , symbolNative = "дин."
    , decimalDigits = 2
    , rounding = 0
    , code = "RSD"
    }


{-| Russian Ruble
-}
rub : Currency
rub =
    { symbol = "RUB"
    , name = "Russian Ruble"
    , namePlural = "Russian rubles"
    , symbolNative = "₽"
    , decimalDigits = 2
    , rounding = 0
    , code = "RUB"
    }


{-| Rwandan Franc
-}
rwf : Currency
rwf =
    { symbol = "RWF"
    , name = "Rwandan Franc"
    , namePlural = "Rwandan francs"
    , symbolNative = "FR"
    , decimalDigits = 0
    , rounding = 0
    , code = "RWF"
    }


{-| Saudi Riyal
-}
sar : Currency
sar =
    { symbol = "SR"
    , name = "Saudi Riyal"
    , namePlural = "Saudi riyals"
    , symbolNative = "ر.س.\x200F"
    , decimalDigits = 2
    , rounding = 0
    , code = "SAR"
    }


{-| Sudanese Pound
-}
sdg : Currency
sdg =
    { symbol = "SDG"
    , name = "Sudanese Pound"
    , namePlural = "Sudanese pounds"
    , symbolNative = "SDG"
    , decimalDigits = 2
    , rounding = 0
    , code = "SDG"
    }


{-| Swedish Krona
-}
sek : Currency
sek =
    { symbol = "Skr"
    , name = "Swedish Krona"
    , namePlural = "Swedish kronor"
    , symbolNative = "kr"
    , decimalDigits = 2
    , rounding = 0
    , code = "SEK"
    }


{-| Singapore Dollar
-}
sgd : Currency
sgd =
    { symbol = "S$"
    , name = "Singapore Dollar"
    , namePlural = "Singapore dollars"
    , symbolNative = "$"
    , decimalDigits = 2
    , rounding = 0
    , code = "SGD"
    }


{-| Somali Shilling
-}
sos : Currency
sos =
    { symbol = "Ssh"
    , name = "Somali Shilling"
    , namePlural = "Somali shillings"
    , symbolNative = "Ssh"
    , decimalDigits = 2
    , rounding = 0
    , code = "SOS"
    }


{-| Syrian Pound
-}
syp : Currency
syp =
    { symbol = "SY£"
    , name = "Syrian Pound"
    , namePlural = "Syrian pounds"
    , symbolNative = "ل.س.\x200F"
    , decimalDigits = 2
    , rounding = 0
    , code = "SYP"
    }


{-| Thai Baht
-}
thb : Currency
thb =
    { symbol = "฿"
    , name = "Thai Baht"
    , namePlural = "Thai baht"
    , symbolNative = "฿"
    , decimalDigits = 2
    , rounding = 0
    , code = "THB"
    }


{-| Tunisian Dinar
-}
tnd : Currency
tnd =
    { symbol = "DT"
    , name = "Tunisian Dinar"
    , namePlural = "Tunisian dinars"
    , symbolNative = "د.ت.\x200F"
    , decimalDigits = 3
    , rounding = 0
    , code = "TND"
    }


{-| Tongan Paʻanga
-}
top : Currency
top =
    { symbol = "T$"
    , name = "Tongan Paʻanga"
    , namePlural = "Tongan paʻanga"
    , symbolNative = "T$"
    , decimalDigits = 2
    , rounding = 0
    , code = "TOP"
    }


{-| Turkish Lira
-}
try : Currency
try =
    { symbol = "TL"
    , name = "Turkish Lira"
    , namePlural = "Turkish Lira"
    , symbolNative = "TL"
    , decimalDigits = 2
    , rounding = 0
    , code = "TRY"
    }


{-| Trinidad and Tobago Dollar
-}
ttd : Currency
ttd =
    { symbol = "TT$"
    , name = "Trinidad and Tobago Dollar"
    , namePlural = "Trinidad and Tobago dollars"
    , symbolNative = "$"
    , decimalDigits = 2
    , rounding = 0
    , code = "TTD"
    }


{-| New Taiwan Dollar
-}
twd : Currency
twd =
    { symbol = "NT$"
    , name = "New Taiwan Dollar"
    , namePlural = "New Taiwan dollars"
    , symbolNative = "NT$"
    , decimalDigits = 2
    , rounding = 0
    , code = "TWD"
    }


{-| Tanzanian Shilling
-}
tzs : Currency
tzs =
    { symbol = "TSh"
    , name = "Tanzanian Shilling"
    , namePlural = "Tanzanian shillings"
    , symbolNative = "TSh"
    , decimalDigits = 2
    , rounding = 0
    , code = "TZS"
    }


{-| Ukrainian Hryvnia
-}
uah : Currency
uah =
    { symbol = "₴"
    , name = "Ukrainian Hryvnia"
    , namePlural = "Ukrainian hryvnias"
    , symbolNative = "₴"
    , decimalDigits = 2
    , rounding = 0
    , code = "UAH"
    }


{-| Ugandan Shilling
-}
ugx : Currency
ugx =
    { symbol = "USh"
    , name = "Ugandan Shilling"
    , namePlural = "Ugandan shillings"
    , symbolNative = "USh"
    , decimalDigits = 0
    , rounding = 0
    , code = "UGX"
    }


{-| Uruguayan Peso
-}
uyu : Currency
uyu =
    { symbol = "$U"
    , name = "Uruguayan Peso"
    , namePlural = "Uruguayan pesos"
    , symbolNative = "$"
    , decimalDigits = 2
    , rounding = 0
    , code = "UYU"
    }


{-| Uzbekistan Som
-}
uzs : Currency
uzs =
    { symbol = "UZS"
    , name = "Uzbekistan Som"
    , namePlural = "Uzbekistan som"
    , symbolNative = "UZS"
    , decimalDigits = 2
    , rounding = 0
    , code = "UZS"
    }


{-| Venezuelan Bolívar
-}
vef : Currency
vef =
    { symbol = "Bs.F."
    , name = "Venezuelan Bolívar"
    , namePlural = "Venezuelan bolívars"
    , symbolNative = "Bs.F."
    , decimalDigits = 2
    , rounding = 0
    , code = "VEF"
    }


{-| Vietnamese Dong
-}
vnd : Currency
vnd =
    { symbol = "₫"
    , name = "Vietnamese Dong"
    , namePlural = "Vietnamese dong"
    , symbolNative = "₫"
    , decimalDigits = 0
    , rounding = 0
    , code = "VND"
    }


{-| CFA Franc BEAC
-}
xaf : Currency
xaf =
    { symbol = "FCFA"
    , name = "CFA Franc BEAC"
    , namePlural = "CFA francs BEAC"
    , symbolNative = "FCFA"
    , decimalDigits = 0
    , rounding = 0
    , code = "XAF"
    }


{-| CFA Franc BCEAO
-}
xof : Currency
xof =
    { symbol = "CFA"
    , name = "CFA Franc BCEAO"
    , namePlural = "CFA francs BCEAO"
    , symbolNative = "CFA"
    , decimalDigits = 0
    , rounding = 0
    , code = "XOF"
    }


{-| Yemeni Rial
-}
yer : Currency
yer =
    { symbol = "YR"
    , name = "Yemeni Rial"
    , namePlural = "Yemeni rials"
    , symbolNative = "ر.ي.\x200F"
    , decimalDigits = 2
    , rounding = 0
    , code = "YER"
    }


{-| South African Rand
-}
zar : Currency
zar =
    { symbol = "R"
    , name = "South African Rand"
    , namePlural = "South African rand"
    , symbolNative = "R"
    , decimalDigits = 2
    , rounding = 0
    , code = "ZAR"
    }


{-| Zambian Kwacha
-}
zmk : Currency
zmk =
    { symbol = "ZK"
    , name = "Zambian Kwacha"
    , namePlural = "Zambian kwachas"
    , symbolNative = "ZK"
    , decimalDigits = 0
    , rounding = 0
    , code = "ZMK"
    }
