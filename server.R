library(shiny)
library(circular)
load('signal.rda')
breaks=circular(seq(22.5, 337.5, 45), units='degrees')
colors=heat.colors(7)
shinyServer(function(input, output) {
 output$area=renderPlot({
  i=as.integer(input$r)
  image(0:33, 0:13, -avgsig[[i]]-24, xlim=c(-0.5, 34), ylim=c(-3, 14.5), -avgsig[[1]]-24,
   col=colors, breaks=seq(0, 70, 10), main='Building Area', xlab='x', ylab='y'
  )
  with(AccessPointLocations, points(x[-i], y[-i], pch=17, cex=1.4))
  with(AccessPointLocations, points(x[i], y[i], pch=17, col=5, cex=1.4))
  legend('topright', legend=c(paste('Router', i), 'Other Routers'), pch=17, col=c(5, 1))
 })
 output$signal=renderPlot({
  i=as.integer(input$r)
  hx=floor(as.numeric(input$h$x)+0.5)
  hy=floor(as.numeric(input$h$y)+0.5)
  d=with(sub[[i]], circular(orientation[x==hx & y==hy]+90, units='degrees'))
  s=with(sub[[i]], -signal[x==hx & y==hy]-24)
  if (length(d)!=0) {
   windrose(d, s, breaks, main='', fill=colors)
  } else {
   windrose(breaks, rep(1, 8), breaks, main='', fill=F)
  }
 })
})
