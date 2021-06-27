const fs = require("fs");
const cp = require("child_process");

const file = fs.readFileSync("./money.json", "utf-8");

var money = JSON.parse(file);

money = Object.keys(money).map(code => {
    currency = money[code];
    currency.code = code;
    return currency;
});

const topPart = `module Money exposing
    ( Currency(..)
    , all
    , toSymbol 
    , fromString
    , toNativeSymbol
    , toName
    , toDecimalDigits
    , toString
    , search
    , searchCustom
    )


{-| All the worlds currencies.


# Types

@docs Currency

# Basics

@docs all, toString, fromString

# Properties

@docs toSymbol, toName, toNativeSymbol, toDecimalDigits

# Search

@docs search, searchCustom

-}
`;

const codes =
    [ `{-| This type represents all the possible currencies as currency codes. -}`
    , `type Currency\n  = ${money[0].code}`
    , money.slice(1).map(m => `  | ${m.code}\n`).join("")
    ].join("\n");

const allCodes =
    [ `{-| All the currency codes in a list 

    all = 
        [ USD
        , EUR
        , CAD 
        --..
        ]
-}`
    , `all : List Currency`
    , `all =`
    , `    [ ${money[0].code.toUpperCase()}`
    , money.slice(1).map(m =>
        `    , ${m.code.toUpperCase()}`
    ).join("\n")
    , `    ]`
    ].join("\n")

const caseExpr = (params) => 
    [`{-| ${params.docs}-}`
    , `${params.name} : Currency -> ${params.returnType}`
    , `${params.name} currency ${params.bonusArgs.join(" ")} =`
    , `    case currency of`
    , money.map(m => 
        [ `        ${m.code} ->`
        , `            ${params.toValue(m)}\n\n`
        ].join("\n")
    ).join('')
    ].join("\n")

const symbol = caseExpr({
    docs: `Get the symbol of a currency from its code

        toSymbol USD == "$"
        toSymbol CAD == "CA$"
        toSymbol BTC == "BTC"

Look at the documentation for \`toNativeSymbol\` for more details.
`,
    name: "toSymbol",
    returnType: "String",
    bonusArgs: [],
    toValue: currency => `"${currency.symbol}"`
});
    
const name = 
    [`{-| Get the name of a currency from its code
    
        toName { plural = True } EUR == "euros"
        toName { plural = False } ALL == "Albanian Lek"
        toName { plural = True } ALL == "Albanian lekë"
-}`
    , `toName : { plural : Bool } -> Currency -> String`
    , `toName { plural } currency =`
    , `    case currency of`
    , money.map(m => 
        [ `        ${m.code} ->`
        , `            if plural then 
        "${m.name_plural}"
    else 
        "${m.name}"\n\n`
        ].join("\n")
    ).join('')
    ].join("\n")



const decimalDigits = caseExpr({
    docs: `Get the number of decimal digits in a currency. of a currency from its code

The decimal digits is basically the size of the smaller unit the currency comes in. 
American dollars and Euros, for example, both have cents, and 100 cents make a dollar or Euro. So the decimal
digits for these currencies is \`2\`. Extreme cases include the Japanese Yen, which has \`0\`, and
Bitcoin, which has \`8\`.
`,
    name: "toDecimalDigits",
    returnType: "Int",
    bonusArgs: [],
    toValue: (currency) => currency.decimal_digits
});

const nativeSymbol = caseExpr({
    docs: `Get the native symbol of a currency from its code. 
    
        toNativeSymbol LAK == "ກີບ"
        toSymbol LAK == "₭"

        toNativeSymbol CAD == "$"
        toSymbol CAD == "CA$"

        toNativeSymbol USD == "$"
        toSymbol USD == "$"


The \`native symbol\` is different from the \`symbol\`. The \`symbol\` is what is used
in international currency exchange contexts. Imagine a currency exchange shop
at an airport that lists several currencies right next to each other. The native symbol, 
however, is used in more local and natural settings of the currency; such as if someone 
were looking at a restaurant menu with currency amounts next to menu items.`,
    name: "toNativeSymbol",
    returnType: "String",
    bonusArgs: [],
    toValue: currency => `"${currency.symbol_native}"`
});


const toString = caseExpr({
    docs: `Get the currency's code as a \`String\`

        toString CNY == "CNY"
`,
    name: "toString",
    returnType: "String",
    bonusArgs: [],
    toValue: (currency) => `"${currency.code}"`
});

const fromString = 
    [`{-| Attempt to derive a \`Currency\` from a \`String\`. This function presumes the \`String\` is a currency code like \`"USD"\`. 

        fromString "DKK" == Just DKK
        fromString "Danish Krone" == Nothing
-}`
    , `fromString : String -> Maybe Currency`
    , `fromString str =`
    , `    case String.toUpper str of`
    , money.map(m => 
        [ `        "${m.code}" ->`
        , `            Just ${m.code}\n\n`
        ].join("\n")
    ).join('')
    , `        _ ->`
    , `            Nothing`
    ].join("\n")


const search = `

{-| Search all currencies by case-insensitive string matching on the name, symbol, and code.
-}
search : String -> List Currency
search searchString =
    searchCustom searchString all

{-| Search through a list of currencies by case-insensitive string matching on the name, symbol, and code.
-}
searchCustom : String -> List Currency -> List Currency
searchCustom searchString =
    let
        matchesCurrency : Currency -> Bool
        matchesCurrency currency =
            String.contains
                    (String.toLower searchString)
                    (String.join " " [ String.toLower <| (toName { plural = False } currency)
                    , String.toLower <| (toName { plural = True } currency)
                    , String.toLower <| toString currency
                    , String.toLower <| toSymbol currency
                    ]
                    )
    in
    List.filter matchesCurrency


`;

const output = [
    topPart,
    codes,
    symbol,
    nativeSymbol,
    name,
    decimalDigits,
    toString,
    fromString,
    allCodes,
    search
].join("\n\n");

var outputFile = "./src/Money.elm";

fs.writeFileSync(outputFile, output);

console.log(String(cp.execSync("elm-format ./src/ --yes")));

