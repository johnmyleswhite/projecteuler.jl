x = factorial(BigInt(100))
s = 0
while x != 0
	s += mod(x, 10)
	x = fld(x, 10)
end
