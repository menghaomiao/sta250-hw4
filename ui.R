library(shiny)
shinyUI(pageWithSidebar(
 headerPanel('Signal Measurement'),
 sidebarPanel(
  selectInput('r', 'Please choose a router:', list(
   'Router 1'=1, 'Router 2'=2, 'Router 3'=3, 'Router 4'=4, 'Router 5'=5, 'Router 6'=6
  )),
  plotOutput('signal')
 ),
 mainPanel(plotOutput('area', hoverId='h', hoverDelay=50, hoverDelayType='debounce'))
))
