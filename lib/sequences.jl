function fibonacci_sequence(bound)
  a = 1
  b = 2
  fibs = zeros(Int, 1)
  fibs[1] = a
  while b < bound
    (a, b) = (b, a + b)
    push(fibs, a)
  end
  fibs
end
