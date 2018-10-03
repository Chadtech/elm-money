const fs = require("fs");
const cp = require("child_process")

const file = fs.readFileSync("./money.json", "utf-8");
const money = Object.values(JSON.parse(file));

const currencies = money.map(m => `        , ${m.code.toLowerCase()}\n`).join("");

const topPart =
    `module Money
    exposing
        ( currencyFromCode
        , Code(..)
        , Currency
        , codeFromString
        , allCodes
        , currencyFromString
        , allCurrencies
${currencies}
        )


{-| All the worlds currencies as records and union types, with helper functions too.


# Types

@docs Currency, Code

# Values

@docs allCurrencies, allCodes

# Helpers

@docs currencyFromString, currencyFromCode, codeFromString

# Currencies

@docs ${money.map(m => m.code.toLowerCase()).join(", ")}

-}
`;

const currencyType =

    `{-|-}
type alias Currency =
    { symbol : String
    , name : String
    , namePlural : String
    , symbolNative : String
    , decimalDigits : Int
    , code : String
    }
`

const codes =
    [`{-| This type represents all the possible currency codes -}`
        , `type Code\n  = ${money[0].code}\n`
        , money.slice(1).map(m => `  | ${m.code}\n`).join("")
    ].join("\n");

const allCodes =
    [`{-| A list of all the currency codes -}`
        , `allCodes : List Code\n`
        , `allCodes =\n`
        , `    [ ${money[0].code.toUpperCase()}\n`
        , money.slice(1).map(m =>
            `    , ${m.code.toUpperCase()}`
        ).join("\n")
        , `    ]`
    ].join("\n")

const allCurrencies =
    [`{-| A list of all the currencies -}`
        , `allCurrencies : List Currency\n`
        , `allCurrencies =\n`
        , `    [ ${money[0].code.toLowerCase()}\n`
        , money.slice(1).map(m =>
            `    , ${m.code.toLowerCase()}`
        ).join("\n")
        , `    ]`
    ].join("\n")


const codeFromString =
    [`{-| Get the currency code from a string -}`
        , `codeFromString : String -> Maybe Code`
        , `codeFromString str =`
        , `    case String.toLower str of`
        , money.map(m =>
            `        "${m.code.toLowerCase()}" ->\n            Just ${m.code.toUpperCase()}\n`
        ).join("")
        , `        _ ->\n            Nothing`
    ].join("\n")


const currencyFromString =
    [`{-| Get the currency from a string -}`
        , `currencyFromString : String -> Maybe Currency`
        , `currencyFromString str =`
        , `    case String.toLower str of`
        , money.map(m =>
            `        "${m.code.toLowerCase()}" ->\n            Just ${m.code.toLowerCase()}\n`
        ).join("")
        , `        _ ->\n            Nothing`
    ].join("\n")

const currencyFromCode =
    [`{-| Get the currency from a code, with no Maybes involved -}`
        , `currencyFromCode : Code -> Currency`
        , `currencyFromCode code =`
        , `    case code of`
        , money.map(m =>
            `        ${m.code} ->\n            ${m.code.toLowerCase()}\n`
        ).join("")
    ].join("\n")


const records = money.map(m => `
{-| ${m.name} -}\n
${m.code.toLowerCase()} : Currency
${m.code.toLowerCase()} =
    { symbol = "${m.symbol}"
    , name = "${m.name}"
    , namePlural = "${m.name_plural}"
    , symbolNative = "${m.symbol_native}"
    , decimalDigits = ${m.decimal_digits}
    , code = "${m.code}"
    }
`).join("");


const output = [
    topPart,
    currencyType,
    codes,
    allCurrencies,
    allCodes,
    currencyFromCode,
    codeFromString,
    currencyFromString,
    records
].join("\n\n");

var outputFile = "./src/Money.elm";

fs.writeFileSync(outputFile, output);

// cp.execSync(`elm-format ${outputFile} --yes`);

