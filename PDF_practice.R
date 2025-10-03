library(tidyverse)


# 1. define the possible outcomes
foo <- tibble(
  x = seq(-0,100, length.out = 100)
)

# 2. Choose our parameters
mu <- 45
sig <- 16

# 3. Calculate density
foo <- mutate(foo, density = dnorm(x, mean = mu, sd = sig))

# 4. Plot it!

ggplot(foo, aes(x, density)) +
  geom_line()


# Poisson

# 1. define the possible outcomes
foo <- tibble(
  x = seq(0,20, by = 1)
)

# 2. Choose our parameters
lambda <- 5


# 3. Calculate density
foo <- mutate(foo, mass = dpois(x, lambda = lambda))

# 4. Plot it!

ggplot(foo, aes(x, mass)) +
  geom_line()




foo2 <- tibble(
  x = seq(0,50, length.out = 100)
)



foo2 <- mutate(foo2, density = dgeom(x, prob = 1))

foo2 <- dgeom(seq(0,50, by = 1), prob = 0.01)

ggplot(foo2, aes(x, prob)) +
  geom_line()



# dgamma()
# 1. define the possible outcomes
foo <- tibble(
  x = seq(0,10, by = 0.1)
)

# 2. Choose our parameters
shape <- 4
rate <- 2


# 3. Calculate density
foo <- mutate(foo, density = dgamma(x, shape = shape, rate = rate))

# 4. Plot it!
ggplot(foo, aes(x, density)) +
  geom_line()



