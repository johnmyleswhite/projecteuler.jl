# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?

load("lib/factorization.jl")

factors = factorize(600851475143)
max(factors)
