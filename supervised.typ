#import "lib.typ" : Examplebox
= Supervised Learning
==  Classification

=== Distance Based Classification 

#Examplebox([
- store a set of labeled examples
- classify a query according to the lavel of the nearest neighbor (or a majority of K NN)
- local decision boundry (e.g. Euclidean distance)
- piece-wise linear class borders parameterized be all examples

Pros:
- simple, no training requred, one parameter
Cons:
- expensive storage and computation, sensitive to outliers, can result in overly complex decision boundaries
])

=== Prototype Based Supervised Learning

#Examplebox([
- represent the data by one or more *prototypes* per class
- classify a query according to the lavel of the nearest prototype
- local decision boundry (e.g. Euclidean distance)
- piece-wise linear class borders parameterized by prototypes

Pros:
- less sensitive to outliers, less complex decision boundries
- less computation and storage
Cons:
- training phase required in order to place prototypes + model selection problem
])

==== Nearest Prototype Classifier (NPC)

- set of prototypes with labels
- given point $x$, assign x to the class of the nearest prototype

== Learning Vector Quantization

== Regression
find relationship between variables for extrapolation

=== Linear Regression
find a fit to the data by minimizing the sum of squares of the differences of the data from the average, which minimizes the distance of the real data from the model

== Validation
