library("ks")
samp <- 200
mus <- rbind(c(-2,2), c(0,0), c(2,-2))
Sigmas <- rbind(diag(2), matrix(c(0.8, -0.72, -0.72, 0.8), nrow = 2),
+ diag(2))
cwt <- 3/11
 props <- c((1-cwt)/2, cwt, (1-cwt)/2)
x <- rmvnorm.mixt(n = samp, mu = mus, Sigma = Sigmas, props = props)
Hpi1 <- Hpi(x = x, pilot = "amse", pre = "scale") 