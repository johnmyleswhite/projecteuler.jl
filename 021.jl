# Let d(n) be defined as the sum of proper divisors of n (numbers less than n which divide evenly into n).
# If d(a) = b and d(b) = a, where a  b, then a and b are an amicable pair and each of a and b are called amicable numbers.

# For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22, 44, 55 and 110; therefore d(220) = 284. The proper divisors of 284 are 1, 2, 4, 71 and 142; so d(284) = 220.

# Evaluate the sum of all the amicable numbers under 10000.

function divisors(n)
	# Find factors
	factors = factor(n)
	nfactors = length(factors)

	# Calculate number of divisors
	ndivisors = 1
	for (p, k) in factors
		ndivisors *= k + 1
	end

	# Enumerate all divisors
	results = ones(Int64, ndivisors)
	powers = zeros(Int64, nfactors)
	ps = keys(factors)
	ks = values(factors)
	for i in 1:ndivisors
		for index in 1:nfactors
			results[i] *= ps[index]^powers[index]
		end
		if i < ndivisors
			increment = 1
			index = 1
			while increment == 1
				if powers[index] < ks[index]
					powers[index] += 1
					increment = 0
				else
					powers[index] = 0
					index += 1
				end
			end
		end
	end

	# Sort divisors
	sort!(results)

	# Only return proper divisors
	return results[1:(ndivisors - 1)]
end

function divisorsum(n)
	sum(divisors(n))
end

dtable = Array(Int64, 10_000)

for i in 1:10_000
	dtable[i] = divisorsum(i)
end

# counts = Dict()

# for i in 1:10_000
# 	d = dtable[i]
# 	counts[d] = get(counts, d, 0) + 1
# end

# s = 0
# for i in 1:10_000
# 	if counts[dtable[i]] > 1
# 		s += i
# 	end
# end

s = 0

for a in 1:10_000
	b = dtable[a]
	if a != b && 1 <= b < 10_000 && a == dtable[b]
		@printf "Amicable pair: %d %d\n" a b
		s += a
	end
end
