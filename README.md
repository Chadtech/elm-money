# Elm Money

All the worlds currencies as customs types, with helper functions too, in the Elm programming language. this package doesnt do all the work of using currency in code, but it does some crucial things if you are interested in:
- Rendering currencies to a localized format
- Working with currencies as a unit and converting from one ot the other.

# Currency as Integers

Its very common in practice that money be stored as an integer, meaning; if I had one dollar in my bank account it would be stored as `100 : Int`. This is good for two reason. Firstly, you dont want bank account ballances changing due to floating point errors. Secondly, storing things in the smallest unit is a simple universal rule applicable to all the worlds currencies. All currencies have a smallest integer unit and they only vary by how that smallest unit is grouped into larger units. Therefore, if you just store the smallest unit, and also information about how its grouped then you have a data format applicable to all the worlds currencies, and you have no special cases.

For our purposes, as programmers who want to render currency, usually we are getting information from the backend like `{ currency: "EUR", amount: 400 }`. We need to take the currency, and the value, and figure out how this money value is meant to be presented. With this package you can, for example, figure out that `"EUR"` is has two decimals, and its symbol is `"€"`; which is a big step of the way to representing money.

# Formatting and Localizing Currency

This is a big and messy topic this package does not fully conquer. You might know that `USD` uses the `$` symbol, and that it comes in cents which are two decimals (`.00`), this is actually not enough information to know how the currency should be rendered. Different regions of the world might put the symbol on the left or right side of the currency  (`$1.00` or `1.00$`). They also might use `.` or `,` for decimals. They also might put a space in between the symbol and the amount. This package provides _some_ but not _all_ of the necessary information to fully localize currency rendering. Perhaps it is enough for your project.

# Converting and controlling Currency

Imagine you wanted to add to `Int` currency amounts, but one was `USD` and the other was `EUR`. You would get a really ugly error from nonsense currency combinations. There is a way to eliminate those errors entirely using something called "phantom types", which you can learn more about here: [here](https://thoughtbot.com/blog/modeling-currency-in-elm-using-phantom-types). This package doesnt provide support for that kind of functionality, but it seems likely that it would interest you if you are working with currency.

# Contributing

PRs and issues are welcome.