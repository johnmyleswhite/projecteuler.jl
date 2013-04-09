# If the numbers 1 to 5 are written out in words: one, two, three, four, five, then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.

# If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words, how many letters would be used?

# NOTE: Do not count spaces or hyphens. For example, 342 (three hundred and forty-two) contains 23 letters and 115 (one hundred and fifteen) contains 20 letters. The use of "and" when writing out numbers is in compliance with British usage.

function words(x)
	# Special rules for 1-10
	# Special rules for 11-20
	digits = {
	           1 => "one",
	           2 => "two",
	           3 => "three",
	           4 => "four",
	           5 => "five",
	           6 => "six",
	           7 => "seven",
	           8 => "eight",
	           9 => "nine"
	         }
	teens = {
	           11 => "eleven",
	           12 => "twelve",
	           13 => "thirteen",
	           14 => "fourteen",
	           15 => "fifteen",
	           16 => "sixteen",
	           17 => "seventeen",
	           18 => "eighteen",
	           19 => "nineteen"
	         }
	tens = {
	         10 => "ten",
	         20 => "twenty",
	         30 => "thirty",
	         40 => "forty",
	         50 => "fifty",
	         60 => "sixty",
	         70 => "seventy",
	         80 => "eighty",
	         90 => "ninety"
	       }
	if x == 1000
		return "one thousand"
	end
	hundreds_digit = fld(x, 100)
	o = ""
	x = mod(x, 100)
	if hundreds_digit > 0
		o = string(o, @sprintf "%s hundred" digits[hundreds_digit])
	end
	if x > 0 && hundreds_digit > 0
		o = string(o, " and ")
	end
	if has(teens, x)
		o = string(o, teens[x])
		return o
	end
	if has(tens, x)
		o = string(o, tens[x])
		return o
	end
	tens_digit = fld(x, 10)
	tens_digit *= 10 
	ones_digit = mod(x, 10)
	if tens_digit > 0 && ones_digit > 0
		o = string(o, tens[tens_digit], "-", digits[ones_digit])
		return o
	end
	if tens_digit == 0 && ones_digit > 0
		o = string(o, digits[ones_digit])
		return o
	end
	if tens_digit > 0 && ones_digit == 0
		o = string(o, tens[tens_digit])
		return o
	end
	if tens_digit == 0 && ones_digit == 0
		return o
	end
end

for i in 1:25
	@printf "%d: %s\n" i words(i)
end

c = 0
for i in 1:1000
	s = words(i)
	#@printf "%d: %s\n" i words(i)
	s = replace(s, r"[- ]", "")
	c += length(s)
end

@printf "Total count %d\n" c
