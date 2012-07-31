function is_prime(n)
  for i = 2:floor(sqrt(n))
    if rem(n, i) == 0
      return false
    end
  end
  return true
end

#is_prime(2)
#is_prime(3)
#is_prime(4)
#is_prime(5)

# Accumulate list of known primes.
# Skip these primes and all of their multiples fro list to test.
# Store pure primes in original list.

function sieve_of_erasthanes(bound)
  primes = zeros(Int, 0)
  worth_testing = ones(Int, bound)
  worth_testing[1] = 0
  for index = [2:bound]
    if worth_testing[index] == 1
      if is_prime(index)
        push(primes, index)
        multiples = index:index:(index * int(floor(bound / index)))
        for multiple = multiples
          worth_testing[multiple] = 0
        end
      end
    end
  end
  primes
end

#primes = sieve_of_erasthanes(100)
#all(map(n -> is_prime(n), primes))
