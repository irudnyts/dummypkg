ui <- shiny::fluidPage(

    # Application title
    shiny::titlePanel("Old Faithful Geyser Data"),

    # Sidebar with a slider input for number of bins
    shiny::sidebarLayout(
        shiny::sidebarPanel(
            shiny::sliderInput("bins",
                               "Number of bins:",
                               min = 1,
                               max = 50,
                               value = 30)
        ),

        # Show a plot of the generated distribution
        shiny::mainPanel(
            shiny::plotOutput("distPlot")
        )
    )
)

server <- function(input, output) {

    output$distPlot <- shiny::renderPlot({

        p <- ggplot2::ggplot() # example of calling external function
        my_function() # example of calling internal function

    })
}

shiny::shinyApp(ui = ui, server = server)
