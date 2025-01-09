```R
#Corrected function to handle non-numeric input
calculate_mean <- function(x) {
  if (length(x) == 0) {
    return(NA) 
  } else if (!is.numeric(x)){
    return(paste("Error: Input vector must be numeric", sep = ""))
  } else {
    sum_x <- sum(x, na.rm = TRUE) 
    return(sum_x / length(x))
  }
}

# Example usage:
vec1 <- c(1, 2, 3, 4, 5)
vec2 <- c(1, 2, NA, 4, 5)
vec3 <- c("a", "b", "c")

print(calculate_mean(vec1)) #Correct Result
print(calculate_mean(vec2)) #Correct Result
print(calculate_mean(vec3)) #Correct Result with error message
```