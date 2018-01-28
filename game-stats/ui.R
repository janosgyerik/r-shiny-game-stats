library(shiny)

source('common.R')

ui <- fluidPage(
  titlePanel("Game Stats"),

  sidebarLayout(
    sidebarPanel(checkboxGroupInput("fields", "Fields", names(stats.df), select = names(stats.df))),
    mainPanel(dataTableOutput("stats"))
  )
)