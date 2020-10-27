library(magrittr)
library(plotly)

width = 6
length.out = 100

x <- seq(-width, width, length.out = length.out)
y <- seq(-width, width , length.out = length.out)
data <- expand.grid(x = x, y = y)
data$z <- data$x^2 + data$y^2

my_data <- matrix(data$z, nrow = length.out, ncol = length.out)

df <- list(x = x, y = y, z = my_data)
fig <- plot_ly(x = df$x, y = df$y, z = df$z) %>% add_surface()

fig

