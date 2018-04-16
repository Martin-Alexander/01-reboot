# Literally match the string "le wagon"

regex = /le wagon/

test_strings = [
  "le wagon"
]

p test_strings.map { |string| string.match(regex) }

# Match the word wagon with any number of extra "a"s

regex = /le wa+gon/

test_strings = [
  "le wagon",
  "le wgon",
  "le waaaaagon"
]

p test_strings.map { |string| string.match(regex) }

# Match the word wagon with any number of extra "a"s no more than 5

regex = /le wa{1,5}gon/

test_strings = [
  "le wagon",
  "le wgon",
  "le waaaaagon",
  "le waaaaaaagon",
  "le waaagon"
]

p test_strings.map { |string| string.match(regex) }

# Match the word cat with any number of repeating "at"s at the end

regex = /c(at)+/

test_strings = [
  "cat",
  "bat",
  "catatatatatat"
]

p test_strings.map { |string| string.match(regex) }

# Match the word cat, bat, and rat

regex = /(c|b|r)at+/

test_strings = [
  "cat",
  "bat",
  "sat",
  "mat",
  "rat",
]

p test_strings.map { |string| string.match(regex) }

# Match the number and letters of "Password123456"

test_string = "Password123456"

regexs = [
  /[swrd]/,
  /[a-z]/,
  /[A-Z]/,
  /[0-9]/,
  /[^a-z]/
]

p regexs.map { |regex| test_string.match(regex) }
