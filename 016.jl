# 2^15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.
# 
# What is the sum of the digits of the number 2^1000?

# Fast, easy solution
function digitsum(x)
	s = 0
	while x != 0
		s += mod(x, 10)
		x = fld(x, 10)
	end
	return s
end

x = BigInt(2)^1000
digitsum(x)

# Hard solution?

# How to compute sum without representing full number, which is enormous.

# Note that 2^N = 1(0){N}, where there are N copies of 0 after the initial 1.

# Any obvious relationship between values in binary and values in decimal?

# Could do expansion of b1....b(n+1) as b(n+1) * 2^0 + b(n) * 2^1 + ....

# First calculate the values of x mod b^i for all i below a pre-specified upper bound
function modular_values(x, b, bound)
end

