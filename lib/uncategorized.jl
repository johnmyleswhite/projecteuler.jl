# Enumerate the multiples of n up to some strict upper bound.
function bounded_multiples(bound, n)
  if rem(bound, n) == 0
    [0:n:(n * (div(bound, n) - 1))]
  else
    [0:n:(n * div(bound, n))]
  end
end
