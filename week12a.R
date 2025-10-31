# Set working directory
setwd(tempdir())

# Data
observed <- c(50, 30, 20)
expected <- c(40, 40, 20)

# Chi-squared test
chi_result <- chisq.test(observed, p = expected / sum(expected))
print(chi_result)

# Plot
dev.new()
barplot(
  rbind(observed, expected),
  beside = TRUE,
  col = c("skyblue", "orange"),
  names.arg = c("A", "B", "C"),
  main = "Chi-squared Test: Observed vs Expected",
  ylab = "Frequency"
)
legend(
  "topright",
  legend = c("Observed", "Expected"),
  fill = c("skyblue", "orange")
)