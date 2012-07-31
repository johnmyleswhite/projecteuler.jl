load("lib/primality.jl")

primes = sieve_of_erasthanes(2_000_000)

sum(primes)
