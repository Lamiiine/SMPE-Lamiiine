
** 2025-10-08 - Confidence Interval Analysis (Lamine)

*** What I Did
I improved the original experiment by:
- Increasing repetitions from 5 to 20 (for better statistical confidence)
- Testing more array sizes: 50k, 100k, 200k, 300k, 400k, 500k, 600k, 700k, 800k, 900k, 1M
- Calculating 95% confidence intervals using bootstrap resampling

*** Understanding Confidence Intervals
A confidence interval shows the range where the true mean is likely to be.

I used bootstrap resampling (10,000 iterations) to calculate 95% confidence intervals. This is more appropriate than t-distribution because performance measurements are often not normally distributed (right-skewed due to system noise, cache effects, etc.).

The error bars in my plot show these bootstrap confidence intervals.

*** Key Findings

1. *Thread Overhead at Small Sizes*
   At 50,000 elements: Parallel QuickSort (~0.052 seconds) was substantially slower than Sequential QuickSort (~0.010 seconds). This confirms significant thread overhead at smaller input sizes.

2. *Crossover Point Identified at 700,000 Elements*
   - At 600,000 elements: Sequential (0.1493s) was faster than Parallel (0.1594s)
   - At 700,000 elements: Parallel (0.1779s) became faster than Sequential (0.1791s) ✓
   - At 800,000 elements: Parallel (0.1994s) maintained advantage over Sequential (0.2127s)

3. *Performance Advantage Beyond Crossover*
   For arrays above 700,000 elements, parallel consistently outperforms sequential, with the gap widening as size increases.


*** Visualization
![Confidence Interval Plot](simple_ci_plot.png)

*** What I Learned

1. *Statistical Rigor Matters*: 
   20 repetitions with bootstrap confidence intervals gave precise measurements to identify the exact crossover point at 700,000 elements.

2. *Bootstrap for Performance Data*:
   Bootstrap CI is more appropriate than t-distribution because performance measurements are often not normally distributed.

3. *Thread Overhead is Real*:
   Parallelization is not always faster! For arrays smaller than 700,000 elements, thread overhead dominates.

4. *Practical Optimization*:
   Parallelization should only be applied to array sizes above 700,000 elements for this implementation.

*** Limitations & Future Work

- THREAD_LEVEL is fixed at 10
- Only tested on one machine (Linux)
- Could investigate specific factors contributing to thread overhead (thread creation, synchronization costs) to potentially reduce the crossover point

*** My Contribution

- Designed and ran improved experiment (20 reps, 11 array sizes from 50k-1M)
- Implemented bootstrap confidence intervals in R
- Created visualization showing performance comparison with all data points
- Identified precise crossover point at 700,000 elements where parallel becomes faster than sequential
