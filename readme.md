# Elm Money

All the worlds currencies as records and customs types, with helper functions too, in the Elm programming language. this package doesnt do all the work of formatting currency UI, but it does a lot of it.

# Whats the deal with currencies?

Its very common in practice that money be stored with two pieces of data 
- An integer, representing the value of the money in the smallest unit of that currency (cents in the case of dollars).
- The code of that currency (`USD` in the case of US Dollars).

This common approach is good for two reasons:
- You dont want bank account ballances changing due to floating point errors
- storing things in the smallest unit is a simple universal rule applicable to all the worlds currencies. You dont want to have special rules and data types for every currency.

For the front end, that usually means you are getting information from the backend like the money is a `"EUR"` currency and its value is `400`. You need to take the currency, and the value, and figure out how this money value is meant to be presented. With this package you can, for example, figure out that `"EUR"` is has two decimals, and its symbol is "€"; which is a big step of the way to representing money.

PRs and issues are welcome.