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
- Initialize prototype vectors for different classes
- Present a single example
- Find the closest prototype
- If same class:
  - move the prototype closer
- Else:
  - move the prototype furthur away

==== LVQ1

*iterative training procedure*:
- randomize initial prototype vectors ${w^k}$
- choose labeled examples ${x^m, sigma^m}, m = 1, 2, ...$
- _Winner takes it all_: choose prototype closest to example $w^* = min {d[w^j,x^m]}$
- *update step*:
  - $w^* <- w^* + eta_omega Psi (S^*, sigma^m) (x^m - w^*)$

    where $Psi (S, omega) = cases(
      +1 "if" S=omega,
      -1 "else"
    )$

    $eta_omega$: Learning rate

==== Generalized LVQ (GLVQ)

TODO


=== prototype/distance based classifiers

*Pros*:
- intuitive interpretation
- flexible
- easy to implement
- natural for multi-class problems

*Cons*:
- usually based on heuristic arguments, or cost functions with unclear relation to classifivation error
- model/parameter selection

=== Distance Measures
*fixed distance measures*:
- select distance measures according to prior knowledge
- data driven choice in a preprocessing step
- determine prototypes for a given distance
- compare performance of various measures

*adaptive distances / relevance learning*:
- fix only the parametric form of the distance measure
- optimize its parameters in the training process

*Relevance Matrix LVQ*

*heuristic interpretation*


== Regression
find relationship between variables for extrapolation

=== Linear Regression
find a fit to the data by minimizing the sum of squares of the differences of the data from the average, which minimizes the distance of the real data from the model

== Validation
