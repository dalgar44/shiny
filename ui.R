library(shiny)
shinyUI(fluidPage(
  titlePanel(""),
  sidebarLayout(
    sidebarPanel(
      selectInput("x_axis_input", "Select Auto Feature", choices = names(mtcars[,-1])),
    ),
    mainPanel(
      plotOutput("plot1")
    )
  )
))