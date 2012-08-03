#Inputs: n, the integer to be factored; and f(x), a pseudo-random function modulo n
#Output: a non-trivial factor of n, or failure.

load("lib/primality.jl")

function inner_pollard_rho(n, f)
  x = 2
  y = 2
  d = 1
  while d == 1
    x = f(x)
    y = f(f(y))
    d = gcd(abs(x - y), int(n))
    if d == n
      return 1
    else
      return d
    end
  end
end

function pollard_rho(n)
  m = n
  factors = zeros(Int, 0)
  while m != 1 && !is_prime(m)
    d = inner_pollard_rho(m, x -> randi(m))
    if is_prime(d)
      m = int(m / d)
      push(factors, d)
    end
  end
  if m != 1
    push(factors, m)
  end
  sort(factors)
end

function factorize(n)
  pollard_rho(n)
end

function numeric_insert(hash, key)
  if has(hash, key)
    hash[key] += 1
  else
    hash[key] = 1
  end
end

function fundamental_theorem(n)
  factors = factorize(n)
  factorization = Dict()
  for factor = factors
    numeric_insert(factorization, factor)
  end
  factorization
end

# Separate enumeration and counting.
function divisors(n)
  # If object is p1^e1...pk^ek, there are (e1 + 1) * ... * (ek + 1) divisors.
  factorization = fundamental_theorem(n)
  d = 1
  for prime = keys(factorization)
    d *= (factorization[prime] + 1)
  end
  d
end

@assert divisors(8) == 4
@assert divisors(8 * 3) == 8
@assert divisors(8 * 9) == 12

# divisor
# totient
