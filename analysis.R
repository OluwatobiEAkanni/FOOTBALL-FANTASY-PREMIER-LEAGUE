#the following set of code is inspired by  "Dr. Noll J. (2023) Academic section: analysis-assignment, analysis.R"
library (base)
data <- read.csv("cleaned_merged_seasons.csv")

stdout <- pairwise.t.test(data$season_x, data$total_points, p.adjust.method = "bonferroni")

print(stdout)
