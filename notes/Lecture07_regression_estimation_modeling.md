# Lecture07: ANOVA & Model Quality

ANOVA and model quality analysis are about figuring out whether your model truly explains the data or just looks good by chance.

The total variation in data is split into:

What the model explains

What remains as error

R² tells how much variation the model explains, but it can be artificially high if you keep adding predictors, so it’s not enough alone.

ANOVA (F-test) checks if the model as a whole is statistically meaningful, while t-tests and p-values check if each predictor actually contributes.

Because adding variables can trick metrics, we use AIC/BIC to balance model fit vs complexity — preferring simpler models when possible (Occam’s Razor).

Testing many hypotheses increases false positives, so corrections like Bonferroni or FDR are needed.

Automatic feature selection (stepwise) can overfit and mislead, so domain knowledge is often better.

Good practice: fit → test significance → check predictors → verify assumptions → simplify → validate on new data.

Main takeaway:
A model that fits data well is not automatically a good, reliable, or generalizable model.