# Lecture06: Regression & Correlation vs Causation

## Linear Model
`Y = β₀ + β₁X + ε`

- Y: response (dependent)
- X: explanatory (independent)
- β₀: intercept
- β₁: slope
- ε: random error

Multiple: `Y = β₀ + β₁X₁ + β₂X₂ + ... + ε`

## Least Squares
Minimize: `Σ(yᵢ - ŷᵢ)²`

Why squared?
- Penalizes outliers
- Closed-form solution
- Differentiable
- Geometric: orthogonal projection

## Assumptions
1. Linearity between X and Y
2. Independence of observations
3. Homoscedasticity (constant error variance)
4. Normality of errors
5. No multicollinearity (multiple regression)

## Intervals
Confidence Interval:
- Uncertainty about mean response
- `CI = β̂₀ + β̂₁x ± t×SE`

Prediction Interval:
- Uncertainty about individual prediction
- `PI = β̂₀ + β̂₁x ± t×√(SE² + σ̂²)`
- Always wider than CI

## Residual Diagnostics
Residuals vs Fitted:
- Random scatter → good
- Pattern → nonlinearity
- Funnel → heteroscedasticity
- Curved → wrong form

Q-Q Plot:
- On line → normal errors
- Deviation → non-normal


Correlation: X and Y change together
Causation: X causes Y
