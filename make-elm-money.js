const fs = require("fs");

const file = fs.readFileSync("./money.json", "utf-8");
const money = Object.values(JSON.parse(file));



const currencies = money.map(m => `        , ${m.code.toLowerCase()}\n`).join("");

const topPart = `
module Money
    exposing
        ( fromCode
        , Code(..)
        , codeFromString
        , allCurrencies
${currencies}
        )
`;


const codes =
	[ `type Code\n  = ${money[0].code}\n`
	, money.slice(1).map(m => `  | ${m.code}\n`).join("")
	].join("");


const fromCode =
	[ `fromCode : Code -> Currency`
	, `fromCode code =`
	, `    case code of`
	, money.map(m =>
			`        ${m.code} ->\n            ${m.code.toLowerCase()}\n`
		).join("")
	].join("\n")


const records = money.map(m => `
${m.code.toLowerCase()} : Currency
${m.code.toLowerCase()} =
    { symbol = "${m.symbol}"
    , name = "${m.name}"
    , namePlural = "${m.name_plural}"
    , symbolNative = "${m.symbol_native}"
    , decimalDigits = ${m.decimal_digits}
    , rounding = ${m.rounding}
    , code = "${m.code}"
    }
`).join("");


const output = [
	topPart,
	codes,
	fromCode,
	records
].join("");

fs.writeFileSync("money.elm", output);


