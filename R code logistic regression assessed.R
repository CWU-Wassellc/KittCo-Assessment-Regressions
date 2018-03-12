library(readxl)
assessed <- read_excel("Assessment Data Upper County 2008-2013 Filtered.xlsx")
View(assessed)


library(mfx)

logit.partial.average <- logitmfx( Assessed_Dropped_09.10 ~ YellowRed + TotalAcres + large.parcel, data = assessed, atmean = TRUE )
logit.partial.average

logit.average.partial <- logitmfx( Assessed_Dropped_09.10 ~ YellowRed + TotalAcres + large.parcel, data = assessed, atmean = FALSE )
logit.average.partial

### Dropped either 09_10 or 10_11

logit.partial.average.0911 <- logitmfx( Assessed_Dropped_09.11 ~ YellowRed + TotalAcres + large.parcel, data = assessed, atmean = TRUE )
logit.partial.average.0911

logit.average.partial.0911 <- logitmfx( Assessed_Dropped_09.11 ~ YellowRed + TotalAcres + large.parcel, data = assessed, atmean = FALSE )
logit.average.partial.0911

#############################################################################

