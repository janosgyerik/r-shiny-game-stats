stats.df <- read.csv("data/stats.csv")

wins <- aggregate(vp_total ~ game, data = stats.df, max)
stats.df$won <- sapply(1:nrow(stats.df), function(i) {
  wins$vp_total[wins$game == stats.df$game[i]] == stats.df$vp_total[i]
})

library(plyr)
wins <- count(stats.df[stats.df$won,], c('player', 'corp'))
plays <- count(stats.df, c('player', 'corp'))

plays$won_percent <- unlist(sapply(1:nrow(plays), function(i) {
  w <- wins$freq[wins$player == plays$player[i] & wins$corp == plays$corp[i]]
  ifelse(length(w) > 0, w / plays$freq[i], 0)
}))

stats.df$won_percent <- unlist(sapply(1:nrow(stats.df), function(i) {
  p <- plays$won_percent[plays$player == stats.df$player[i] & plays$corp == stats.df$corp[i]]
  as.integer(ifelse(length(p) > 0, p, 0) * 100)
}))
