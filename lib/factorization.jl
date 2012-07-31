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
    if d != 1
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
