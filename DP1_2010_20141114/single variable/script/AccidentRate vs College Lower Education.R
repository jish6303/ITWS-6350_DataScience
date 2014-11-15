Attributes<-read.table("Census 2010 DP1 DP2 and DP3 - Extracted Attributes.csv", header=T, sep=',')
fatality<-read.table("FatalititesDatasetByYear.csv", header=T, sep=',')
F10 <- fatality[, c(1,12)]
data10<-merge(F10, Attributes, by="State")
rate<-data10$Y2010/data10$Total.population
plot(data10$Percent.with.no.bachelor.degree.or.higher,rate, xlab= "Percent with no better than college education", ylab= "Accident Rate", main="Accident Rate vs.College lower Education")
model<-lm(rate~data10$Percent.with.no.bachelor.degree.or.higher)
abline(model, col="blue")
summary(model)
