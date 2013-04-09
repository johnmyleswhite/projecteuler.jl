#Starting in the top left corner of a 22 grid, there are 6 routes (without backtracking) to the bottom right corner.

# How many routes are there through a 2020 grid?

# Can use graph theory to solve.
# Find paths.
# Not Hamiltonian paths.
# No cycles allowed.
# Called two-by-two grid, but is really a 3-by-3 graph, where there are 2x2 holes created by edges.
# Represent as an adjacency matrix with 21-by-21 vertices.
# Vertices inside at (i, j) are connected to (i, j - 1), (i, j + 1), (i - 1, j), (i + 1, j).
# On boundary, same rule applies except some connections are meaningless.
 
# Not allowed to go backwards
# Breadth-first search
