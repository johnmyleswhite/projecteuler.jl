# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 99.

# Find the largest palindrome made from the product of two 3-digit numbers.

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

is_palindrome(1221)
is_palindrome(12321)
is_palindrome(1231)
is_palindrome(1212)

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

results = largest_palindrome()

# Better way to do this?
