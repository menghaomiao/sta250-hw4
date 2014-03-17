sta250-hw4
==========

Interactive plot for offline data (show different signals at different locations)

This homework is for interactive display by using shiny package. The data comes from a geolocation experiment in a building in Mannheim, Germany. It records the wireless signal strength at each angle and location, which is stored in a file "offline.rda". Another file "AccessPointLocations.rda" is the location of 6 routers we are specifically interested in. All the data can be downloaded at http://eeyore.ucdavis.edu/stat250/Data/.

In this repository, "preprocess.R" needs to be run first. Because it will generate a file "signal.rda" for you and "ui.R" and "server.R" are all based on this file. Use library(shiny);runApp() to start this application in R. (Please put "signals.rda", "ui.R" and "server.R" into your R working dictionary!)
