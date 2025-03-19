# Given data
data <- c(200, 300, 400, 600, 1000)

# (a) Min-Max Normalization
min_val <- min(data)
max_val <- max(data)
min_max_norm <- (data - min_val) / (max_val - min_val)

# (b) Z-Score Normalization
mean_val <- mean(data)
std_dev <- sd(data)
z_score_norm <- (data - mean_val) / std_dev

# Print results
cat("Min-Max Normalization:", min_max_norm, "\n")
cat("Z-Score Normalization:", z_score_norm, "\n")
