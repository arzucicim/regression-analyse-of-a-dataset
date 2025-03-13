n <-14
x1 <-matrix(c(1, 2, 3, 4, 4, 5, 6, 6, 7, 8, 9, 9, 10, 10))
x<-matrix(cbind(1, x1), ncol = 2)
p1<-ncol(x)
y<-matrix(c(23,29,49,69,74,87,96,97,109,119,149,145,154,166), ncol = 1)
# veri okutma
data1<-tel
names(data1)
attach(data1)
#normallik testi
qqnorm(y)
shapiro.test(y)
#P 0,6634 > alpha = 0,05 oldugu icin h0 kabul 
lillie.test(y) #kolmogorov test
ad.test(y) #anderson darling test
sonuc <- lm(y~x1)
summary(sonuc)
#dogrusallık
plot(x1,y)
confint(sonuc, level = .95)
anova(sonuc)
cor(x1,y) #korelasyon
cor(x1,y)^2 #belirtme katsayısı
