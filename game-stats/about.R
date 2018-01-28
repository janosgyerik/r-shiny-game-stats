url.sourcecode <- 'https://github.com/janosgyerik/r-shiny-game-stats'

about <- list(
  p('This is an open-source project.',
    'You can see the source code and report problems on GitHub:'),
  p(a(url.sourcecode, href=url.sourcecode)),
  hr(),
  p('This site is built using', a('Shiny by RStudio', href='http://shiny.rstudio.com/'))
)
