function pythagorean_triple(u, v)
  a = u^2 + 2 * u * v
  b = 2 * v^2 + 2 * u * v
  c = u^2 + 2 * v^2 + 2 * u * v
  (a, b, c)
end

pythagorean_triple(3, 5)
