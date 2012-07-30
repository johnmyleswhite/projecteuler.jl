# Sum of multiples of 3 or 5 below 1000
# Add up all multiples of 3
# Add up all multiples of 5
# Subtract overlap, which consists of multiples of 15.

function bounded_multiples(bound, n)
  if rem(bound, n) == 0
    [0:n:(n * (div(bound, n) - 1))]
  else
    [0:n:(n * div(bound, n))]
  end
end

# Below 10
upper_bound = 10
multiples_of_3 = bounded_multiples(upper_bound, 3)
multiples_of_5 = bounded_multiples(upper_bound, 5)
multiples_of_15 = bounded_multiples(upper_bound, 15)

sum(multiples_of_3) + sum(multiples_of_5) - sum(multiples_of_15)

# Below 1000
upper_bound = 1000
multiples_of_3 = bounded_multiples(upper_bound, 3)
multiples_of_5 = bounded_multiples(upper_bound, 5)
multiples_of_15 = bounded_multiples(upper_bound, 15)

sum(multiples_of_3) + sum(multiples_of_5) - sum(multiples_of_15)

# Error checking mechanism
total_sum = 0
for n in 1:1000
  if rem(n, 3) == 0 || rem(n, 5) == 0
    total_sum += n
  end
end
total_sum
