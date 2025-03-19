# Input data
data <- c(11, 13, 13, 15, 15, 16, 19, 20, 20, 20, 21, 21, 22, 23, 24, 30, 40, 45, 45, 45, 71, 72, 73, 75)

# Number of bins
num_bins <- 6

# Split data into bins
bins <- split(data, cut(seq_along(data), breaks = num_bins, labels = FALSE))

# a) Smoothing by Bin Mean
smoothed_mean <- unlist(lapply(bins, function(x) rep(mean(x), length(x))))
cat("Smoothed by Bin Mean:\n", smoothed_mean, "\n\n")

# b) Smoothing by Bin Median
smoothed_median <- unlist(lapply(bins, function(x) rep(median(x), length(x))))
cat("Smoothed by Bin Median:\n", smoothed_median, "\n\n")

# c) Smoothing by Bin Boundaries
smoothed_boundaries <- unlist(lapply(bins, function(x) rep(c(min(x), max(x)), each = length(x) / 2)))
cat("Smoothed by Bin Boundaries:\n", smoothed_boundaries, "\n")