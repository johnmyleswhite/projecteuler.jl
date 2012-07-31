load("lib/uncategorized.jl")

# Confirm that approach works for natural numbers below 10
upper_bound = 10
multiples_of_3 = bounded_multiples(upper_bound, 3)
multiples_of_5 = bounded_multiples(upper_bound, 5)
multiples_of_15 = bounded_multiples(upper_bound, 15)
sum(multiples_of_3) + sum(multiples_of_5) - sum(multiples_of_15)

# Use to solve problem for numbers below 1000
upper_bound = 1000
multiples_of_3 = bounded_multiples(upper_bound, 3)
multiples_of_5 = bounded_multiples(upper_bound, 5)
multiples_of_15 = bounded_multiples(upper_bound, 15)
sum(multiples_of_3) + sum(multiples_of_5) - sum(multiples_of_15)

# Slow code to serve as an error checking mechanism.
total_sum = 0
for n in 1:1000
  if rem(n, 3) == 0 || rem(n, 5) == 0
    total_sum += n
  end
end
total_sum
