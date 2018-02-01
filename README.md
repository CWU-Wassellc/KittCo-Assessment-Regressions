# KittCo-Assessment-Regressions
Which parcels have declining assessed values?

Use the bareland data to assess which parcels are likely to have declines in assessed values between 2009 and 2010.

There are only two regressors, really: acreage and YellowRed (or Green, alternatively).  However, it is advisable to create an additional regressor for parcels of sufficient size that they can be subdivided for development.  I would use a logistic regression, or probit if you prefer.

Tasks:
1) Take the R code provided, run it, interpret the results.
2) Right now the "large parcel" size is set at 0.99 acres, which isn't necessarily correct.  We want parcels that can be subdivided.  Change the acreage around, and interpret results.
3) Calculate the partial effect at the average (PEA) and/or average partial effect (APE), and interpret.
4) For parcels that had 2009/10 declines, see if you can figure out what happened to assessed values 2010/11.  Do they rebound?  If so, which ones?
