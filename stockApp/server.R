#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server logic required to draw a time series
shinyServer(function(input, output) {
    
    output$distPlot <- renderPlot({
        
        # generate bins based on input$bins from ui.R
        x    <- EuStockMarkets

        
        # draw the time series with the specified number of bins
        plot(x[,input$Region],  
             main=input$Region, 
             ylab="Stock in European Market", 
             xlab="Year", 
             col = 'darkcyan')
        
    })
    
})