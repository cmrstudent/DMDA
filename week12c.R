# Sample data
group1 <- c(25, 30, 28, 35, 32, 31, 29)
group2 <- c(45, 50, 48, 52, 47, 49, 51)

# Perform F-test to compare variances
result <- var.test(group1, group2)

# Display the result
print(result)
par(mar = c(4, 4, 2, 1))

# Visualize the data using boxplots
boxplot(group1, group2,
        names = c("Group 1", "Group 2"),
        main = "F-Test: Comparison of Variances",
        col = c("lightblue", "lightgreen"),
        ylab = "Values")

# Add horizontal mean lines for clarity
abline(h = mean(group1), col = "blue", lty = 2)
abline(h = mean(group2), col = "green", lty = 2)
