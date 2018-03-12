library(readxl)
assessed_bare <- read_excel("Assessment Data Upper County Bareland 2008-2013 Filtered.xlsx")
View(assessed_bare)

logit.1 <- glm ( Drop_09.10 ~ YellowRed + TotalAcres, data = assessed_bare, family = binomial ( link = "logit" ) )
summary(logit.1)

assessed_bare$large.parcel <- ifelse ( assessed_bare$TotalAcres > 0.99, 1, 0 )

logit.2 <- glm ( Drop_09.10 ~ YellowRed + TotalAcres + large.parcel, data = assessed_bare, family = binomial ( link = "logit" ) )
summary(logit.2)

exp( cbind ( OR = coef ( logit.2 ), confint ( logit.2 ) ) )

library(mfx)

logit.partial.average <- logitmfx( Drop_09.10 ~ YellowRed + TotalAcres + large.parcel, data = assessed_bare, atmean = TRUE )
logit.partial.average

logit.average.partial <- logitmfx( Drop_09.10 ~ YellowRed + TotalAcres + large.parcel, data = assessed_bare, atmean = FALSE )
logit.average.partial


assessed_bare$change.0910.to.1011 <- ( assessed_bare$AssessedLandValue_2011 - assessed_bare$AssessedLandValue_2010 ) / (assessed_bare$AssessedLandValue_2010) 
assessed_bare$change.0910.to.1011

qplot(assessed_bare$change.0910.to.1011)


library(dplyr)

declined.09.10 <- select ( filter ( assessed_bare, assessed_bare$Drop_09.10 == 1 ), c(change.0910.to.1011))
declined.09.10
summary(declined.09.10)
