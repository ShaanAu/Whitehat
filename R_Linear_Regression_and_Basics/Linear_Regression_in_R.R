library(tidyverse)
"In this exercise you will be working with the inbuilt cars dataset in R
work through the following questions and upload the script with your solutions 
to applied"

# As the cars dataset is already built in, to call it just type cars
cars


# 1) Explore the dataset: what are the columns called? What are the summary statistics for the data?
view(cars)
head(cars)
mean(cars)

summary(cars)


# For this exercise we are going to build a model that will predict distance traveled given the cars speed
# 2a) What is the relationship between speed and distance? Visualize this with a scatter plot
ggplot(cars, aes(x=speed, y=dist)) +
  geom_point(size=2, shape=23)


# 2b) What is the distribution of the two variables? Are they normally distributed?Plot a density plot to demonstrate this
# distplot for speed
p <- ggplot(cars, aes(x=speed)) + 
  geom_density()
p
# Add mean line
p+ geom_vline(aes(xintercept=mean(speed)),
              color="blue", linetype="dashed", size=1)

# distplot for dist
p <- ggplot(cars, aes(x=dist)) + 
  geom_density()
p
# Add mean line
p+ geom_vline(aes(xintercept=mean(dist)),
              color="blue", linetype="dashed", size=1)


# 2c) What about outliers? Plot boxplots to check for this
p <- ggplot(cars, aes(x=speed, y=dist)) + 
  geom_boxplot()
p


# 3) WHat is the correlation between the two variables? 
# Use cor(x,y) to calculate
cor(cars,cars)


# Now we have explored the data and established there is a relationship
# between the speed and distance, we can build a linear model using the
# syntax linearMod <-lm(y~x,data=data) where x is the independent variable,
# and y is the dependent variable 

# 4) Build a linear model predicting distance given the speed
linearMod <- lm(dist~speed,data=cars)

# 5a) Use print(linearMod) to view the coefficients
print(linearMod)

# 5b) Use summary(linearMod) to diagnose the model. Is it any good?
summary(linearMod)

# What good is a model if we can't use it for predicting? 

# 6) Use the code below to create a training set and testing set for the cars data

set.seed(100) #setting seed to reproduce results of random sampling
trainingRowIndex <- sample(1:nrow(cars), 0.8*nrow(cars)) #row indices for training
trainingData <- cars[trainingRowIndex,] #Create train set
testData <- cars[-trainingRowIndex,] #Create test set
testData

# 7a) Build a linear model using the training set

lmtrain <- lm(dist~speed,data=trainingData)

# 7b) Using preds <- predict(linearMod, testData) create predictions using the test set

preds <- predict(linearMod, testData)

# To evaluate our model we can calculate MSE 
# Run the code below to calculate the MSE for your model. 

mean((testData$dist - preds)^2)

# Part 2
# Now find a data set from your work and make a predictive model using linear regression. Write a new R script which shows
# your EDA (including visualisation) as well as a linear model with metrics
