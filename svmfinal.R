library(datasets)
library(caTools)
library(e1071)

data("iris")
print(head(iris))

sample_data = sample.split(iris, SplitRatio = 0.8)
train_data <- subset(iris, sample_data == TRUE)
test_data <- subset(iris, sample_data == FALSE)

classifier = svm(formula = Species ~ .,
                 data = train_data,
                 type = 'C-classification',
                 kernel = 'linear')
y_pred = predict(classifier, newdata = test_data)
print(classifier)
plot(classifier, data=iris,
     Petal.Width~Petal.Length,
     slice = list(Sepal.Width=3, Sepal.Length=4),

)
