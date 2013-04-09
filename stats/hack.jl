f = open("stats/old_problems.csv", "r")
lines = readlines(f)
println(lines[1])
for line = lines[2:(end - 1)]
  fields = split(chomp(line), ",")
  println(join(fields[1:3], "\t"))
  println(join(fields[4:6], "\t"))
end
println(lines[end])
close(f)
