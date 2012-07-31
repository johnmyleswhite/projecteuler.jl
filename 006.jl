#The sum of the squares of the first ten natural numbers is,
#
#12 + 22 + ... + 102 = 385
#The square of the sum of the first ten natural numbers is,
#
#(1 + 2 + ... + 10)2 = 552 = 3025
#Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025  385 = 2640.

#Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

function sum_of_squares(n)
  s = 0
  for i = 1:n
    s = s + i^2
  end
  s
end

@assert sum_of_squares(10) == 385

function sum_of_naturals(n)
  int((n * (n + 1)) / 2)
end

@assert sum_of_naturals(10) == 55

@assert sum_of_naturals(10)^2 - sum_of_squares(10) == 2640

sum_of_naturals(100)^2 - sum_of_squares(100)
