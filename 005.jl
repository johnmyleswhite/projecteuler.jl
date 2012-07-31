# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

# Find all primes below bound.
# Exponentiate them to the log of bound.
# Multiply them.
# If number is divisible by a composite number < n, it must also be divisible by the product of primes going into them.

load("lib/primality.jl")

function bounded_primes(bound)
  # Find all primes below bound
  primes = zeros(Int, 0)
  for i = 2:bound
    if is_prime(i)
      push(primes, i)
    end
  end
  primes
end

function smallest_composite(bound)
  powers = map(p -> int(floor(log(p, bound))), primes)
  prod(map(x -> int(x), primes .^ powers))
end

smallest_composite(10)
smallest_composite(20)

# Need to be sure this gets all composites.
# m = p1^e1...pk^ek < n
# Going to produce 
# Since we will compute p1^
# More work to be done here.
