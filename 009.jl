function pythagorean_triple(n)
  (2n + 1, 2n * (n + 1), 2n * (n + 1) + 1)
end

(a, b, c) = pythagorean_triple(10)

function find_triple_by_sum(summand)
  for n = 1:summand
    (a, b, c) = pythagorean_triple(n)
    if a^2 + b^2 == c^2 && a + b + c == summand
      return (a, b, c)
    end
  end
  return (0, 0, 0)
end
find_triple_by_sum(1000)
    
# Does not generate all triples.

function pythagorean_triple(u, v)
  a = u^2 + 2 * u * v
  b = 2 * v^2 + 2 * u * v
  c = u^2 + 2 * v^2 + 2 * u * v
  (a, b, c)
end

pythagorean_triple(3, 5)

function find_triple_by_sum(summand)
  for u = 1:2:summand
    for v = 1:summand
      (a, b, c) = pythagorean_triple(u, v)
      if a^2 + b^2 == c^2 && a + b + c == summand
        return (a, b, c)
      end
    end
  end
  return (0, 0, 0)
end
find_triple_by_sum(1000)
prod(find_triple_by_sum(1000))

