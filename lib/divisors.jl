# Here we enumerate divisors by stepping through Cartesian product.
load("lib/factorization.jl")

function divisors(n)
  factorization = fundamental_theorem(n)
  d = 1
  for prime = keys(factorization)
    d *= (factorization[prime] + 1)
  end
  d
end

# If object is p1^e1...pk^ek, there are (e1 + 1) * ... * (ek + 1) divisors.
# We just count them here.
function divisor(n)
  factorization = fundamental_theorem(n)
  d = 1
  for prime = keys(factorization)
    d *= (factorization[prime] + 1)
  end
  d
end

@assert divisor(8) == 4
@assert divisor(8 * 3) == 8
@assert divisor(8 * 9) == 12

function totient(n)
  factorization = fundamental_theorem(n)
  t = n
  for prime = keys(factorization)
    t *= (1 - 1 / prime)
  end
  int(round(t))
end

@assert totient(36) == 12
@assert totient(1) == 1
@assert totient(2) == 1
@assert totient(3) == 2
@assert totient(4) == 2
@assert totient(5) == 4
@assert totient(6) == 2
@assert totient(7) == 6
@assert totient(8) == 4
@assert totient(9) == 6
