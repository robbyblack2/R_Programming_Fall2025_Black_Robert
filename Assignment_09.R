
data("mtcars")
head(mtcars)

# Scatter plot
plot(mtcars$wt, mtcars$mpg,
     main = "Base: MPG vs Weight",
     xlab = "Weight 100lbs",
     ylab = "Miles Per Gallon",
     pch = 19,
     col = "blue")

# Histogram
hist(mtcars$mpg,
     main = "Base: Distribution of MPG",
     xlab = "Miles Per Gallon",
     col = "blue",
     breaks = 10)

library(lattice)

# Conditional scatter plot (small multiples)
xyplot(mpg ~ wt | factor(cyl),
       data = mtcars,
       main = "Lattice: MPG vs Weight by Cylinders",
       xlab = "Weight 100lbs",
       ylab = "Miles Per Gallon")

# Box-and-whisker plot
bwplot(mpg ~ factor(am),
       data = mtcars,
       main = "Lattice: MPG by Transmission Type",
       xlab = "Transmission (0=Auto, 1=Manual)",
       ylab = "Miles Per Gallon")

library(ggplot2)

# Scatter plot with smoothing
ggplot(mtcars, aes(x = wt, y = mpg, color = factor(cyl))) +
  geom_point(size = 3) +
  geom_smooth(method = "lm", se = FALSE) +
  labs(title = "ggplot2: MPG vs Weight with Trend by Cylinders",
       x = "Weight (1000 lbs)",
       y = "Miles Per Gallon",
       color = "Cylinders") +
  theme_minimal()

# Faceted histogram
ggplot(mtcars, aes(hp)) +
  geom_histogram(binwidth = 20, fill = "blue", alpha = 0.7) +
  facet_wrap(~ cyl, labeller = labeller(cyl = function(x) paste("Cylinders:", x))) +
  labs(title = "ggplot2: Horsepower Distribution by Cylinder Count",
       x = "Horsepower",
       y = "Frequency") +
  theme_minimal()