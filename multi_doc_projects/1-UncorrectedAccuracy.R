########## Uncorrected accuracy for the local and cumulative samples ##########

# MAIN TEXT ANALYSES

## local sample
unc.acc.local.model <- lmer(Sepal.Length ~ Sepal.Width +
                              (1 + Sepal.Width|Species), data = iris.data)

## cumulative sample
unc.acc.cumul.model <- lmer(Sepal.Length ~ Petal.Length +
                              (1 + Petal.Length|Species), data = iris.data)

# MAIN TEXT PLOTS

## local sample
unc.acc.local.plot <- ggplot(iris.data,
                             aes(x = Sepal.Length, y = Sepal.Width, color = Species)) +
  geom_point()
ggsave(paste0(plot.path, "unc.acc.local.plot.png"), plot = unc.acc.local.plot)

## cumulative sample
unc.acc.cumul.plot <- ggplot(iris.data,
                             aes(x = Sepal.Length, y = Petal.Length, color = Species)) +
  geom_point()
ggsave(paste0(plot.path, "unc.acc.cumul.plot.png"), plot = unc.acc.cumul.plot)


# SUPPLEMENTARY MATERIALS ANALYSES

## local sample
unc.acc.local.orig.model <- lmer(Sepal.Length ~ Sepal.Width +
                              (1 + Sepal.Width|Species), data = iris.data)

## cumulative sample
unc.acc.cumul.orig.model <- lmer(Sepal.Length ~ Petal.Length +
                              (1 + Petal.Length|Species), data = iris.data)

# SUPPLEMENTARY MATERIALS PLOTS

## local sample
unc.acc.local.orig.plot <- ggplot(iris.data,
                             aes(x = Sepal.Length, y = Sepal.Width, color = Species)) +
  geom_point()
ggsave(paste0(plot.path, "unc.acc.local.orig.plot.png"), plot = unc.acc.local.orig.plot)

## cumulative sample
unc.acc.cumul.orig.plot <- ggplot(iris.data,
                             aes(x = Sepal.Length, y = Petal.Length, color = Species)) +
  geom_point()
ggsave(paste0(plot.path, "unc.acc.cumul.orig.plot.png"), plot = unc.acc.cumul.orig.plot)
