# Note: This is an older version. See quicksort_analysis.Rmd for the complete analysis.

library(ggplot2)

df <- read.csv("data/sama_2014-10-13/measurements_03:47.csv", header = TRUE, strip.white=TRUE)

# calculating confidence intervals
df_filtered <- subset(df, Type =="Sequential" | Type == "Parallel")

stats <- aggregate(Time ~ Size + Type, data=df_filtered,
                    FUN = function(x){
                        n <- length(x)
                        mean_x <- mean(x)
                        sd_x <- sd(x)
                        se <- sd_x/ sqrt(n)

                        t_val <- qt(0.975, df=n-1)
                        c(mean=mean_x,
                           lower=mean_x - t_val*se,
                           upper=mean_x + t_val*se)
                    })

stats <- data.frame(
    Size = stats$Size,
    Type = stats$Type,
    mean = stats$Time[,1],
    lower = stats$Time[,2],
    upper = stats$Time[,3]
)

print("Mean Times with 95% ConfidenceIntervals ")
print(stats)

ggplot(stats, aes(x=Size, y=mean, color=Type))+
    geom_line() +
    geom_point(size=3) +
    geom_errorbar(aes(ymin=lower, ymax=upper), width=20000) +
    labs(title="Sequential vs Parallel with confidence interval",
    x="Array size",
    y="Time (seconds)") +
    theme_minimal()

ggsave("analytics/simple_ci_plot.png", width=10, height=6)
