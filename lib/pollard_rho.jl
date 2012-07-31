#Inputs: n, the integer to be factored; and f(x), a pseudo-random function modulo n
#Output: a non-trivial factor of n, or failure.

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

inner_pollard_rho(1729, x -> randi(1729))

function is_prime(n)
  for i = 2:floor(sqrt(n))
    if rem(n, i) == 0
      return false
    end
  end
  return true
end

function pollard_rho(n)
  m = n
  factors = zeros(Int, 0)
  println("m: $m")
  println("factors: $factors")
  println()  
  while m != 1 && !is_prime(m)
    d = inner_pollard_rho(m, x -> randi(m))
    if d != 1
      m = int(m / d)
      push(factors, d)
      println("m: $m")
      println("d: $d")
      println("factors: $factors")
      println()      
    end
  end
  if m != 1
    push(factors, m)
  end
  sort(factors)
end

pollard_rho(1729)
pollard_rho(2 * 2 * 3 * 3 * 5)
# Need to refactor numbers.

factors = pollard_rho(600851475143)
map(q -> is_prime(q), factors)

