
library(datasets)
#using in-built dataset "quakes"
data("quakes")
print(head(quakes,10))

#finding variance
print(paste("variance of mag: ",var(quakes$mag)))

#finding covariance
print(paste("covariance of mag and depth: ",cov(quakes$mag,quakes$depth)))

#finding correlation
print(paste("correlation of mag and depth: ",cor(quakes$mag,quakes$depth)))
