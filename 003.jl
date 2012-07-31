# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?

# Do the dumbest possible factorization.
function factorize(n)
  m = n
  factors = zeros(Int, 0)
  baseline = 2
  while m != 1
    for i in baseline:m
      if rem(m, i) == 0
        # Switch to pulling out largest multiple of i allowed
        baseline = i
        m = div(m, i)
        push(factors, i)
      end
    end
  end
  factors
end

# Try recursion?
function factorize(n)
  m = n
  factors = zeros(Int, 0)
  baseline = 2
  while m != 1
    for i in baseline:m
      if rem(m, i) == 0
        baseline = i
        while rem(m, i) == 0
          m = div(m, i)
        end
        push(factors, i)
      end
    end
  end
  factors
end

factorize(2 * 2 * 3) # Loop?
factorize(2 * 3 * 3)
factorize(1729)
factorize(13195)

# Confirm that factorize always returns prime factors.
# Seems certain because it works forward in order and pulls out any multiple of a prime before
# 

# Do the _almost_ dumbest possible primality test.
function is_prime(n)
  for i = 2:floor(sqrt(n))
    if rem(n, i) == 0
      return false
    end
  end
  return true
end

all(map(n -> is_prime(n), factorize(1729)))
all(map(n -> is_prime(n), factorize(13195)))

factors = factorize(600851475143)
max(factors)

# 
