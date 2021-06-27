const fs = require("fs");

const file = fs.readFileSync("./ISO4217.csv", "utf-8");



var iso4217Json = {};

var notRealCurrencies = [
    'Silver',
    'Platinum',
    'Palladium',
    'The codes assigned for transactions where no currency is involved',
    'Codes specifically reserved for testing purposes',
    'Bond Markets Unit European Unit of Account 17 (E.U.A.-17)',
    'Bond Markets Unit European Unit of Account 9 (E.U.A.-9)',
    'Bond Markets Unit European Monetary Unit (E.M.U.-6)',
    'Gold',
    'No universal currency',
    'Sucre',
    'SDR (Special Drawing Right)',
    'Bond Markets Unit European Composite Unit (EURCO)',
    'ADB Unit of Account',

    // I dont know what this is, but in Uruguay they use the Uruguayan peso
    'Unidad Previsional',

    // This is a currency from Cuba that is no longer used
    'Peso Convertible',
    // Wikipedia says in 2001 El Salvador started using the US Dollar
    'El Salvador Colon',
]

file
    // Some currnecies have some names with commas that break the csv parsing
    .replace("TANZANIA, UNITED REPUBLIC OF", "TANZANIA")
    .replace("SAINT HELENA, ASCENSION AND TRISTAN DA CUNHA", "SAINT HELENA")
    .replace("PALESTINE, STATE OF", "PALESTINE")
    .replace("BONAIRE, SINT EUSTATIUS AND SABA", "BONAIRE")
    // Split each line
    .split('\n')
    // There are headers in the data
    .slice(4)
    // Split
    .map(line => line.split(','))
    // The last cell being "TRUE" means its one of those fancy banking fund
    // currencies that we dont care about
    .filter(cells => cells[5] !== 'TRUE\r')
    .map(cells => cells.slice(0, -1))

    // Convert the line into an object..
    .map(cells => {

        const country = cells[0];
        const moneyName = cells[1];

        const code = cells[2];
        const decimalDigit = cells[4];

        const currency = {
            country: country,
            name: moneyName,
            decimal_digits: decimalDigit
        };

        return {
            code: code,
            currency: currency
        };
    })

    // Filter out the currencies we dont really want,
    // mainly currencies people dont really do business in
    .filter(c => {
        const name = c.currency.name;

        const isNotRealCurrency = notRealCurrencies.includes(name);

        const isntDollar = name !== "US Dollar";

        return !isNotRealCurrency && isntDollar;
    })
    .forEach(c => {
        iso4217Json[c.code] = c.currency;
    });


///////////////////////////////////////////////////////////////

const originalMoneyJson = fs.readFileSync('money_original.json', 'utf-8');
const originalMoney = JSON.parse(originalMoneyJson);

Object.keys(originalMoney).forEach(code => {
    delete originalMoney[code]['rounding'];
    delete originalMoney[code]['code'];
});

const newCurrency = (code, symbol, symbol_native, name, name_plural, decimal_digits, ) => {
    originalMoney[code] = {
        symbol: symbol,
        name: name,
        symbol_native: symbol_native,
        decimal_digits: decimal_digits,
        name_plural: name_plural
    };
}

newCurrency(
    "AOA",
    "Kz",
    "Kz",
    "Angolan Kwanza",
    "Angolan kwanzas",
    2,
);

newCurrency(
    "XCD",
    "EC$",
    "$",
    "East Caribbean Dollar",
    "East Caribbean dollars",
    2,
);

newCurrency(
    "AWG",
    "Afl",
    "ƒ",
    "Aruban Florin",
    "Aruban florin",
    2,
);

newCurrency(
    "BSD",
    "B$",
    "$",
    "Bahamian Dollar",
    "Bahamian dollars",
    2,
);

newCurrency(
    "BBD",
    "BBD$",
    "$",
    "Barbados Dollar",
    "Barbados dollars",
    2
);

newCurrency(
    "BMD",
    "BD$",
    "$",
    "Bermudian Dollar",
    "Bermudian dollars",
    2
);

newCurrency(
    "BTN",
    "Nu",
    "Nu",
    "Bhutanese Ngultrum",
    "Bhutanese ngultrums",
    2
);

newCurrency(
    "KYD",
    "CI$",
    "$",
    "Cayman Islands Dollar",
    "Cayman Islands dollars",
    2
);

newCurrency(
    "CUP",
    "$MN",
    "₱",
    "Cuban Peso",
    "Cuban pesos",
    2
);

newCurrency(
    "ANG",
    "NAƒ",
    "ƒ",
    "Netherlands Antillean Guilder",
    "Netherlands Antillean guilders",
    2
);

newCurrency(
    "SZL",
    "E",
    "E",
    "Swazi Lilangeni",
    "Swazi emalangeni",
    2
);

newCurrency(
    "FKP",
    "FK£",
    "£",
    "Falkland Islands Pound",
    "Falkland Islands pounds",
    2
);

newCurrency(
    "FJD",
    "FJ$",
    "$",
    "Fijian Dollar",
    "Fijian dollars",
    2
);

newCurrency(
    "XPF",
    "F",
    "F",
    "CFP Franc",
    "CFP francs",
    0
);

newCurrency(
    "GMD",
    "D",
    "D",
    "Gambian Dalasi",
    "Gambian dalasi",
    2
);

newCurrency(
    "GIP",
    "£",
    "£",
    "Gibraltar Pound",
    "Gibraltar pounds",
    2
);

newCurrency(
    "GYD",
    "G$",
    "$",
    "Guyanese Dollar",
    "Guyanese dollars",
    2
);

newCurrency(
    "HTG",
    "G",
    "G",
    "Haitian Gourde",
    "Haitian gourdes",
    2
);

newCurrency(
    "KPW",
    "₩",
    "₩",
    "North Korean Won",
    "North Korean won",
    2
);

newCurrency(
    "KGS",
    "С̲",
    "С̲",
    "Kyrgyzstani Som",
    "Kyrgyzstani som",
    2
);

newCurrency(
    "LSL",
    "M",
    "M",
    "Lesotho Loti",
    "Lesotho maloti",
    2
);

newCurrency(
    "LRD",
    "L$",
    "$",
    "Liberian Dollar",
    "Liberian dollars",
    2
);

newCurrency(
    "MWK",
    "MK",
    "K",
    "Malawian Kwacha",
    "Malawian kwacha",
    2
);

newCurrency(
    "MVR",
    "Rf",
    "ރ",
    "Maldivian Rufiyaa",
    "Maldivian Rufiyaas",
    2
);

newCurrency(
    "MRU",
    "UM",
    "UM",
    "Mauritanian Ouguiya",
    "Mauritanian ouguiya",
    2
);

newCurrency(
    "MNT",
    "₮",
    "₮",
    "Mongolian Tugrik",
    "Mongolian tugrik",
    2
);

newCurrency(
    "MNT",
    "₮",
    "₮",
    "Mongolian Tugrik",
    "Mongolian tugrik",
    2
);

newCurrency(
    "PGK",
    "K",
    "K",
    "Papua New Guinean Kina",
    "Papua New Guinean kina",
    2
);

newCurrency(
    "SHP",
    "£",
    "£",
    "Saint Helena Pound",
    "Saint Helena pounds",
    2
);

newCurrency(
    "WST",
    "£",
    "£",
    "Saint Helena Pound",
    "Saint Helena pounds",
    2
);

newCurrency(
    "WST",
    "SAT",
    "$",
    "Samoan tālā",
    "Samoan tālās",
    2
);

newCurrency(
    "STN",
    "Db",
    "Db",
    "São Tomé and Príncipe Dobra",
    "São Tomé and Príncipe dobras",
    2
);

newCurrency(
    "SCR",
    "SR",
    "SRe",
    "Seychelles Rupee",
    "Seychelles rupees",
    2
);

newCurrency(
    "SLL",
    "Le",
    "Le",
    "Sierra Leonean Leone",
    "Sierra Leonean leoneans",
    2
);

newCurrency(
    "SBD",
    "SI$",
    "$",
    "Soloman Islands Dollar",
    "Soloman Islands dollars",
    2
);

newCurrency(
    "SSP",
    "SS£",
    "£",
    "South Sudanese Pound",
    "South Sudanese pounds",
    2
);

newCurrency(
    "SRD",
    "SR$",
    "$",
    "Surinam Dollar",
    "Surinam dollars",
    2
);

newCurrency(
    "TJS",
    "SM",
    "SM",
    "Tajikistani Somoni",
    "Tajikistani somonis",
    2
);

newCurrency(
    "TMT",
    "m",
    "m",
    "Turkmenistani Manat",
    "Turkmenistani manat",
    2
);

newCurrency(
    "VUV",
    "VT",
    "VT",
    "Vanuatu Vatu",
    "Vanuatu vatu",
    0
);

newCurrency(
    "VES",
    "Bs.S",
    "Bs",
    "Venezuelan Bolívar",
    "Venezuelan bolívares",
    2
);

newCurrency(
    "ZMW",
    "ZK",
    "K",
    "Zambian Kwacha",
    "Zambian kwacha",
    2
);

newCurrency(
    "ZWL",
    "Z$",
    "$",
    "Zimbabwe Dollar",
    "Zimbabwe dollars",
    2
);

Object.keys(iso4217Json).forEach(code => {
    const currency = iso4217Json[code];

    originalCurrency = originalMoney[code] || null;

    if (originalCurrency === null) {
        throw new Error(currency.name + ' not in original money json. It has code ' + code);
    }

});

fs.writeFileSync('./money.json', JSON.stringify(originalMoney, null, 4));