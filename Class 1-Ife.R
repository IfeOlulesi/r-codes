# First R class - 30-06-2020
  setwd("UG48/AUL/200 LEVEL/2019-20/2nd Semester/MTH 227 - Mr. Ayeni/Week R")
  # addition
  10+23
  20%%3 #MODULO

  A = read.csv("Data.csv", header=F);A
  # setwd("~/UG48/AUL/200 LEVEL/2019-20/2nd Semester/MTH 227 - Mr. Ayeni/Week R")
  # arrays/vector
  height = c(13,43,41,414,1131,1);height
  length(height)

  # data frames

  Name = c("Bob","Bobby","Bobo","Jacob","Bobble","Bold","Jabok")
  Gender = c("M","F","M","F","M","F","F")
  Height = c(12,41,17,51,62,14,35);Height

  data.frame(Name, Gender, Height)

  # data frames Classwork and Assignment
  S_N = c(1,2,3,4,5,6,7,8,9,10)
  Courses = c("MTH 227", "STA 121", "STA 221", "CMP 425", "MTH 221", 
              "MTH 223", "CMP 224", "BIO 121", "CMP 223", "PHY 121")
  Scores = c(70, 64, 55, 69, 83, 75, 62, 57, 50, 95)

  data.frame(S_N, Courses, Scores)

# 2nd R class - 07/07/2020
  # matrices
  a = c(2,3,5)
  b = c(5,5,8)
  c = c(9,7,8)
  #mat = matrix(X, 3, 5); # or A = matrix(X, nrow = 5, ncol = 2);

  m1 = rbind(a,b,c);m1
  m2 = cbind(a,b,c);m2

  #tm1 = t(m1);tm1

  multOfArrays = m1%*%m2;
  multOfArrays

  det(multOfArrays)

  # classwork

  a = c(6,2,3,1)
  b = c(4,3,8,5)
  c = c(9,7,6,4)
  d = c(8,1,2,2)

  myMatrix = cbind(a,b,c,d);
  diagOfMyMatrix = diag(myMatrix);
  detOfMyMatrix = det(myMatrix);
  sumOfDiag = sum(diagOfMyMatrix);

  myMatrix
  diagOfMyMatrix
  detOfMyMatrix
  sumOfDiag

  #inverse of a matrix
  invOfMyMatrix = solve(myMatrix)
  # identity matrix
  idenOfMyMatrix = myMatrix %*% invOfMyMatrix
  round(idenOfMyMatrix)



# 3rd class - 14/07/2020
  # matrixes continued
  a = c(15,20,22,14,13)
  b = c(25,16,10,9,5)
  c = c(20,12,2,4,7)
  A = cbind(a,b,c); A
  B = t(A);B
  C=A%*%B;C
  C[1,3]
  C[,5]
  C[,-2]
  C[-1,]
  e=c(1,2,3,4,5)
  C[,3] = e;C

  # data visualization

  par(mfrow=c(1,2), bg=("lightblue"), cex="0.75", bty="l")
  # dot plot
  x = 2
  a = 1:10
  b = 10:1
  c = 1:10*x
  plot(a,b)
  plot(b,b)

  # line plots
  a = read.csv("Attendance.csv"); a
  #attach(a) - didn't see any difference
  plot(MALE, ylim=c(20,150), type="o", lwd=2, pch=2, xaxt="n", col="red", xlab="Months", ylab="Attendance", main="Line Plot for Attendance")
  lines(FEMALE, type="o", pch=1,lwd=2, col="blue")
  axis(1, at=1:length(MONTHS), labels = MONTHS)
  box(lwd=3, col="magenta")
  legend("bottomleft", c("Male", "Female"), lwd=2, pch = c(2,1), col = c("red", "blue"), bty = "n", text.col = c("red", "blue"))
  grid()


# 4th class 21/07/2020
  # data visualization - histogram
  getwd()
  setwd("UG48/AUL/200 LEVEL/2019-20/2nd Semester/MTH 227 - Mr. Ayeni/Week R")
  a = read.csv("excel data/Attendance.csv"); a
  par(mfrow=c(1,2), bg="white")
  attach(a)
  hist(MALE, lwd=2, col=rainbow(length(MALE)))
  box(lwd=2,col="black")
  hist(FEMALE, lwd=2, col=rainbow(length(FEMALE)),title="Female Histogram", ylab="Months", xlab="FREQUENCY")
  box(lwd=2, col="black")



  # how to plot basic bar plot
  values = c(0.4,0.21,0.3,0.48,0.12)
  barplot(values, col=rainbow(length(values)))
  box(lwd=1, col=rgb(0,0.5,0.3))

  # creating grouping variables and labels to barplot
  group = LETTERS[1:5]
  group = c("JAN","FEB","MAR","APR","MAY")
  barplot(values, names.arg = c("JAN","FEB","MAR","APR","MAY"), col=rainbow(length(values)), ylim=c(0,0.8), main=("My BarPlot"))
  box(lwd=1,col = "black")

  # creating matrix for stacked barchart
  a = c(0.2, 0.4)
  b = c(0.3, 0.1)
  c = c(0.7, 0.1)
  d = c(0.1, 0.2)
  e = c(0.3, 0.3)
  A = cbind(a,b,c,d,e); A
  rownames(A) = c("Group 1", "Group 2")
  A
  barplot(A, col=c("Blue", "Red"), ylim=c(0, 1.0), xlab="GROUPS", ylab="FREQUENCY",main = "VALUES")
  box(lwd=2, col="black")

  # add legend to barplot
  legend("topleft", c("Group 1", "Group 2"), fill=c("Blue", "Red"), text.font=4)

  # how to plot a grouped(side-by-side) barchart
  barplot(A, col=c("Blue", "Red"), beside=T, ylim=c(0,0.8), xlab="GROUPS", ylab = "FREQUENCY", main="VALUES")
  box(lwd=2, col="black")


  # add legend and locator to a borplot
  legend("topright", c("Group 1", "Group 2"), fill=c("Blue", "Red"), text.font = 4)
  text(locator(10), c("0.2", "0.4","0.3", "0.1", "0.7", "0.1", "0.1", "0.2", "0.3","0.3"))

# 5th Class 28/07/2020
data1 = read.csv("excel data/Data2.csv")
summary(data1)

install.packages('psych')
library(psych)

