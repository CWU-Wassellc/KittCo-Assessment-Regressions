# KittCo-Assessment-Regressions
Which parcels have declining assessed values?

Use the bareland data to assess which parcels are likely to have declines in assessed values between 2009 and 2010.

There are only two regressors, really: acreage and YellowRed (or Green, alternatively).  However, it is advisable to create an additional regressor for parcels of sufficient size that they can be subdivided for development.  I would use a logistic regression, or probit if you prefer.
