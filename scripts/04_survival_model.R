library(survival)
library(survminer)

data <- read.csv("data/lung_clean.csv")

# Kaplan-Meier survival curve
fit <- survfit(Surv(time, status) ~ sex, data = data)

ggsurvplot(
  fit,
  data = data,
  pval = TRUE,
  risk.table = TRUE
)

# Cox proportional hazards model
cox_model <- coxph(Surv(time, status) ~ age + sex + ph.ecog, data = data)

summary(cox_model)
