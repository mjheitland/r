# switch into 'mean_salary' folder
setwd("~/dev/r/mean_salary")
getwd()

# show version of R
cat(R.version.string, "\n")

# install and load package to read Excel file
# install.packages("readxl") # nolint
library(readxl)

# Create a data frame with the provided data and calculate mean salary
data1 <- data.frame(
  emp_id = 1:5,
  emp_name = c("Rick", "Dan", "Michelle", "Ryan", "Gary"),
  salary = c(623.3, 515.2, 611, 729, 843.25)
)
mean_salary <- mean(data1$salary)
cat("Mean Salary: ", mean_salary, "\n")

# Load the Excel file and calculate mean salary
data2 <- read_excel("employee_data.xlsx")
head(data2)
mean_salary <- mean(data2$salary)
cat("Mean Salary: ", mean_salary, "\n")
