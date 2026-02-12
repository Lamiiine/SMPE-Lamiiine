# Lecture05: Statistical Estimation

## Goal
- Observe samples → estimate distribution parameters
- Example: CSMA protocol timing

## Two Approaches

Parametric:
- Know distribution family (Normal, Exponential, etc.)
- Estimate parameters (μ, σ, λ)
- More powerful when correct
- Risk: wrong assumption = bad estimates

Non-parametric:
- No distribution assumed
- Estimate properties: mean, variance, quantiles
- Robust to shape
- Less efficient, needs more data

## Estimator Quality

Bias:
- `Bias(T̂) = E[T̂] - θ`
- Unbiased: `E[T̂] = θ`

Variance:
- `Var(T̂) = E[(T̂ - E[T̂])²]`
- Lower = more precise

MSE (Mean Squared Error):
- `MSE = Var + Bias²`
- Optimal estimator minimizes MSE

## Bias-Variance Tradeoff
Can't minimize both simultaneously

- Too simple → high bias, low variance
- Optimal → balanced
- Too complex → low bias, high variance (overfitting)

Machine learning: regularization controls this

## Sample Mean
- μ̂ = (1/n)Σ Xᵢ
- Unbiased
- Consistent
- Minimum variance among unbiased linear estimators
- CLT applies

## Sample Variance
Biased: `s² = (1/n)Σ(Xᵢ - X̄)²` has bias = -σ²/n

Unbiased (Bessel's correction): `s² = (1/(n-1))Σ(Xᵢ - X̄)²`

## Maximum Likelihood (MLE)
- Choose parameters maximizing P(data|θ)
- `θ̂_MLE = argmax L(θ|data)`
- Asymptotically unbiased
- Asymptotically efficient
- Asymptotically normal

## Law of Errors (Gauss)
- Measurement errors ~ normal
- Many small independent errors sum
- CLT applies to error accumulation

## Practical Guidelines
- Known distribution → use parametric 
- Unknown → use non-parametric or robust
- Always check with diagnostic plots
- Report estimate + uncertainty
- More data always better (diminishing returns)
