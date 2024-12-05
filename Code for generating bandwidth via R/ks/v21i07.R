library("ks")
samp <- 200
mus <- rbind(c(-2,2), c(0,0), c(2,-2))
Sigmas <- rbind(diag(2), matrix(c(0.8, -0.72, -0.72, 0.8), nrow = 2), diag(2))
cwt <- 3/11
props <- c((1-cwt)/2, cwt, (1-cwt)/2)
x <- rmvnorm.mixt(n = samp, mu = mus, Sigma = Sigmas, props = props)

Hpi1 <- Hpi(x = x, pilot = "amse", pre = "scale")
Hpi2 <- Hpi(x = x, pilot = "samse", pre = "scale")
Hpi3 <- Hpi(x = x, pilot = "amse", pre = "sphere")
Hpi4 <- Hpi(x = x, pilot = "samse", pre = "sphere")
Hpi5 <- Hpi.diag(x = x, pilot = "amse", pre = "scale")
Hpi6 <- Hpi.diag(x = x, pilot = "samse", pre = "scale")

kde(x = x, H = Hpi1)

Hlscv1 <- Hlscv(x = x)
Hlscv2 <- Hlscv.diag(x = x)
Hbcv1 <- Hbcv(x = x, whichbcv = 1)
Hbcv2 <- Hbcv.diag(x = x, whichbcv = 1)
Hscv1 <- Hscv(x = x, pre = "scale")
Hscv2 <- Hscv.diag(x = x, pre = "scale")

x <- rmvnorm.mixt(10000, mus, Sigmas, props)
Hpi(x = x, binned = TRUE, pilot = "samse")
Hdiag <- Hscv.diag(x = x, binned = TRUE)
kde(x = x, H = Hdiag, binned = TRUE)

library("MASS")
data("iris")
ir <- iris[,1:3]
ir.group <- iris[,5]

Hpi1 <- Hkda(x = ir, x.group = ir.group, bw = "plugin", pilot = "samse", pre = "sphere")
Hpi2 <- Hkda.diag(x = ir, x.group = ir.group, bw = "plugin", pilot = "samse", pre = "scale")
Hscv1 <- Hkda(x = ir, x.group = ir.group, bw = "scv", pre = "sphere")
Hscv2 <- Hkda.diag(x = ir, x.group = ir.group, bw = "scv", pre = "scale")

kda.kde(x = ir, x.group = ir.group, Hs = Hpi1)

compare.kda.cv(x = ir, x.group = ir.group, bw = "plugin", pilot = "samse", pre = "sphere")
compare.kda.diag.cv(x = ir, x.group = ir.group, bw = "plugin", pilot = "samse", pre = "scale")
compare.kda.cv(x = ir, x.group = ir.group, bw = "scv", pre = "sphere")
compare.kda.diag.cv(x = ir, x.group = ir.group, bw = "scv",pre = "scale") 
