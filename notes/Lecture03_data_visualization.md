# Lecture03: Data Visualization

## Why Visualize
- Synthesize info quickly
- Explore datasets
- Communicate results
- Shows research quality

## Core Rules
- Direct labeling → skip legends
- Minimize ink → less clutter
- Single scale per axis
- Explicit units: "seconds" not "s"
- Know your audience
- Reference in text

## Common Mistakes
Cheating with scales:
- Non-zero baseline
- Cherry-pick time ranges
- Missing confidence intervals
- Distorted proportions

Non-relevant stuff:
- 3D on 2D data (like the banana examples shown by the professor)
- Decorations without meaning
- Misleading icon sizes

## Graph Types
- Time series → line chart
- Distributions → histogram, density plot
- Comparisons → bar chart
- Correlations → scatter plot
- Proportions → stacked bar (avoid pie if >5 categories)

## Anscombe's Quartet
- Four datasets
- Identical statistics
- Completely different patterns
- Lesson: always visualize before analysis

## Quality Check
- Readable in B&W?
- Axes labeled with units?
- Color-blind friendly?
- CI shown?
- No misleading proportions?
- Methods documented?
- Need legend or direct labels?

## Design Principles
- Occam's Razor: simplest graph
- Dijkstra: can't remove without losing meaning
- Tufte: maximize data-ink ratio

## Exploratory Data Analysis
Before formal analysis:
1. Plot raw data
2. Look for outliers
3. Check distributions
4. Find patterns
5. Verify data quality

## Tools
- R: ggplot2
- Python: matplotlib, seaborn
- Interactive: plotly
