#server dashboard

function(input, output){
  set.seed(101)
  data <- rnorm(500)
  output$plot01 <- renderPlot({
    histdata <- data[seq_len(input$slider01)]
    hist(histdata)
  }
  )
  
}