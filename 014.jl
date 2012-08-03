function collatz(n)
  if rem(n, 2) == 0
    return n / 2
  else
    return 3n + 1
  end
end

function collatz_steps(n)
  steps = 1
  while n != 1
    n = collatz(n)
    steps += 1
  end
  steps
end

max_steps = 0
max_start = 0
for n = 1:1_000_000
  steps_used = collatz_steps(n)
  if steps_used > max_steps
    max_steps = steps_used
    max_start = n
  end
end
