function miller_rabin(n)
  if rem(n, 2) == 0
    return false
  end
  
  a = randi(n)
  
  s = 0
  m = n - 1
  while rem(m, 2) == 0
    s += 1
    m /= 2
  end
  d = m
  @assert 2^s * d == n - 1
  a^d # Needs to be done with exact precision.
end
