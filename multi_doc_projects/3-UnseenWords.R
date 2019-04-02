########## Unseen words for the local and cumulative samples ##########

# MAIN TEXT ANALYSES

## local sample
uns.wds.local.model <- lmer(Petal.Width ~ Sepal.Width +
                              (1 + Sepal.Length|Species), data = iris.data)

## cumulative sample
uns.wds.cumul.model <- lmer(Petal.Width ~ Petal.Length +
                              (1 + Petal.Length|Species), data = iris.data)

# MAIN TEXT PLOTS

## local sample
uns.wds.local.plot <- ggplot(iris.data,
                             aes(x = Petal.Width, y = Sepal.Width, color = Species)) +
  geom_point()
ggsave(paste0(plot.path, "uns.wds.local.plot.png"), plot = uns.wds.local.plot)

## cumulative sample
uns.wds.cumul.plot <- ggplot(iris.data,
                             aes(x = Petal.Width, y = Petal.Length, color = Species)) +
  geom_point()
ggsave(paste0(plot.path, "uns.wds.cumul.plot.png"), plot = uns.wds.cumul.plot)



