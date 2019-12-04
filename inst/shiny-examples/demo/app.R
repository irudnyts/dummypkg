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

        test() # example of calling internal function
        p <- ggplot2::ggplot() # example of calling external function

        # generate bins based on input$bins from ui.R
        x    <- faithful[, 2]
        bins <- seq(min(x), max(x), length.out = input$bins + 1)

        # draw the histogram with the specified number of bins
        hist(x, breaks = bins, col = 'darkgray', border = 'white')
    })
}

shiny::shinyApp(ui = ui, server = server)
