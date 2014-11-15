DP2000<-read.table("DP1_2000.csv", header=T, sep=',')
Fatality<-read.table("FatalititesDatasetByYear.csv", header=T, sep=',')
Fat00<-Fatality$Y2000
TPop00<-DP2000$Total.population
FatRat00<-Fat00/TPop00
Indian00P<-DP2000$Asian.Indian/DP2000$Total.population
plot(Indian00P,FatRat00, xlab= "AsianIndian%", ylab= "Accident Rate", main="Accident Rate vs. Indian American%")
model6<-lm(FatRat00~Indian00P)
abline(model6, col="blue")
summary(model6)
