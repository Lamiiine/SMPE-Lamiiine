# Challenger Analysis - Critical Issues

## 1. Selection Bias 
- Filtered dataset to only `Malfunction > 0` before fitting logistic model
- Excluded zero-failure trials → biased failure probability estimates
- **Fix:** Use full dataset including all trials

## 2. Incorrect Binomial GLM
- Used proportions without specifying trial counts as weights
- Variance estimates are wrong
- **Fix:** Supply `freq_weights=Count` or use success counts directly

## 3. Insufficient Sample Size
- Only 7 rows after filtering → unreliable p-values
- Confidence intervals essentially meaningless

## 4. Independence Assumption
- Assumes 6 O-rings fail independently
- Reality: correlated failures (shared temperature/stress exposure)
- Assumption should be documented

## 5. Extrapolation Risk
- Launch temp (31°F) outside observed range
- High uncertainty at extremes
- **Fix:** Report confidence intervals + extrapolation warning

## 6. Notation Error
- Computed 1 - (1 - p²)³ ≈ 1.2 (should be 0.0122 = 1.22%)
- Probability > 1 is impossible

## 7. Pressure Variable Ignored
- Constant at 200 psi in failure subset
- Full dataset has variation → lost analysis opportunity

## 8. Oversimplified Failure Model
- Assumes both primary + secondary joints must fail per booster
- Real failure modes more complex
- Primary O-ring erosion alone may be catastrophic