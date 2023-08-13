
# We can assume that the dependent and independent variables are discrete

# Conducting the chi-square test

BuyerRatio <- read.csv(file.choose())

View(BuyerRatio)

b <- BuyerRatio[, -1]

b

#H0 ->product sales ratio is same for males and females
#Ha ->product sales ratio is not the same for males and females

chisq.test(b)

# Therefore, p =0.6603 > 0.05  

# Hence we have failed to reject null hypothesis (p value is high)

# Hence, we can conclude that the product sales ratio are the same for males and females
