
plot.clogitboost<-function(x, d, grid = NULL, ...){
  fit <- x
  gridstep <- (fit$mmax[d] - fit$mmin[d]) / 100
  if (is.null(grid)) {
    grid <- seq(fit$mmin[d], fit$mmax[d], by = gridstep)
  }
  plot(grid, marginal(fit, grid, d), ...)
}
