

install.packages("openintro")

library(openintro)

head(county_complete)


# hs_grad_2019/ poverty_2019
# let's suppose that we want to model poverty rate as a linear function of hs graduation rate

# base R
plot(county_complete$hs_grad_2019, county_complete$poverty_2019)
with( county_complete, plot(hs_grad_2019, poverty_2019) )

# 
# install.packages("tidyverse")
library(tidyverse)

ggplot(county_complete, aes(x = hs_grad_2019, y = poverty_2019)) + 
  geom_point(alpha=0.5) + 
  ggtitle("Scatterplot of HS Grad vs Poverty") + 
  theme_minimal()

model = lm(poverty_2019 ~ hs_grad_2019, data = county_complete)
summary(model)

