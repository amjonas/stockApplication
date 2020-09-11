#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a time series
shinyUI(fluidPage(
    
    # Application title
    titlePanel("European Stock Market Indice"),
    
    # Sidebar with a select input for number of regions
    sidebarLayout(
        sidebarPanel(
            selectInput("Region", "Region:",  
                        choices=colnames(EuStockMarkets))
        ),
        
        # Show a plot of the generated distribution
        mainPanel(
            plotOutput("distPlot")
        )
    )
))