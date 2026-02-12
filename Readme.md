# SMPE - Scientific Methodology and Performance Evaluation

**Author:** Mohammed Lamine Abdellaoui  
**Academic Year:** 2025-2026  


## About This Repository

This repository documents my work and learning journey through the Scientific Methodology and Performance Evaluation course. It contains:

- **`notes/`** - Personal notes and reflections from lectures and readings
- **`exercises/`** - Completed homework assignments and practical exercises with analysis

## Repository Structure

```
SMPE-Lamiiine/
├── notes/                          # Lecture notes and study materials
├── exercises/                      # Course exercises and assignments
│   ├── Lecture02_quicksort_analysis/    # Parallel quicksort performance study
│   ├── Lecture03_graphics_critique/     # Data visualization best practices
│   └── Lecture04_challenger/            # Statistical analysis critique
└── README.md                       # This file
```

---

## Exercises Overview

### Lecture02: Quicksort Performance Analysis

**Objective:** Analyze the performance characteristics of parallel vs. sequential quicksort implementations across different array sizes and hardware configurations.

**Key Findings:**
- Thread overhead dominates at small array sizes (parallel slower than sequential)
- Parallel implementation shows advantage at large sizes (1M+ elements)
- Crossover point identified between 250k-500k elements (machine-dependent)
- Statistical analysis with 95% confidence intervals validates findings

**Methodology Improvements:**
- Increased repetitions from 5 to 20 for better statistical confidence
- Tested comprehensive range of array sizes (50k to 1M elements)
- Collected data on multiple machines to assess hardware impact
- Applied proper statistical analysis with confidence intervals

📁 [View full analysis](./exercises/Lecture02_quicksort_analysis/)

---

### Lecture03: Graphics Critique

**Objective:** Apply systematic evaluation criteria to identify and correct common data visualization errors.

**Skills Developed:**
- Systematic graphic evaluation using 5-category checklist (Data, Graphical Objects, Annotations, Information, Context)
- Identifying chart junk and information overload
- Understanding dual Y-axis pitfalls
- Creating colorblind-friendly visualizations
- Ensuring self-contained, reproducible graphics

**Exercises Completed:**
- Critiqued 4 problematic figures using official checklist
- Created improved versions addressing all identified issues
- Applied Tufte's principles for effective data visualization

📁 [View full critique](./exercises/Lecture03_graphics_critique/)

---

### Lecture04: Challenger Disaster Analysis

**Objective:** Identify critical statistical and methodological errors in the original Challenger O-ring failure analysis.

**Critical Issues Identified:**
1. Selection bias (filtered to only failures before analysis)
2. Incorrect binomial GLM specification
3. Insufficient sample size for reliable inference
4. Dangerous extrapolation beyond observed temperature range
5. Independence assumption violations
6. Mathematical notation errors (probability > 1)

**Key Lesson:** Proper statistical methodology and transparent reporting of uncertainty are essential for safety-critical decisions.

📁 [View full analysis](./exercises/Lecture04_challenger/)

---

## Course Resources

- **Course Repository:** [SMPE GitHub](https://github.com/alegrand/SMPE)
- **Base Projects:** [M2R-ParallelQuicksort](https://github.com/alegrand/M2R-ParallelQuicksort)

## Learning Objectives

Throughout this course, I am developing skills in:
- Experimental design and methodology
- Statistical analysis and hypothesis testing
- Data visualization and communication
- Performance evaluation techniques
- Scientific integrity and reproducibility
- Critical analysis of published research

---