Attributes<-read.table("Census 2010 DP1 DP2 and DP3 - Extracted Attributes.csv", header=T, sep=',')
fatality<-read.table("FatalititesDatasetByYear.csv", header=T, sep=',')
F10 <- fatality[, c(1,12)]
data10<-merge(F10, Attributes, by="State")
rate<-data10$Y2010/data10$Total.population
plot(data10$Percent.Unemployed, xlab= "Percent unemployed",rate, ylab= "Accident Rate", main="Accident Rate vs.Percentage Unemployed")
model<-lm(rate~data10$Percent.Unemployed)
abline(model, col="blue")
summary(model)
