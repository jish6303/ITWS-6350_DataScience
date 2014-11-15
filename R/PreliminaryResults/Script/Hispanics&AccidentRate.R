DP2000<-read.table("DP1_2000.csv", header=T, sep=',')
Fatality<-read.table("FatalititesDatasetByYear.csv", header=T, sep=',')
Fat00<-Fatality$Y2000
TPop00<-DP2000$Total.population
FatRat00<-Fat00/TPop00
Hisp00P<-DP2000$Hispanic.or.Latino..of.any.race./DP2000$Total.population
plot(Hisp00P,FatRat00, xlab= "Hispanic%", ylab= "Accident Rate", main="Accident Rate vs. Hispanics%")
model6<-lm(FatRat00~Hisp00P)
abline(model6, col="blue")
summary(model6)
