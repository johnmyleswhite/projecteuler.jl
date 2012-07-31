function is_prime(n)
  for i = 2:floor(sqrt(n))
    if rem(n, i) == 0
      return false
    end
  end
  return true
end
