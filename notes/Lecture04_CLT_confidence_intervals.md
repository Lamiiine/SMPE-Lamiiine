# Lecture04: CLT & Confidence Intervals

## Central Limit Theorem
- For large n: sample means → normal distribution
- Works regardless of original distribution
- More measurements = more precision
- Standard error decreases as 1/√n

Mathematical:
- `(X̄ - μ) / (σ/√n) → N(0,1)` as n → ∞

## Sample Mean
- Sₙ = (1/n)Σ Xᵢ
- Unbiased: E[Sₙ] = μ
- Consistent: Sₙ → μ as n → ∞
- Variance: Var(Sₙ) = σ²/n

## Normal Distribution
- Bell curve, symmetric
- Determined by μ and σ
- 68% within ±1σ
- 95% within ±2σ
- 99.7% within ±3σ
- Lower variance → narrower bell

## Confidence Intervals
keep in mind that CI is NOT probability

What it means:
- 95% CI: if repeat 100 times, ~95 intervals contain true mean
- About procedure, not specific interval

Construction:
- Normal: `CI = X̄ ± 1.96(σ/√n)`
- t-distribution (unknown σ, small n): `CI = X̄ ± t(s/√n)`

Rules:
- Two CIs don't overlap → means likely different (95% confidence)
- Two CIs overlap → can't conclude

Width: `∝ σ/√n`

Reduce width:
1. Increase n (most effective)
2. Reduce σ
3. Accept lower confidence (not recommended)

## Law of Large Numbers
- Weak: sample mean → true mean in probability
- Strong: sample mean → true mean almost surely

## Practical Tips
- n ≥ 30 for CLT 
- Always plot data first
- Report CI, not just estimates
- Never divide by random variables
- Check assumptions

## Standard Error vs Standard Deviation
- SD (σ): spread of data
- SE (σ/√n): uncertainty of estimate
- Common mistake: confusing them
