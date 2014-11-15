Attributes<-read.table("Census 2010 DP1 DP2 and DP3 - Extracted Attributes.csv", header=T, sep=',')
fatality<-read.table("FatalititesDatasetByYear.csv", header=T, sep=',')
F10 <- fatality[, c(1,12)]
merge(F10, Attributes, by="state")
data10<-merge(F10, Attributes, by="State")
rate<-data10$Y2010/data10$Total.population
model<-lm(rate~data10$Total.population+data10$Median.age..years.+ data10$Percent.with.no.bachelor.degree.or.higher+data10$Percent.Never.Married+data10$Percent.Disabled+data10$Median.family.income..dollars.+data10$Percent.Unemployed)
summary(model)
cor(data10$Total.population,data10$Median.age..years.)
cor(data10$Total.population,data10$Percent.with.no.bachelor.degree.or.higher, method="pearson")
cor(data10$Total.population,data10$Percent.Never.Married, method="pearson")
cor(rate,data10$Median.family.income..dollars., method="pearson")
cor(rate,data10$Percent.with.no.bachelor.degree.or.higher, method="pearson")
cor(rate,data10$Percent.Unemployed, method="pearson")
cor(rate,data10$Percent.Disabled, method="pearson")

