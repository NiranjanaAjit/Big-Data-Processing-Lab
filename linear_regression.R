library(datasets)
print(head(longley))
relation <- lm(longley$GNP~longley$Employed)
print(relation)

plot(longley$Employed,longley$GNP,col = "red",main = "GNP & Employment",
     abline(lm(longley$GNP~longley$Employed)),cex = 1.3,pch = 16,xlab = "Employment (in millions)",ylab = "GNP")

b=relation$coefficients[1]
a=relation$coefficients[2]

print("What is your predicted GNP for a year with employment at 62.2 million?")
employment=62.2
gnp=a*employment + b
print(paste("Predicted GNP is ",gnp))

