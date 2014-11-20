Attributes<-read.table("Census 2000 DP1 DP2 and DP3 - Extracted Attributes.csv", header=T, sep=',')
fatality<-read.table("FatalititesDatasetByYear.csv", header=T, sep=',')
F00 <- fatality[, c(1,2)]
data00<-merge(F00, Attributes, by="State")
rate<-data00$Y2000/data00$Total.population
model<-lm(rate~data00$Total.population+data00$Median.age..years.+ data00$Percent.with.no.bachelor.degree.or.higher+data00$Percent.Never.Married+data00$Percent.Disabled+data00$Median.family.income..dollars.+data00$Percent.Unemployed+data00$Percent.Teenager + data00$Percentage.Asian +data00$Percent.Latino.Hispanic.any.race +data00$Percent.White + data00$Percent.Black +data00$Percent.Over.85 +data00$Percent.Male +data00$Percent.Male.over.18 + data00$Land.Area.squre.mile +data00$Person.per.sq.mile)
summary(model)
fit<-aov(model)
summary(fit)
model1<-lm(rate~data00$Total.population+data00$Median.age..years.+ data00$Percent.with.no.bachelor.degree.or.higher+data00$Percent.Disabled+data00$Median.family.income..dollars.+data00$Percent.White)
summary(model1)
fit1<-aov(model1)
summary(fit1)
rate_data<-as.data.frame(rate)
test<-c(rate_data,data00)
test<-as.data.frame(test)
keeps<-c("rate", "Median.age..years.", "Percent.with.no.bachelor.degree.or.higher", "Median.family.income..dollars.")
test<-test[keeps]
