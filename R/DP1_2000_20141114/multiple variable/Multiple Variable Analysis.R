Attributes<-read.table("Census 2000 DP1 DP2 and DP3 - Extracted Attributes.csv", header=T, sep=',')
fatality<-read.table("FatalititesDatasetByYear.csv", header=T, sep=',')
F00 <- fatality[, c(1,2)]
data00<-merge(F00, Attributes, by="State")
rate<-data00$Y2000/data00$Total.population
model<-lm(rate~data00$Total.population+data00$Median.age..years.+ data00$Percent.with.no.bachelor.degree.or.higher+data00$Percent.Never.Married+data00$Percent.Disabled+data00$Median.family.income..dollars.+data00$Percent.Unemployed)
summary(model)
cor(data00$Total.population,data00$Median.age..years.)
cor(data00$Total.population,data00$Percent.with.no.bachelor.degree.or.higher, method="pearson")
cor(data00$Total.population,data00$Percent.Never.Married, method="pearson")
cor(rate,data00$Median.family.income..dollars., method="pearson")
cor(rate,data00$Percent.with.no.bachelor.degree.or.higher, method="pearson")
cor(rate,data00$Percent.Unemployed, method="pearson")
cor(rate,data00$Percent.Disabled, method="pearson")

