library(shiny)

source('common.R')

server <- function(input, output) {
  output$stats <- renderDataTable({
    stats.df
  })
}
