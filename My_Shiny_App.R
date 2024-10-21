library(shiny)
library(bslib)
library(bsicons)

# Define UI
ui <- page_sidebar(
  title = "My Shiny App",
  
  sidebar = sidebar(
    "Shiny is available on CRAN, so you can install it in the usual way from 
    your R console:",
    
    code('install.packages("shiny")')
  ),
  
  card(card_header("Introducting Shiny"),
       
       "Shiny is a package from Posit that makes it incredibly easy to build
       interactive web applications with R. For an introduction and live
       examples, visit the Shiny homepage (https://shiny.posit.co).",
       
       card_footer("Shiny is a product of Posit.")
  ),
  
  value_box(
    title = "Value box",
    value = 100,
    showcase = bs_icon("bar-chart"),
    theme = "teal"
  )
)

# Generate the server
server <- function(input, output) {
  
}

#Run the app
shinyApp(ui, server)
