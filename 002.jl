# Even Fibonaccis occur every three
# Why?
# Sum of two odds is even
# Sum of odd and even is odd
# So pattern is
# 1, 2, 3, 5, 8, 13, 21, ...
# ODD, EVEN, ODD, ODD, EVEN

# Another cleaner way to write this is
# 1, 1, 2, 3, 5, 8, 13, 21, ...
# ODD, ODD, EVEN, ODD, ODD, EVEN

# So only Fibonacci numbers with indices of the form 3k + 2 are even.
# So list Fibonacci numbers below bound.
# Find top index
# Indices are simply [2:3:index_of_bound]
# Answer is sum(fibs[indices])

function calculate_fibs(bound)
  a = 1
  b = 2
  fibs = zeros(Int, 1)
  fibs[1] = a
  while b < bound
    (a, b) = (b, a + b)
    push(fibs, a)
  end
  fibs
end

calculate_fibs(100)

fibs = calculate_fibs(4_000_000)
index_of_bound = length(fibs)
indices = 2:3:index_of_bound
sum(fibs[indices])

# Test case
fibs = calculate_fibs(100)
index_of_bound = length(fibs)
indices = 2:3:index_of_bound
sum(fibs[indices])
