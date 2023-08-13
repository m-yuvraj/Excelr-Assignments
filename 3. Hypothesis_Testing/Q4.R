Costomer_OrderForm = read.csv(file.choose())

View(Costomer_OrderForm)

library(BSDA)

library(e1071)

library(nortest)

attach(Costomer_OrderForm)

install.packages("tidyr")

library(tidyr)

# Forming the tables and stacking of data
a2 <- table(gather(a, nation, status, 1:4))
a2

#H0 <- all the centers have same defective% 

#H1 <- different centers have defective%

chisq.test(a2)

# Therfore, the pvalue > 0.05, and hence we have failed to reject the null hypothesis


# Hence, we can conclude that all centers have the same defective%
