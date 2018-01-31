library(readxl)
assessed_bare <- read_excel("Assessment Data Upper County Bareland 2008-2013 Filtered.xlsx")
View(assessed_bare)

logit.1 <- glm ( Drop_09.10 ~ YellowRed + TotalAcres, data = assessed_bare, family = binomial ( link = "logit" ) )
summary(logit.1)

assessed_bare$large.parcel <- ifelse ( assessed_bare$TotalAcres > 0.99, 1, 0 )

logit.2 <- glm ( Drop_09.10 ~ YellowRed + TotalAcres + large.parcel, data = assessed_bare, family = binomial ( link = "logit" ) )
summary(logit.2)

exp( cbind ( OR = coef ( logit.2 ), confint ( logit.2 ) ) )

