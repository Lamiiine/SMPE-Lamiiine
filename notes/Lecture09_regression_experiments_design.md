# Lecture09: Experimental Design

Experimental design is about structuring experiments so results are trustworthy, efficient, and interpretable. If the design is flawed, statistical analysis cannot fix it.

The foundation relies on three ideas: repeat measurements to estimate variability, randomize to remove bias, and group similar experimental units to reduce noise.

Experiments try to understand how controllable inputs affect outcomes while accounting for uncontrollable noise factors.

To study multiple variables, factorial approaches test combinations of factors and reveal interactions. Full factorial is complete but expensive, fractional factorial reduces runs with some information loss, and screening designs quickly identify important variables. One factor at a time is discouraged because it misses interactions and introduces bias.

For continuous or high dimensional spaces, space filling methods like Latin Hypercube sampling spread experiments efficiently across the search space.

Optimization is usually sequential: first identify important variables, then move toward better settings, then model the response surface near the optimum.

Flexible local methods like LOESS are useful for visualization and exploration but not reliable for prediction.

Modern adaptive methods such as bandit algorithms and Bayesian optimization dynamically choose new experiments, especially when experiments are expensive.

A solid workflow starts by defining goals, selecting factors, choosing an appropriate design based on constraints, randomizing runs, collecting data, analyzing results, and iterating.

The most common failures are lack of randomization, lack of replication, testing variables one at a time, ignoring grouping structure, and trying to study too many variables with too few experiments.

Main takeaway:
A carefully designed small experiment usually produces more reliable knowledge than a large but poorly designed one.