# L04: Challenger Disaster - Statistical Analysis Critique

## Overview

This exercise critically examines the statistical analysis that preceded the Challenger Space Shuttle disaster. The goal is to identify methodological errors that led to catastrophically wrong conclusions about O-ring failure risk.

## Historical Context

On January 28, 1986, the Space Shuttle Challenger broke apart 73 seconds after launch, killing all seven crew members. The disaster was caused by O-ring seal failure in the solid rocket boosters, exacerbated by unusually cold temperatures (31°F at launch).

The night before launch, engineers analyzed O-ring failure data but failed to convince management to delay the launch. The statistical analysis contained critical errors that undermined the evidence.

## Critical Errors Identified

### 1. Selection Bias
**Error:** Filtered dataset to only include flights with `Malfunction > 0` before fitting the logistic model  
**Impact:** Excluded zero-failure trials, creating biased failure probability estimates  
**Fix:** Use the complete dataset including all trials

### 2. Incorrect Binomial GLM Specification
**Error:** Used proportions without specifying trial counts as weights  
**Impact:** Variance estimates are incorrect, confidence intervals meaningless  
**Fix:** Supply `freq_weights=Count` or use success counts directly

### 3. Insufficient Sample Size
**Error:** Only 7 rows remained after filtering  
**Impact:** P-values unreliable, confidence intervals essentially meaningless  
**Consequence:** Statistical inference not valid with such small sample

### 4. Independence Assumption Violation
**Error:** Assumed 6 O-rings fail independently  
**Reality:** Correlated failures (shared temperature/stress exposure)  
**Impact:** Underestimates true failure probability  
**Fix:** Document assumption and consider correlation structure

### 5. Dangerous Extrapolation
**Error:** Launch temperature (31°F) was outside observed data range  
**Impact:** High uncertainty at extremes, model may not hold  
**Fix:** Report wide confidence intervals and explicit extrapolation warnings

### 6. Mathematical Notation Error
**Error:** Computed 1 - (1 - p²)³ ≈ 1.2  
**Correct:** Should be 0.0122 = 1.22%  
**Impact:** Probability > 1 is mathematically impossible, undermines credibility

### 7. Ignored Pressure Variable
**Error:** Pressure constant at 200 psi in filtered subset  
**Impact:** Full dataset has pressure variation - lost analysis opportunity  
**Consequence:** Missed potential confounding factor

### 8. Oversimplified Failure Model
**Error:** Assumed both primary + secondary joints must fail per booster  
**Reality:** Primary O-ring erosion alone may be catastrophic  
**Impact:** Underestimates true risk

## Key Lessons

### Statistical Methodology
- Never filter data before analysis without strong justification
- Always report confidence intervals, especially for extrapolation
- Check model assumptions explicitly
- Use appropriate sample sizes for inference
- Validate calculations (probabilities must be 0-1)

### Scientific Communication
- Clearly state all assumptions
- Acknowledge limitations and uncertainties
- Present evidence transparently
- Don't hide contradictory data
- Visualize data effectively

### Safety-Critical Decisions
- Conservative approach when lives at stake
- Burden of proof should be on "safe to proceed"
- Uncertainty should favor caution
- Independent review of critical analyses
- Document decision-making process

## The Correct Approach

1. **Use full dataset** - Include all flights, not just failures
2. **Proper GLM specification** - Weight by number of O-rings
3. **Report uncertainty** - Wide confidence intervals at 31°F
4. **Acknowledge extrapolation** - Launch temp outside observed range
5. **Conservative interpretation** - Uncertainty should favor safety
6. **Clear visualization** - Show relationship between temperature and failures

## Files in This Directory

- **`challenger_analysis.md`** - Detailed critique of statistical errors

## Broader Impact

This case study demonstrates how statistical errors and poor communication can have catastrophic consequences. It emphasizes the critical importance of:
- Rigorous methodology
- Transparent reporting
- Conservative decision-making under uncertainty
- Effective communication of statistical evidence
- Ethical responsibility in safety-critical domains

## Resources

- Original Challenger data and analysis
- Course materials on statistical inference
- Case studies in statistical failures


