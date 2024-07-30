# Load the iris dataset
data(iris)

# Load necessary libraries
library(rpart)
library(rpart.plot)
library(caret)

# Train a decision tree classifier
tree_model <- rpart(Species ~ ., data = iris, method = "class")

# Plot the decision tree
rpart.plot(tree_model, main = "Decision Tree for Iris Dataset")

# Predict on the training data
predictions <- predict(tree_model, iris, type = "class")

# Evaluate the model
confusionMatrix(predictions, iris$Species)
