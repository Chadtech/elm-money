# Elm Money

All the worlds currencies as records and customs types, with helper functions too, in the Elm programming language. this package doesnt do all the work of formatting currency UI, but it does a lot of it.

# Whats the deal with currencies?

Its very common in practice that money be stored with two pieces of data, 0 An `Integer`, representing the value of the money in the smallest unit of that currency (cents in the case of dollars); and 1, the code of that currency (`USD` in the case of US Dollars).

Why? Well an `Integer` for two reasons, one is you dont want things like bank account ballances changing due to floating point errors, but also because storing things in the smallest unit is a simple universal rule, rather than having special rules for each of the 100+ currencies of the world.

For the front end, that usually means you are getting information from the backend like the money is a `"EUR"` currency and its value is `400`. You need to take the currency, and the value, and figure out how this money value is meant to be presented. With this package you can figure out that whatever `"EUR"` is has two decimals, and its symbol is "€".

PRs and issues are welcome.