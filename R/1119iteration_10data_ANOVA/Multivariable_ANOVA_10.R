Attributes<-read.table("Census 2010 DP1 DP2 and DP3 - Extracted Attributes.csv", header=T, sep=',')
fatality<-read.table("FatalititesDatasetByYear.csv", header=T, sep=',')
F10 <- fatality[, c(1,12)]
data10<-merge(F10, Attributes, by="State")
rate<-data10$Y2010/data10$Total.population
model<-lm(rate~data10$Total.population+data10$Median.age..years.+ data10$Percent.with.no.bachelor.degree.or.higher+data10$Percent.Never.Married+data10$Percent.Disabled+data10$Median.family.income..dollars.+data10$Percent.Unemployed+data10$Percent.Teenager +data10$Percent.Over.85 +data10$Percent.Male +data10$Percent.Male.over.18 + data10$Land.Area.squre.mile +data10$Person.per.sq.mile)
summary(model)
fit<-aov(model)
summary(fit)
model1<-lm(rate~data10$Total.population+data10$Percent.with.no.bachelor.degree.or.higher+data10$Percent.Disabled+data10$Percent.Unemployed)
summary(model1)
rate_data<-as.data.frame(rate)
test<-c(rate_data,data10)
test<-as.data.frame(test)
keeps<-c("rate", "Percent.with.no.bachelor.degree.or.higher", "Percent.Disabled", "Percent.Unemployed")
test<-test[keeps]
