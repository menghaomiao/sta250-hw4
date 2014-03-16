print(load('offline.rda'))
print(load('AccessPointLocations.rda'))
router=rownames(AccessPointLocations)
sub=lapply(1:6, function(i) offline[offline[[1]]==router[i], c(7:9, 2)]) #Extract those 6 routers.
avgsig=lapply(sub, function(d) tapply(d$signal, list(d$x, d$y), mean)) #Average signal strength at each location.
save('sub', 'avgsig', 'AccessPointLocations', file='signal.rda')
