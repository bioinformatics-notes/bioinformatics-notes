# Biomarker exploration example
# Simulated clinical-style data

# Create a reproducible dataset
set.seed(123)

biomarker_data <- data.frame(
  patient_id = 1:100,
  biomarker = rnorm(100, mean = 50, sd = 10),
  sex = sample(c("Female", "Male"), 100, replace = TRUE)
)

# Inspect the data
head(biomarker_data)
summary(biomarker_data)

# Basic visualisation
hist(
  biomarker_data$biomarker,
  main = "Distribution of Simulated Biomarker Values",
  xlab = "Biomarker concentration",
  col = "lightblue",
  border = "white"
)

# Boxplot by sex
boxplot(
  biomarker ~ sex,
  data = biomarker_data,
  main = "Biomarker Distribution by Sex",
  ylab = "Biomarker concentration",
  col = c("pink", "lightblue")
)
