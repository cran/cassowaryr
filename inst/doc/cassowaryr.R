## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup, fig.align='center', out.width="50%", fig.width=6, fig.height=6----
library(cassowaryr)
library(ggplot2)
library(dplyr)

# pick examples
exampledata <- datasaurus_dozen %>%
  filter(dataset %in% c("slant_up", "circle", "dots", "away"))


#plot them
exampledata %>%
  ggplot(aes(x=x,y=y, colour=dataset))+
  geom_point() +
  facet_wrap("dataset") +
  theme_minimal() +
  theme(legend.position = "none", aspect.ratio=1)

## -----------------------------------------------------------------------------
calc_scags(exampledata$x, exampledata$y, scags=c("clumpy2", "convex", "striated2")) %>%
  knitr::kable(digits=4, align="c")

## -----------------------------------------------------------------------------
longscags <- exampledata %>%
  group_by(dataset) %>%
  summarise(calc_scags(x, y, scags=c("clumpy2", "convex", "striated2", "dcor")))
longscags %>%
  knitr::kable(digits=4, align="c")

## -----------------------------------------------------------------------------
exampledata_wide <- datasaurus_dozen_wide[,c(1:2,5:6,9:10,17:18)]
widescags<- calc_scags_wide(exampledata_wide, scags=c("clumpy2", "convex", "striated2", "dcor"))
head(widescags, 4) %>%
  knitr::kable(digits=4, align="c")

## ----eval=FALSE---------------------------------------------------------------
#  library(GGally)
#  library(plotly)
#  
#  splom_data <- widescags %>%
#    mutate(lab = paste0(Var1, " , ", Var2)) %>%
#    select(-c(Var1, Var2))
#  
#  p <- ggpairs(splom_data, columns=c(1:4), aes(label=lab)) +
#    theme_minimal()
#  ggplotly(p)

## -----------------------------------------------------------------------------
top_scags(widescags) %>%
  knitr::kable(digits=4, align="c")

## ----fig.align='center', out.width="50%", fig.width=4, fig.height=4-----------
drawexample <- exampledata %>%
  filter(dataset== "dots")

draw_mst(drawexample$x, drawexample$y, alpha=0.2) + theme_minimal()

