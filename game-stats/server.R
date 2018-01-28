library(shiny)
library(DT)

source('common.R')

server <- function(input, output) {
  output$stats <- DT::renderDataTable(
    DT::datatable(stats.df, filter = "top", options = list(paging = F))
  )
}
