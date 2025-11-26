# TITLE: Personal Notebook for SMPE
# AUTHOR: Mohammed Lamine Abdellaoui
# DATE: 2025-10-08


We initially considered “system calls” as a primary measurement axis, but we concluded this is not the right direction for performance evaluation. System calls are best used as a diagnostic tool (e.g., to reveal thread/synchronization overhead like clone/futex), not as a metric to compare algorithms. 
We therefore exploring other options like digging in specifics of make file and shell scripts to alter thread parameters, use different array sizes to show the crossover as well as other parameters/elements that could have an effect on the expriment.

next step: test and report

# Lecture 2: Quicksort Performance Analysis

## Overview
This lecture was dedicated to the Quicksort exercise that aimed at playing with the experiment to make it better as well as learn to collaborate with others to produce and merge work in a meaningful and constructive way.

## Resources
- **Lecture Materials**: [Session on Clearly Defining the Experiment](https://github.com/alegrand/SMPE/blob/master/sessions/2025_10_Grenoble/README.org#2-021025---al---------clearly-defining-the-experiment-and-having-the-right-tools-to-analyze-it)
- **Base Project**: [M2R-ParallelQuicksort Repository](https://github.com/alegrand/M2R-ParallelQuicksort)

## Key Questions: Influencing Parameters

The main objective was to identify and explore the parameters that influence the performance of parallel quicksort:

1. **Array Size** - How does the size of the input array affect the performance comparison between sequential and parallel implementations?
2. **Thread Level** - What is the optimal level of parallelization (THREAD_LEVEL parameter)?
3. **Machine Architecture** - How do different CPUs, number of cores, and cache sizes impact performance?
4. **Data Characteristics** - Does the initial ordering of data (sorted, reverse sorted, random) affect performance?
5. **Repetitions** - How many repetitions are needed for statistical significance?

## Our Approach 

### 1. New Set of Measurements (Different Machines)
We collected data on **two different machines** to understand how hardware affects performance:
- **sama_2014-10-13**: Initial baseline measurements
- **linuxmachine_2025-10-08**: Additional measurements for comparison

See all measurement data in: [`quickSort /data/`](./quickSort%20/)

### 2. Better Analysis & Visualization
We improved upon the original analysis by:
- **Increasing repetitions**: From 5 to 20 per configuration for better statistical confidence
- **Calculating 95% confidence intervals**: Using t-distribution with proper degrees of freedom
- **Testing more array sizes**: 50k, 100k, 200k, 300k, 400k, 500k, 600k, 700k, 800k, 900k, 1M
- **Using ggplot2**: Created modern visualizations with error bars showing confidence intervals

Analysis script: [`quickSort /simple_analytics.R`](./quickSort%20/simple_analytics.R)

### 3. Better Experiments
Improvements to the experimental design:
- **Systematic parameter variation**: Tested array sizes in a broader range to identify the crossover point
- **Statistical rigor**: Multiple repetitions allow us to compute confidence intervals and assess variability
- **Automated scripting**: R scripts for reproducible analysis
- **Documentation**: Detailed journal entries tracking methodology and findings


Lab journal: [`quickSort /Journal.md`](./quickSort%20/Journal.md)

## Key Findings

1. **Thread Overhead is Significant at Small Sizes**
   - At 50,000 elements: Parallel ≈0.020s vs Sequential ≈0.003s (parallel is slower!)
   - Thread creation and synchronization overhead dominates for small problems

2. **Parallel Advantage Emerges at Large Sizes**
   - At 1,000,000 elements: Parallel ≈0.162s vs Sequential ≈0.235s
   - Computational work becomes large enough to amortize parallelization overhead

3. **Crossover Point Identification**
   - The crossover happens between 250,000 and 500,000 elements
   - This is machine-dependent and requires empirical measurement


## Project Structure

```
quickSort /
├── data/
│   ├── sama_2014-10-13/
│   │   ├── measurements_03:47.csv       # Raw measurements
│   │   ├── measurements_03:47.txt        # Measurement summary
│   │   ├── measurements_03:47.png        # Original visualization
│   │   ├── measurements_03:47_wide.csv   # Wide-format data
│   │   └── measurements_03:47_wide.png   # Wide-format visualization
│   └── linuxmachine_2025-10-08/
│       ├── measurements_22:54.csv        # New machine measurements
│       └── measurements_22:54.txt        # New machine summary
├── Journal.md                            # Lab journal with findings
├── simple_analytics.R                    # Statistical analysis script
└── simple_ci_plot.png                    # Confidence interval visualization
```

## Link to My Work

📁 **Full Quicksort Exercise**: [`quickSort /`](./quickSort%20/)

This folder contains all measurements, analysis scripts, visualizations, and documentation related to the parallel quicksort performance study.

---

# Lecture 3: Visualization and Exploratory Data Analysis
**Date:** 09/10/25 | **Instructor:** JMV

## Overview
In this class, we explored data visualization principles and best practices for creating effective graphics in scientific communication.

## Class Notes

The lecture presented multiple problematic graphs to identify common visualization errors. Initial observations were easy but unstructured: decorative elements without purpose, bars hiding data, information overload, confusion between causation and correlation.

Key lesson: Use the official checklist to systematically evaluate graphics across five categories:
1. **Data** - Chart type, interpolation, confidence intervals
2. **Graphical Objects** - Readability, colors, axes, scales
3. **Annotations** - Labels, units, legends
4. **Information** - Scale consistency, data density, relevance
5. **Context** - Title, self-containment, source citation

Most common failures observed:
- Missing confidence intervals (uncertainty)
- Unlabeled or missing axes and units
- Inappropriate chart types (lines for categorical data)
- Dual Y-axis creating false correlations
- Information overload (chart junk)
- Poor color choices (not colorblind-friendly)
- Truncated Y-axis exaggerating differences

Core principle: A good graphic should stand alone without external explanation. Every element must serve a purpose, and nothing essential should be missing. 

## Resources
- **Slides**: [What a nice picture! Data Visualization, an introduction](https://github.com/alegrand/SMPE/blob/master/sessions/2025_10_Grenoble/README.org)
- **Checklist for good graphics**: Guidelines for evaluating and creating effective visualizations
- **Reference**: The Art of Computer Systems Performance Analysis (similar checklist)

## Exercises
- **Good Graphics Critique**: [Criticize 4 figures using the checklist](./good%20graphics/good_graphics_exercise.md)
- **Challenger Analysis**: [What went wrong with the Challenger data visualization](./challenger_analysis.md)

