library(shiny)

source('common.R')

ui <- fluidPage(
  titlePanel("Game Stats"),
  
  dataTableOutput("stats")
)