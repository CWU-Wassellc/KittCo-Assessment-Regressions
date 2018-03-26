library(readxl)
assessed <- read_excel("Assessment Data Upper County 2008-2013 Filtered.xlsx")
View(assessed)

assessed$large.parcel <- ifelse ( assessed$TotalAcres > 0.99, 1, 0 )

library(mfx)

logit.partial.average <- logitmfx( Assessed_Drop ~ Rural + LNSqft + YellowRed + LNAge + Bedrooms + Bathrooms + Garage +
                                     Manufactured + large.parcel, data = assessed, atmean = TRUE )
logit.partial.average

logit.average.partial <- logitmfx( Assessed_Drop ~ Rural + LNSqft + YellowRed + LNAge + Bedrooms + Bathrooms + Garage +
                                     Manufactured + large.parcel, data = assessed, atmean = FALSE )
logit.average.partial

#############################################################################

