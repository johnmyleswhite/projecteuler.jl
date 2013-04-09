# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 99.

# Find the largest palindrome made from the product of two 3-digit numbers.

load("lib/strings.jl")

is_palindrome(1221)
is_palindrome(12321)
is_palindrome(1231)
is_palindrome(1212)

results = largest_palindrome()

# Better way to do this?
