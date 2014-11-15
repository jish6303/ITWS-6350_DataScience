DP2000<-read.table("DP1_2000.csv", header=T, sep=',')
Fatality<-read.table("FatalititesDatasetByYear.csv", header=T, sep=',')
Fat00<-Fatality$Y2000
TPop00<-DP2000$Total.population
FatRat00<-Fat00/TPop00
Old00P<-(DP2000$X75.to.84.years+DP2000$X85.years.and.over)/DP2000$Total.population
plot(Old00P,FatRat00, xlab= "Aged Percent%", ylab= "Accident Rate", main="Accident Rate vs. 75-and-older Percentage")
model4<-lm(FatRat00~Old00P)
abline(model4, col="blue")
summary(model4)
