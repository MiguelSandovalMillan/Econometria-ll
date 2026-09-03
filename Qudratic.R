# Use the following steps to fit a quadratic regression model in R.

# Step 1: Input the data.
# Suppose we are interested in understanding the relationship
# between number of hours worked and reported happiness.
# First, we’ll create a data frame that contains our data:

data <- data.frame(hours=c(6, 9, 12, 14, 30, 35, 40, 47, 51, 55, 60),
                   happiness=c(14, 28, 50, 70, 89, 94, 90, 75, 59, 44, 27))

#view data 
data

#create scatterplot
plot(data$hours, data$happiness, pch=16)

#fit linear model
linearModel <- lm(happiness ~ hours, data=data)

#view model summary
summary(linearModel)

  Call:
  lm(formula = happiness ~ hours)
  #create a new variable for hours2
  data$hours2 <- data$hours^2
  
  #fit quadratic regression model
  quadraticModel <- lm(happiness ~ hours + hours2, data=data)
  
  #view model summary
  summary(quadraticModel)
  
  #create sequence of hour values
  hourValues <- seq(0, 60, 0.1)
  
  #create list of predicted happines levels using quadratic model
  happinessPredict <- predict(quadraticModel,list(hours=hourValues, hours2=hourValues^2))
  
  #create scatterplot of original data values
  plot(data$hours, data$happiness, pch=16)
  #add predicted lines based on quadratic regression model
  lines(hourValues, happinessPredict, col='blue')
  
  # Based on the coefficients shown here, the fitted quadratic regression 
  # would be:
    
    # Happiness = -0.1012(hours)2 + 6.7444(hours) – 18.2536
  
  # We can use this equation to find the predicted happiness of an individual,
  # given the number of hours they work per week.
  
  # For example, an individual that works 60 hours per week is predicted 
  # to have a happiness level of 22.09:
    
  # Happiness = -0.1012(60)2 + 6.7444(60) – 18.2536 = 22.09
  
  # Conversely, an individual that works 30 hours perk week is predicted
  # to have a happiness level of 92.99:
    
    # Happiness = -0.1012(30)2 + 6.7444(30) – 18.2536 = 92.99
  
  
  
  