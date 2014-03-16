sta250-hw4
==========

Interactive plot for offline data (show different signals at different locations)

This homework is for interactive plot by using shiny package. The data comes from a geolocation experiment in a building in Mannheim, Germany. It records the wireless signal strength at each angle and location, which is stored in a file "offline.rda". Another file "AccessPointLocations.rda" is the location of 6 routers we are specifically interested in. All the data can be downloaded at http://eeyore.ucdavis.edu/stat250/Data/.

In this repository, "preprocess.R" needs to be run first. It will generate a file "signal.rda" for you. And "ui.R" and "server.R" are all based on this file. Use runApp() to start this application. (Please put "signals.rda", "ui.R" and "server.R" into your R wording dictionary!)
