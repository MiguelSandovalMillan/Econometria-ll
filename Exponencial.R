
## Funcion Exponencial
### y = a*b^x

# where:
  
  # y: The response variable
  # x: The predictor variable
# a, b: The regression coefficients that describe 
# the relationship between x and y ###

# Crear Data
x=seq(from = 1, to = 20, by = 1)

y=c(1, 3, 5, 7, 9, 12, 15, 19, 23, 28, 33, 38, 44, 50, 56, 64, 73, 84, 97, 113)

# Visuaizar  datos
plot(x, y)

# fit the model
model <- lm(log(y)~ x)

#view the output of the model
summary(model)

#call:
  lm(formula = log(y) ~ x)

# ln(y) = 0.9817 + 0.2041(x)

# Applying e to both sides, we can rewrite the equation as:

# y = 2.6689 * 1.2264x

# We can use this equation to predict the response variable, y, 
#based on the value of the predictor variable, x. For example, 
#if x = 12, then we would predict that y would be 30.897:
  
 # y = 2.6689 * 1.2264*12 = 30.897

  