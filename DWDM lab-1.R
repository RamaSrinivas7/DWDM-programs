# Given data
age_intervals <- c("1-5", "5-15", "15-20", "20-50", "50-80", "80-110")
frequency <- c(200, 450, 300, 1500, 700, 44)
cumulative_freq <- cumsum(frequency)

# Compute median class
n <- sum(frequency) / 2
median_index <- which(cumulative_freq >= n)[1]
L <- as.numeric(strsplit(age_intervals[median_index], "-")[[1]][1])
F <- ifelse(median_index > 1, cumulative_freq[median_index - 1], 0)
h <- diff(as.numeric(strsplit(age_intervals[median_index], "-")[[1]]))

# Median formula
median <- L + ((n - F) / frequency[median_index]) * h
print(median)
