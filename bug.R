```R
# This function attempts to calculate the mean of a vector, but it has a subtle bug.
calculate_mean <- function(x) {
  if (length(x) == 0) {
    return(NA) # Handle empty vectors
  } else {
    sum_x <- sum(x, na.rm = TRUE)  #Error is here, sum() function cannot handle non-numeric input
    return(sum_x / length(x))
  }
}

# Example usage:
vec1 <- c(1, 2, 3, 4, 5)
vec2 <- c(1, 2, NA, 4, 5) #Vector with NA
vec3 <- c("a", "b", "c") #Vector with characters

print(calculate_mean(vec1)) #Correct Result
print(calculate_mean(vec2)) #Correct Result
print(calculate_mean(vec3)) #Error, non-numeric input
```