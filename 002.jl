load("lib/sequences.jl")

# Test approach for small n.
fibs = fibonacci_sequence(100)
index_of_bound = length(fibs)
indices = 2:3:index_of_bound
sum(fibs[indices])

# Solve full problem.
fibs = fibonacci_sequence(4_000_000)
index_of_bound = length(fibs)
indices = 2:3:index_of_bound
sum(fibs[indices])
