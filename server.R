library(shiny)
shinyServer(function(input, output) {
  output$plot1 <- renderPlot({
    set.seed(2016-05-25)
    x_axis <- input$x_axis_input
    plot(mtcars[,input$x_axis_input], mtcars$mpg, xlab = input$x_axis_input, ylab = "MPG", main = "Plot Selected Auto Feature vs MPG (with regression line")
    abline(lm(mtcars$mpg~mtcars[,input$x_axis_input]),col='red') 
  })
})