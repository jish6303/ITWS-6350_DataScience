DP2000<-read.table("DP1_2000.csv", header=T, sep=',')
Fatality<-read.table("FatalititesDatasetByYear.csv", header=T, sep=',')
Fat00<-Fatality$Y2000
TPop00<-DP2000$Total.population
FatRat00<-Fat00/TPop00
Black00P<-DP2000$Black.or.African.American/DP2000$Total.population
plot(Black00P,FatRat00, xlab= "AfricanAmerican%", ylab= "Accident Rate", main="Accident Rate vs. African American%")
model6<-lm(FatRat00~Black00P)
abline(model6, col="blue")
summary(model6)
