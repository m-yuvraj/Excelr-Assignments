LabTAT <- read.csv(file.choose())
View(lab)
attach(lab)

# Conducting the normality test

library(nortest)
shapiro.test(Laboratory.1) #pvalue=0.5508 # nolint
shapiro.test(Laboratory.2) #pvalue=0.8637 # nolint
shapiro.test(Laboratory.3) #pvalue=0.4205 # nolint
shapiro.test(Laboratory.4) #pvalue=0.6619 # nolint

# Therefore we can conclude that all the variables are normal

# Conducting the variance test
stacked <- stack(lab)
stacked
library(car)
leveneTest(stacked$values~stacked$ind,data=stacked)   #pvalue=0.05161 # nolint

# Therfore we can conclude that the variances are equal

# Conducting the one way ANOVA test

anova_result <- aov(values~ind,data=stacked) # nolint
summary(anova_result)       #pvalue=2e-16 # nolint

#Thefore we can reject the null hypothesis

# We can conclude that there is difference in average TAT between the different laboratories # nolint