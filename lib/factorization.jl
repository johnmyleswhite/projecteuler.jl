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

# Switch to Pollard rho
