problems <- read.csv("stats/problems.tsv", sep = "\t")
ggplot(problems, aes(x = n, y = ProblemsSolved)) +
  geom_line()
ggplot(problems, aes(x = n, y = ProblemsSolved)) +
  geom_line() +
  scale_y_log10()
ggplot(problems, aes(x = n, y = log1p(ProblemsSolved))) +
  geom_line() +
  geom_smooth(method = "lm")
ggplot(problems, aes(x = log1p(n), y = log1p(ProblemsSolved))) +
  geom_line() +
  geom_smooth(method = "lm")
# Like exponential decay after log transform.
lm.fit <- lm(log1p(ProblemsSolved) ~ exp(-n), data = problems)

problems <- transform(problems, Truth = log1p(ProblemsSolved))
problems <- transform(problems, Exponential = 3.273 + 26.426 * exp(-n))

ggplot(problems, aes(x = n, y = Truth)) +
  geom_point() +
  geom_smooth()

# Find proper parameters later.
  
library("reshape2")
probs <- melt(problems[, c("n", "Truth", "Exponential")], id.vars = c("n"))
ggplot(probs, aes(x = n, y = value, group = variable, color = variable)) + geom_point()
