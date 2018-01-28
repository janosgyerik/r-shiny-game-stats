library(shiny)

source('common.R')

server <- function(input, output) {
  output$stats <- renderTable({
    stats.df
  })
}
