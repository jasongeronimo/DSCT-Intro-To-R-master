library(XLConnect)

# Question 1
wk <- read.csv(file="D:\\Core 002 - 20170904\\Exercise1\\DSCT-Intro-To-R-master\\35478-0001-Data.csv", header=TRUE, sep=",")
myData <- data.frame(AGE=wk$AGE, DEGREE=wk$DEGREE, EDUC=wk$EDUC, HAPPY=wk$HAPPY, HOMPOP=wk$HOMPOP, INCOME=wk$INCOME, MARITAL=wk$MARITAL, RACE=wk$RACE, RINCOME=wk$RINCOME, SEX=wk$SEX)
nrow(wk) # Answer: There are 4820 rows


# Question 2
is.na(myData)
myData[!complete.cases(myData),]


# Question 3
nrow(na.omit(myData)) #[1] 4820


# Question 4
PERCAPITA <- (myData$INCOME / myData$HOMPOP)
PERCAPITA

myData[order(myData$INCOME), ]


# Question 5
summary(PERCAPITA)


# Question 6
# Answer is 31%
prop.table(myData$DEGREE)


# Question 7
myData$AGEGROUP[between(myData$AGE, 18, 35)] <- "Young"
myData$AGEGROUP[between(myData$AGE, 36, 55)] <- "Middle"
myData$AGEGROUP[between(myData$AGE, 56, max(myData$AGE))] <- "Old"



# Question 8
# Answer is No
prop.table(table(myData$HAPPY, myData$AGEGROUP))


# Question 9
# Answer is No
prop.table(table(myData$EDUC, myData$INCOME))


# Question 10
# Answer is Race 1
prop.table(table(myData$RACE, myData$INCOME))


