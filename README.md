---

# Student Engagement and Performance Analysis with Clustering

This R script demonstrates how to analyze student engagement and performance using clustering techniques.

## Overview

The script performs the following steps:

1. **Data Simulation**: Simulates student data including student IDs, engagement scores, and performance scores.
2. **Dimensionality Reduction**: Uses Principal Component Analysis (PCA) to reduce the dimensionality of the data.
3. **Clustering**: Applies KMeans clustering to group students based on their engagement and performance scores.
4. **Visualization**: Plots the student engagement and performance data with cluster boundaries.

## Prerequisites

Before running the script, ensure you have the following R libraries installed:

- `ggplot2`: For data visualization.
- `stats`: For statistical functions.

You can install these packages using the following commands:

```R
install.packages("ggplot2")
install.packages("stats")
```

## Usage

1. Clone this repository to your local machine:

```bash
git clone https://github.com/1amahuman/ML-Lab-3/git
```

2. Navigate to the directory containing the R script.

3. Run the script using R or RStudio.

```R
source("student_analysis.R")
```

## Results

The script generates a plot that shows student engagement vs. performance with cluster boundaries. Each cluster is represented by a different color, allowing for visual interpretation of the data clusters.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---
