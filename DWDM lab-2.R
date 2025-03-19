# Given data (sorted)
ages <- c(13, 15, 16, 16, 19, 20, 20, 21, 22, 22, 25, 25, 25, 25, 30, 33, 33, 
          35, 35, 35, 35, 36, 40, 45, 46, 52, 70)

# (a) Compute Mean and Median
mean_value <- mean(ages)
median_value <- median(ages)

# (b) Compute Mode
mode_value <- names(sort(table(ages), decreasing=TRUE))[1:2]  # Top 2 most frequent values

# (c) Compute Midrange
midrange_value <- (min(ages) + max(ages)) / 2

# (d) Compute Q1 (First Quartile) and Q3 (Third Quartile)
Q1 <- quantile(ages, 0.25)
Q3 <- quantile(ages, 0.75)

# Print results
cat("Mean:", mean_value, "\n")
cat("Median:", median_value, "\n")
cat("Mode:", mode_value, "\n")
cat("Midrange:", midrange_value, "\n")
cat("Q1 (First Quartile):", Q1, "\n")
cat("Q3 (Third Quartile):", Q3, "\n")
