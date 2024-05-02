# Defining simulate_student_features to generate simulated student data
simulate_student_features <- function(n = 100) {
  set.seed(260923)
  
  # Generating student IDs
  student_ids <- seq(1, n)
  
  # Simulating student engagement and performance
  student_engagement <- rnorm(n, mean = 50, sd = 10)
  student_performance <- rnorm(n, mean = 60, sd = 15)
  
  # Creating a dataframe
  student_features <- data.frame(
    student_id = student_ids,
    student_engagement = student_engagement,
    student_performance = student_performance
  )
  return(student_features)
}

# Generate simulated data
student_features <- simulate_student_features(n = 100)

# Reducing dimensionality using PCA (Principal Component Analysis)
pca_result <- prcomp(student_features[, -1], scale. = TRUE)

# KMeans Clustering
kmeans_result <- kmeans(pca_result$x, centers = 3)

# Plotting result
library(ggplot2)
student_features$cluster <- as.factor(kmeans_result$cluster)

# Creating cluster boundaries
ggplot(student_features, aes(x = student_engagement, y = student_performance, color = cluster)) +
  geom_point() +
  stat_ellipse(aes(group = cluster), geom = "polygon", alpha = 0.2, linetype = "dashed", linewidth = 1) +
  labs(x = "Student Engagement", y = "Student Performance", color = "Cluster") +
  ggtitle("Student Engagement vs. Performance with Cluster Boundaries")


