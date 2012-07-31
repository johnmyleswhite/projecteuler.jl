load("lib/factorization.jl")

# Confirm that factorize always returns prime factors.
# Seems certain because it works forward in order and pulls out any multiple of a prime before

factorize(2 * 2 * 3)
factorize(2 * 3 * 3)
factorize(1729)
factorize(13195)

all(map(n -> is_prime(n), factorize(1729)))
all(map(n -> is_prime(n), factorize(13195)))

inner_pollard_rho(1729, x -> randi(1729))
pollard_rho(1729)
pollard_rho(2 * 2 * 3 * 3 * 5)
