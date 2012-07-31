load("lib/uncategorized.jl")

@assert bounded_multiples(10, 2) == [0, 2, 4, 6, 8]
@assert bounded_multiples(10, 3) == [0, 3, 6, 9]
