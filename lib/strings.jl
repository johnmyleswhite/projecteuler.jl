function is_palindrome(n)
  digits = split(string(n), "")
  l = numel(digits)
  # If it's odd, just ignore middle entry
  for i = 1:div(l, 2)
    if digits[i] != digits[l - i + 1]
      return false
    end
  end
  return true
end

function largest_palindrome()
  palindromes = zeros(Int, 0)
  for i = reverse(1:999)
    for j = reverse(1:999)
      if is_palindrome(i * j)
        push(palindromes, i * j)
      end
    end
  end
  max(palindromes)
end
