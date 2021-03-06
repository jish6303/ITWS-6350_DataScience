Attributes<-read.table("Census 2010 DP1 DP2 and DP3 - Extracted Attributes.csv", header=T, sep=',')
fatality<-read.table("FatalititesDatasetByYear.csv", header=T, sep=',')
F10 <- fatality[, c(1,12)]
data10<-merge(F10, Attributes, by="State")
rate<-data10$Y2010/data10$Total.population
plot(data10$Median.family.income..dollars.,rate, xlab= "Median Income", ylab= "Accident Rate", main="Accident Rate vs.Family Median Income")
model<-lm(rate~data10$Median.family.income..dollars.)
abline(model, col="blue")
summary(model)
