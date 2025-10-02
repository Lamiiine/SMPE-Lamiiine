
We initially considered “system calls” as a primary measurement axis, but we concluded this is not the right direction for performance evaluation. System calls are best used as a diagnostic tool (e.g., to reveal thread/synchronization overhead like clone/futex), not as a metric to compare algorithms. 
We therefore exploring other options like digging in specifics of make file and shell scripts to alter thread parameters, use different array sizes to show the crossover as well as other parameters/elements that could have an effect on the expriment.

next step: test and report
