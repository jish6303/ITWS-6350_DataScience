DP2000<-read.table("DP1_2000.csv", header=T, sep=',')
Fatality<-read.table("FatalititesDatasetByYear.csv", header=T, sep=',')
Fat00<-Fatality$Y2000
TPop00<-DP2000$Total.population
FatRat00<-Fat00/TPop00
MedianAge<-DP2000$Median.age..years.
plot(MedianAge,FatRat00, xlab= "Median Age", ylab= "Accident Rate", main="Accident Rate vs. Median Age")
model5<-lm(FatRat00~MedianAge)
abline(model5, col="blue")
summary(model5)
