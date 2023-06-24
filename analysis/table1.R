# Tutorial - Creating Table 1---------------------------------------------------

# read in data set
data <- read.csv("data/simulated_data.csv")

# read in template for table 1
template_tbl1 <- read.csv("template/input_template_table1.csv")

temp <- table(data$cw1_covid19)
temp_num <- c(temp[2], temp[1], temp[3])  # put the summary statistics in the same order as they are in the template
temp_percent <- round(100*temp_num / nrow(data),1)

template_tbl1$n_percent[1:3] <- paste0(temp_num, "(", temp_percent, ")") # number (percent)

template_tbl1

# output
write.csv(template_tbl1, "output/table1.csv", row.names = F)
