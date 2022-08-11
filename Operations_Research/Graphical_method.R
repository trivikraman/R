#Problem1
# Define constraints
cons.1 <- function(x) 500 - 2.5*x  
cons.2 <- function(x) 450 - 1.5*x
# cons.3 x1 = 4 (plotted using geom_vline)
# cons.4 x1 = 0 (defined by setting x1 axis limits)
# cons.5 x2 = 0 (defined by setting x2 axis limits)
# Import ggplot2 package
library(ggplot2)

# Build plot
p = ggplot(data = data.frame(x = 0), aes(x = x)) +
  
  # Add axes
  geom_vline(xintercept = 0) +
  geom_hline(yintercept = 0) +
  
  # Add constraints lines
  stat_function(colour = "Red", fun = cons.1) +
  stat_function(colour = "Blue", fun = cons.2) +
  geom_vline(xintercept = 500, colour = "Green") +
  
  # Specify axes breaks and limits
  scale_x_continuous(breaks = seq(0, 1000, 100), lim = c(0, 1000)) +
  scale_y_continuous(breaks = seq(0, 1000, 100), lim = c(0, 1000)) +
  
  # Define labels
  labs(title = "Optimization Problem",
       subtitle = "Graphical Method",
       x = "x1",
       y = "x2") +
  
  # Add black and white theme
  theme_bw()

# Print plot
print (p)
# Define feasible region polygon
feasible_region = data.frame(x = c(0,200,0,50), y = c(0,0,450,375))

# Add feasible region to current plot
p <- p + geom_polygon(data = feasible_region, mapping = aes(x = x, y = y), fill = "#dddddd") +
  geom_point(data = feasible_region, aes(x = x, y = y), color = "Black")

# Print plot
print(p)
# Define objective function
z1 <- function(x)*100 - 40*x + 2 # (the + 2 constant is just for displacement visualization purposes)

# Visualize objective function displacement
p <- p + stat_function(colour = "Black", fun = z1, lty=2)

# Print plot
print(p)



#Problem2
library(lpSolve)

# Set coefficients of the objective function
f.obj <- c(100, 40)

# Set matrix corresponding to coefficients of constraints by rows
f.con <- matrix(c(5, 2,
                  3, 2,
                  1, 0), nrow = 3, byrow = TRUE)

# Set unequality/equality signs
f.dir <- c("<=", "<=", "<=")

# Set right hand side coefficients
f.rhs <- c(1000, 900, 500)

# Final value (z)
lp("max", f.obj, f.con, f.dir, f.rhs)

# Variables final values
solution <- lp("max", f.obj, f.con, f.dir, f.rhs)$solution

# Highlight optimum solution in plot
p <- p + geom_point(aes(x = solution[1], y = solution[2]), color = "Red", size = 4)

# Print plot
print(p)
