lifedata = read.table('LifeExpRegion.txt')
colnames(lifedata) = c('Country', 'LifeExp', 'Region')
attach(lifedata)
lifedata[Region=='EAP', ]
lifesplit = split(lifedata, Region)
lifeEAP = lifedata[Region=='EAP',]
lifeSSA = lifedata[Region == 'SSA', ]
boxplot(lifeEAP[,2], lifeSSA[,2], range=0, border=rainbow(2), names=c('EAP', 'SSA'), main="Life Expectancies: Box Plot")
boxplot(LifeExp~Region, range=0, border=rainbow(6), main='Life Expectancies: Box Plot (all 6 regions)')