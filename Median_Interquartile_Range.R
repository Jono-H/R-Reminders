## Median and Interquartile Range
## Jono Handley

## Generate some fake data
df <- data.frame(Group=gl(n = 2, k = 10, labels = c("A","B")),
                 Variable=c(sample(c(20:50),size=10),sample(c(50:80),size=10)))

## Check it
head(df)
str(df)

## Median, IQR, upper and lower quartile for your groups
Summary <- aggregate(Variable ~ Group, # Independent ~ Dependent
                     data=df, 
                     function(x) c(median = median(x), # The median
                                   IQR = IQR(x), # THe interquaritle range
                                   UpperQ = quantile(x, 3/4), # The upper (75th quartile)
                                   LowerQ = quantile(x, 1/4))) # The lower (25th quartile)

Summary