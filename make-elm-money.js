const fs = require("fs");

const file = fs.readFileSync("./money.json", "utf-8");
const money = Object.values(JSON.parse(file));


fs.writeFileSync("money.elm", money.map(function(m){
	const record =
	`
	${m.symbol.toLowerCase()} : Currency
	${m.symbol.toLowerCase()} =
		{ symbol = "${m.symbol}"
		, name = "${m.name}"
	, namePlural = "${m.name_plural}"
	, symbolNative = "${m.symbol_native}"
	, decimalDigits = ${m.decimal_digits}
	, rounding = ${m.rounding}
	, code = "${m.code}"
	}
	`;

	return record
}).join());



