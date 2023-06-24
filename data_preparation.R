
# Example data set 1: synthetic data--------------------------------------------#
set.seed(1234)
n = 120
cw1_covid19 <- rbinom(n,1, 0.1)
missing <- c(5, 7, 9, 88, 99, 18, 31)
cw1_covid19[missing] <- 999
cw2_covid19 <- rbinom(n,1, 0.1)
missing <- c(10, 20,30, 77)
cw2_covid19[missing] <- 999
cw3_covid19 <- rbinom(n,1, 0.1)
missing <- c(23, 40,50,61, 89)
cw3_covid19[missing] <- 999

data <- data.frame(cbind(cw1_covid19, cw2_covid19, cw3_covid19))  

if (!dir.exists("data")){
  dir.create("data")
}else{
  print("data")
}

write.csv(data, "data/simulated_data.csv", row.names=F)

# Example data set 2------------------------------------------------------------#

library("survival")

data(diabetic, package="survival")
data <- diabetic
