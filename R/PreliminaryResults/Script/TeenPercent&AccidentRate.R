DP2000<-read.table("DP1_2000.csv", header=T, sep=',')
Fatality<-read.table("FatalititesDatasetByYear.csv", header=T, sep=',')
Fat00<-Fatality$Y2000
TPop00<-DP2000$Total.population
FatRat00<-Fat00/TPop00
Teen00P<-DP2000$X15.to.19.years/DP2000$Total.population
plot(Teen00P,FatRat00, xlab= "Teenager Percent%", ylab= "Accident Rate", main="Accident Rate vs. Teenager Percentage")
model3<-lm(FatRat00~Teen00P)
abline(model3, col="blue")
summary(model3)
