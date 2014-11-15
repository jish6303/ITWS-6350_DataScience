DP2000<-read.table("DP1_2000.csv", header=T, sep=',')
Fatality<-read.table("FatalititesDatasetByYear.csv", header=T, sep=',')
Fat00<-Fatality$Y2000
TPop00<-DP2000$Total.population
FatRat00<-Fat00/TPop00
plot(TPop00,FatRat00, xlab= "State Population", ylab= "Accident Rate", main="Accident Rate vs. State Population")
plot(TPop00,FatRat00, xlab= "State Population", ylab= "Accident Rate", main="Accident Rate vs. State Population")
plot(TPop00,FatRat00, xlab= "State Population", ylab= "Accident Rate", main="Accident Rate vs. State Population")
model1<-lm(FatRat00~TPop00)
abline(model1, col="blue")
plot(model1)
summary(model1)