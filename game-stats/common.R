stats.df <- read.csv("data/stats.csv")

wins <- aggregate(vp_total ~ game, data = stats.df, max)
stats.df$won <- sapply(1:nrow(stats.df), function(i) {
  wins$vp_total[wins$game == stats.df$game[i]] == stats.df$vp_total[i]
})
