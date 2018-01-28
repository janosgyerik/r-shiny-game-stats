library(shiny)

source('common.R')
source('about.R')

ui <- fluidPage(
  titlePanel("Game Stats"),
  
  sidebarLayout(
    sidebarPanel(),
    mainPanel(
      tabsetPanel(
        type = "tabs", selected = "Stats",
        #tabPanel("About", about),
        tabPanel("Stats", dataTableOutput("stats"))
      )
    )
  )
)