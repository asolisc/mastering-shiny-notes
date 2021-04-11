library(shiny)

ui <- fluidPage(
  # Ask for the name (input)
  textInput("name", "What's your name?"),
  
  # Ask for the age (input)
  numericInput("age", "How old are you?", value = NA),
  
  # Define output 
  textOutput("greeting")
)

server <- function(input, output, session) {
  output$greeting <- renderText({
    paste0("Hello ", input$name)
  })
}

shinyApp(ui, server)