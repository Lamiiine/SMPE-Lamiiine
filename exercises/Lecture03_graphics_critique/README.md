# L03: Data Visualization Critique

## Overview

This exercise applies systematic evaluation criteria to identify and correct common data visualization errors. The goal is to develop critical skills for creating and evaluating scientific graphics.

## Evaluation Framework

Graphics are evaluated across **5 categories** using the official checklist:

### 1. Data
- Appropriate chart type for data
- Valid interpolation methods
- Confidence intervals shown
- Sufficient data points

### 2. Graphical Objects
- Readable on print and screen
- Colorblind-friendly colors
- Properly labeled axes
- Explicit scales and units
- Clear curve distinction
- Helpful grid lines

### 3. Annotations
- Axes labeled with quantities
- Self-contained labels
- Units specified
- Correct axis orientation
- Justified axis origins
- Complete legends

### 4. Information
- Consistent scales
- Reasonable curve count
- Effective comparisons
- No redundant elements
- Relevant information only
- Error bars for averages

### 5. Context
- Symbols defined
- Informative title
- Self-contained presentation
- Source cited

## Exercises Completed

### Figure 1: French Job Seekers
**Issues:** Web UI artifacts, undefined categories, missing units, no confidence intervals  
**Improvements:** Removed artifacts, defined categories, added units, improved formatting

### Figure 2: Dual Y-Axis Problem
**Issues:** Misleading dual Y-axis, no title, missing source, unlabeled X-axis  
**Improvements:** Split into two aligned plots, added proper labels, started both axes at zero

### Figure 3: Information Overload
**Issues:** Chart junk, too many annotations, overlapping elements, multiple scales  
**Improvements:** Radical simplification, single trend line, removed all distractions

### Figure 4: Car Sales in Europe
**Issues:** No axis labels, truncated Y-axis, no source, missing units  
**Improvements:** Added labels, started Y-axis at zero, specified units, cited source

## Key Principles Learned

### Tufte's Principles
- Maximize data-ink ratio
- Minimize chart junk
- Every element must serve a purpose
- Nothing essential should be missing

### Common Pitfalls to Avoid
- Dual Y-axis (can create false correlations)
- Truncated axes (exaggerates differences)
- Missing confidence intervals (hides uncertainty)
- Poor color choices (not accessible)
- Information overload (reduces clarity)
- Missing context (source, units, definitions)

### Best Practices
- Start axes at zero (or justify truncation)
- Use colorblind-friendly palettes
- Include confidence intervals
- Label everything clearly
- Cite data sources
- Make graphics self-contained
- Test readability in print

## Files in This Directory

- **`good_graphics_exercise.md`** - Complete analysis of all 4 figures
- **`figure[1-4]_original.png`** - Original problematic graphics
- **`figure[1-4]_improved.png`** - Corrected versions

## Core Lesson

**A good graphic should stand alone without external explanation.** Every element must serve a purpose, and nothing essential should be missing. The graphic should communicate clearly to any reader, including those with color vision deficiencies or viewing in print.

## Resources

- [Course Slides: Data Visualization Introduction](https://github.com/alegrand/SMPE/blob/master/sessions/2025_10_Grenoble/README.org)
- Official checklist for good graphics
- The Art of Computer Systems Performance Analysis (reference text)


