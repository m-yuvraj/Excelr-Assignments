cutlets <- read.csv(file.choose())
View(cutlets)
attach(cutlets)

# Conducting the Normality Test
library(nortest)
ad.test(cutlets$Unit.A)   #pvalue = 0.2866
ad.test(cutlets$Unit.B)   #pvalue = 0.6869

# Conducting the Variance Test

#H0 <- If both have same variances

#Ha <- IF both have different variances

var.test(cutlets$Unit.A,cutlets$Unit.B)

# variances=0.70536 , pvalue =0.3136  

#Therefore we have failed to reject the null hypothesis

# Conducting the 2-sample t-test for equal variance
#H0 <- cutlets have same diameter (2 units)
#Ha <- cutlets have different diameter 

t.test(Unit.A,Unit.B,alternative = 'two.sided',conf.level = 0.95) # nolint

#Therefore we have failed to reject null hypothesis 

# The Cutlets have same diameters