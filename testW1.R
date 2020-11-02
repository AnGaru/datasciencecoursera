ds<-read.csv('hw1_data.csv')

ds

ds[1:2,]

ds[152:153,]

ds[47,]

sum(is.na(ds[,1]))

#mean(ds[complete.cases(ds[,1]),1])
notNA<-complete.cases(ds[,1])
mean(ds[notNA,1])

mt31<-ds[ds[,4]>90&ds[,1]>31,]
mt31
mean(mt31[!is.na(mt31[,1]),2])

mean(ds[ds[,5]==6,4])

ozMay<-ds[ds[,5]==5,1]
max(ozMay[!is.na(ozMay)])
