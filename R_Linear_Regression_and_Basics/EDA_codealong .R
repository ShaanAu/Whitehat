# Install Packages
install.packages('tidyverse')

# Load the tidyverse package
library(tidyverse)

# Load in products data, note you will need to change the file path to where you have saved it locally on your device
data <- read_csv('/Users/shaanaucharagram/Documents/repos/whitehat/R_Linear_Regression_and_Basics/Products.csv')

#Take a look
head(data, n = 4)
tail(data)
View(data)
# Check summary statistics
summary(data)

#Check for proof column
summary(data$proof)

# Individual statistics
mean(data$proof)
median(data$proof)

# Correlations
cor(data$proof,data$bottle_size)

# Adding a filter
data_low_proof <- filter(data,proof < 80)
data_low_proof[c('category_name','proof')] #This is another way of printing from a table

#Multiple filters
data_multiple <-filter(data,proof <80, vendor_name=='Mhw Ltd')
data_multiple[c('vendor_name','category_name','proof')]

# Using arrange to sort
data_arrange <- arrange(data,proof)
data_arrange[c('vendor_name','category_name','proof')]

data_arrange_desc <- arrange(data,desc(proof))
data_arrange_desc[c('vendor_name','category_name','proof')]

#Alternate notation
data %>% filter(proof<80)
data %>% arrange(proof)

#Sort and filter
data_sort_filter <- arrange(filter(data,proof<80),desc(proof))
data_sort_filter[c('category_name','proof')]

#Using Piping
data %>% filter(proof<80) %>% arrange(proof)

#Slice a section of data (rows)
data_slice <- data %>% slice(1:5)
data_slice

#Select a column
data %>% select(category_name)

#Rename
data %>% rename(vendor_no=vendor)

#Mutate
data_big <-data %>% mutate(big_proof=proof*10)
data_big[c('proof','big_proof')]

#Summarise
data %>% summarise(output=mean(proof))

#Group By
data %>% group_by(category_name) %>% summarise(mean_proof=mean(proof))
