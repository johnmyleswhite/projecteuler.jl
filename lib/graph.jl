function floyd_warshall(edge_costs)
  # Initialize path costs to edge costs.
  path = copy(edge_costs)
  
  # Store number of vertices.
  n = size(path, 1)
  
  # Do the FW triple loop to get the correct path costs.
  for k = 1:n
    for i = 1:n
      for j = 1:n
        path[i, j] = min(path[i, j], path[i, k] + path[k, j])
      end
    end
  end
  
  # Return the costs for all paths.
  path
end

# costs is an NxN matrix of weights.
# To convert an adjacency to simple set of weights, do the following:
# costs[i, i] == 0.0
# costs[i, j] == Inf if g[i, j] == 0
# costs[i, j] == 1.0 if g[i, j] == 1

g = [1 1 0;
     1 1 1;
     0 1 1;]

function adjacency_to_edge_costs(g)
  costs = convert(Array{Float,2}, copy(g))
  n = size(costs, 1)
  for i = 1:n
    for j = 1:n
      if i == j
        costs[i, j] = 0.0
      else
        if g[i, j] == 0
          costs[i, j] = Inf
        else
          costs[i, j] = 1.0
        end
      end
    end
  end
  costs
end

adjacency_to_edge_costs(g)

g2 = [0 1 0;
      1 0 1;
      0 1 0;]

adjacency_to_edge_costs(g2)

floyd_warshall(adjacency_to_edge_costs(g))

function transitive_closure(g)
  # Initialize path costs to edge costs.
  closure = copy(g)
  
  # Store number of vertices.
  n = size(g, 1)
  
  # Do the FW triple loop to get the correct path costs.
  for k = 1:n
    for i = 1:n
      for j = 1:n
        closure[i, j] = closure[i, j] | (closure[i, k] & closure[k, j])
      end
    end
  end
  
  # Return the costs for all paths.
  closure
end

transitive_closure(g)

# Code up DFS and BFS

# function find_all_paths(graph, start, end): 
#     path  = [] 
#     paths = [] 
#     queue = [(start, end, path)] 
#     while queue: 
#         start, end, path = queue.pop() 
#         print 'PATH', path 
# 
#         path = path + [start] 
#         if start == end: 
#             paths.append(path) 
#         for node in set(graph[start]).difference(path): 
#             queue.append((node, end, path)) 
#     return paths 
