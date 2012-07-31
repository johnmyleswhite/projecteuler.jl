#The sum of the squares of the first ten natural numbers is,
#
#12 + 22 + ... + 102 = 385
#The square of the sum of the first ten natural numbers is,
#
#(1 + 2 + ... + 10)2 = 552 = 3025
#Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025  385 = 2640.

#Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

function sum_of_squares(n)
  int((n * (n + 1) * (2n + 1)) / 6)
end

function sum_of_naturals(n)
  int((n * (n + 1)) / 2)
end

a = 100
sum_of_naturals(a)^2 - sum_of_squares(a)
