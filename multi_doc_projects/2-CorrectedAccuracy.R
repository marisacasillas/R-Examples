########## Corrected accuracy for the local and cumulative samples ##########

# MAIN TEXT ANALYSES

## local sample
cor.acc.local.model <- lmer(Sepal.Width ~ Sepal.Length +
                              (1 + Sepal.Length|Species), data = iris.data)

## cumulative sample
cor.acc.cumul.model <- lmer(Sepal.Width ~ Petal.Length +
                              (1 + Petal.Length|Species), data = iris.data)

# MAIN TEXT PLOTS

## local sample
cor.acc.local.plot <- ggplot(iris.data,
                             aes(x = Sepal.Width, y = Sepal.Length, color = Species)) +
  geom_point()
ggsave(paste0(plot.path, "cor.acc.local.plot.png"), plot = cor.acc.local.plot)

## cumulative sample
cor.acc.cumul.plot <- ggplot(iris.data,
                             aes(x = Sepal.Width, y = Petal.Length, color = Species)) +
  geom_point()
ggsave(paste0(plot.path, "cor.acc.cumul.plot.png"), plot = cor.acc.cumul.plot)


# SUPPLEMENTARY MATERIALS ANALYSES

## local sample
cor.acc.local.orig.model <- lmer(Sepal.Width ~ Sepal.Length +
                              (1 + Sepal.Length|Species), data = iris.data)

## cumulative sample
cor.acc.cumul.orig.model <- lmer(Sepal.Width ~ Petal.Length +
                              (1 + Petal.Length|Species), data = iris.data)

# MAIN TEXT PLOTS

## local sample
cor.acc.local.orig.plot <- ggplot(iris.data,
                             aes(x = Sepal.Width, y = Sepal.Length, color = Species)) +
  geom_point()
ggsave(paste0(plot.path, "cor.acc.local.orig.plot.png"), plot = cor.acc.local.orig.plot)

## cumulative sample
cor.acc.cumul.orig.plot <- ggplot(iris.data,
                             aes(x = Sepal.Width, y = Petal.Length, color = Species)) +
  geom_point()
ggsave(paste0(plot.path, "cor.acc.cumul.orig.plot.png"), plot = cor.acc.cumul.orig.plot)
