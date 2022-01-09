# Exercise 4: functions and conditionals

# Define a function `is_twice_as_long` that takes in two character strings, and 
# returns whether or not (e.g., a boolean) the length of one argument is greater
# than or equal to twice the length of the other.
# Hint: compare the length difference to the length of the smaller string
is_twice_as_long <- function(s1, s2) {
  difference <- abs(nchar(s1) - nchar(s2))
  return(difference >= nchar(s1) | difference >= nchar(s2))
}


# Call your `is_twice_as_long` function by passing it different length strings
# to confirm that it works. Make sure to check when _either_ argument is twice
# as long, as well as when neither are!
is_twice_as_long("333", "1")
is_twice_as_long("333", "333")
is_twice_as_long("1", "333")
is_twice_as_long("4444", "333")


# Define a function `describe_difference` that takes in two strings. The
# function should return one of the following sentences as appropriate
#   "Your first string is longer by N characters"
#   "Your second string is longer by N characters"
#   "Your strings are the same length!"
describe_difference <- function(s1, s2) {
  difference <- (nchar(s1) - nchar(s2))
  if (difference == 0) {
    print("Your strings are the same length!")
  } else if (difference > 0) {
    print(paste("Your first string is longer by ",difference," characters"))
  } else
    print(paste("Your second string is longer by ",abs(difference), " characters"))
}

# Call your `describe_difference` function by passing it different length strings
# to confirm that it works. Make sure to check all 3 conditions1
describe_difference("333", "1")
describe_difference("1", "333")
describe_difference("1", "1")
