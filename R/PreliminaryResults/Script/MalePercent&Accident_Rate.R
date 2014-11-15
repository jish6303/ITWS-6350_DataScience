DP2000<-read.table("DP1_2000.csv", header=T, sep=',')
Fatality<-read.table("FatalititesDatasetByYear.csv", header=T, sep=',')
Fat00<-Fatality$Y2000
TPop00<-DP2000$Total.population
FatRat00<-Fat00/TPop00
Male00P<-DP2000$Male/DP2000$Total.population
plot(Male00P,FatRat00, xlab= "Male Percent%", ylab= "Accident Rate", main="Accident Rate vs.  Male Percentage")
model2<-lm(FatRat00~Male00P)
abline(model2, col="blue")
plot(model2)
summary(model2)
