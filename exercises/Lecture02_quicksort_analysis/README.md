# L02: Parallel Quicksort Performance Analysis

## Overview

This exercise explores the performance characteristics of parallel quicksort compared to sequential implementation. The goal is to identify when parallelization provides benefits and understand the factors that influence performance.

## Research Questions

1. **Array Size Impact** - At what array size does parallel quicksort become faster than sequential?
2. **Thread Overhead** - How much overhead does thread creation and synchronization introduce?
3. **Machine Dependency** - How do different hardware configurations affect the crossover point?
4. **Statistical Confidence** - What level of repetition is needed for reliable conclusions?

## Experimental Design

### Measurements Collected

- **Machine 1 (sama_2014-10-13):** Initial baseline measurements
- **Machine 2 (linuxmachine_2025-10-08):** Comparative measurements on different hardware

### Array Sizes Tested

50k, 100k, 200k, 300k, 400k, 500k, 600k, 700k, 800k, 900k, 1M elements

### Repetitions

20 repetitions per configuration to enable confidence interval calculation

## Key Findings

### 1. Thread Overhead Dominates at Small Sizes

At 50,000 elements:
- Parallel: ~0.020s
- Sequential: ~0.003s
- **Parallel is 6-7x slower!**

Thread creation and synchronization overhead completely dominates computation time for small problem sizes.

### 2. Parallel Advantage Emerges at Large Sizes

At 1,000,000 elements:
- Parallel: ~0.162s
- Sequential: ~0.235s
- **Parallel is ~1.45x faster**

Computational work becomes large enough to amortize the parallelization overhead.

### 3. Crossover Point

The crossover occurs at **700,000 elements** based on comprehensive data analysis:
- At 600k: Sequential (0.1493s) faster than Parallel (0.1594s)
- At 700k: Parallel (0.1779s) becomes faster than Sequential (0.1791s)
- At 800k: Parallel (0.1994s) maintains advantage over Sequential (0.2127s)

This point is:
- Machine-dependent (CPU cores, cache size, architecture)
- Workload-dependent (data characteristics)
- Must be determined empirically for each system

## Files in This Directory

- **`data/`** - Raw measurement data
  - `linuxmachine_2025-10-08/` - Comprehensive data (50k-1M, 20 reps)
  - `sama_2014-10-13/` - Initial baseline measurements
- **`Journal.md`** - Lab journal with experimental observations
- **`quicksort_analysis.Rmd`** - Main computational document with analysis
- **`simple_analytics.R`** - Older R script (see Rmd for current version)
- **`simple_ci_plot.png`** - Visualization with confidence intervals

## Statistical Methodology

- **Confidence Intervals:** 95% bootstrap CI (10,000 resamples)
- **Method:** Bootstrap is more appropriate than t-distribution for performance data
- **Tools:** R with ggplot2 and boot package

## Lessons Learned

1. **Parallelization is not always faster** - Overhead matters!
2. **Empirical measurement is essential** - Cannot predict crossover point theoretically
3. **Statistical rigor matters** - Confidence intervals reveal measurement variability
4. **Documentation is crucial** - Lab journal enables reproducibility
5. **Hardware matters** - Same code performs differently on different machines

## Resources

- [Course Session Materials](https://github.com/alegrand/SMPE/blob/master/sessions/2025_10_Grenoble/README.org)
- [Base Project Repository](https://github.com/alegrand/M2R-ParallelQuicksort)


