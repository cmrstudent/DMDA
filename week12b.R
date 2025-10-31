# ----- t-test Example (Fixed Version) -----
# Set working directory to a writable temp folder
setwd(tempdir())
# Sample data
marks = c(65, 70, 68, 75, 80, 72, 78, 74, 69, 77)
# Hypothesized mean
mu <- 70
# Perform one-sample t-test
result <- t.test(marks, mu = mu)

# Show result
print(result)

# ----- Plot the data safely -----
# Open new graphics window (this avoids file errors)
dev.new()

hist(marks,
     main = "T-Test: Students' Marks Distribution",
     xlab = "Marks",
     col = "lightblue",
     border = "black")
abline(v = mean(marks), col = "red", lwd = 2)
text(mean(marks), 2, paste("Mean =", round(mean(marks), 2)), pos = 4)

cat("✅ Plot displayed successfully!\n")
