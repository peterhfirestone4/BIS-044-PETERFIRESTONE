install.packages("tidyverse")

library(tidyverse)
survey <- read.csv("city-of-st-louis-survey.csv")
decode <- read.csv("city-of-st-louis-decode.csv")

survey <- select(survey,Owner,Land.Area)

survey$First <- substr(survey$Owner,1,1)
survery$First

survey_A <- survey[which(survey$First == "A"),]

data <- tapply(survey_A$Land.Area, INDEX = survey_A$Owner, FUN = sum)
datasort <- sort(data,decreasing = TRUE)
datasort1 <- data.frame(datasort)
head(datasort1,n=10)