#HOW TO PLOT HISTOGRAM
  getwd()
  setwd("C:/Users/Admin/Desktop/MTH227(SC)")
  attend=read.csv("ATTENDANCE.CSV");attend
  par(mfrow=c(1,2), bg="grey")
  attach(attend)
  hist(MALE, lwd=2, col=rainbow(length(MALE)), ylim=c(0,6), ylab="MY HISTOGRAM", xlab="FREQUENCY")
  box(lwd=3, col="magenta")
  hist(FEMALE, lwd=2, col=rainbow(length(FEMALE)), ylim=c(0,5), ylab="MY HISTOGRAM", xlab="FREQUENCY")
  box(lwd=3, col="magenta")

#HOW TO PLOT BASIC BAR PLOT
  values=c(0.4, 0.75, 0.2, 0.6, 0.5)
  barplot(values)
  box(lwd=3, col="magenta")

#BARCHART WITH COLOURED BARS
  barplot(values, col=rainbow(length(values)), ylim=c(0,0.8),xlab="GROUPS",ylab ="FREQUENCY",main="VALUES")
  box(lwd=3, col="magenta")

#CREATE GROUPING VARIABLE AND LABELS TO BARPLOT
  group=LETTERS[1:5]
  group=c("JAN","FEB","MAR","APRIL","MAY")
  barplot(values, names.arg = c("JAN","FEB","MAR","APRIL","MAY"), col=rainbow(length(values)), ylim=c(0,0.8),xlab="GROUPS",ylab ="FREQUENCY",main="VALUES")
  box(lwd=3, col="magenta")

#CREATING MATRIX FOR STACKED BARCHART
  a = c(0.2,0.4)
  b = c(0.3,0.1)
  c = c(0.7,0.1)
  d = c(0.1,0.2)
  e = c(0.3,0.3)
  A = cbind(a,b,c,d,e);A
  rownames(A)=c("Group 1","Group 2")
  A
  barplot(A, col=c("Blue","Red"), ylim=c(0,1.0),xlab="GROUPS",ylab ="FREQUENCY",main="VALUES")
  box(lwd=3, col="magenta")


#ADD LEGEND TO BARPLOT
  legend("topleft",c("Group 1","Group 2"),fill=c("Blue","Red"),text.font = 4)

#CREATE GROUPED (SIDE BY SIDE) BARCHART
  barplot(A, col = c("Blue","Red"), beside=T, ylim=c(0,0.8),xlab="GROUPS",ylab ="FREQUENCY",main="VALUES")
  box(lwd=3, col="magenta")


#ADD LEGEND AND LOCATOR TO BARPLOT
  legend("topright",c("Group 1","Group 2"),fill=c("Blue","Red"),text.font = 4)
  text(locator(10),c("0.2","0.4","0.3","0.1","0.7","0.1","0.1","0.2","0.3","0.3"))


#INSTALL GGPLOT2 PACKAGE AND TO LOAD GGPLOT2 PACKAGE
  install.packages("ggplot2")
  library("ggplot2")

#CREATING BARCHART WITH GGPLOT2
  A_ggp=data.frame(group, values);A_ggp
  ggplot(A_ggp, aes(x=group, y=values))+geom_bar(stat = "identity")
  box(lwd=3, col="magenta")

#INSTALL PLOTLY PACKAGE
  install.packages("plotly")
  library("plotly")

#CREATING BARCHART WITH PLOTLY
  plot_ly(x=group, y=values, type="bar")
  box(lwd=3, col="magenta")

#CREATING A SIMPLE PIECHART
  B=c(2,4,5,7,12,14,16)
  pie(B)

#CREATING A SIMPLE PIECHART WITH COLOURS AND LABELS
  B=c(2,4,5,7,12,14,16)
  pie(B, main="MY PIE-CHART", col = rainbow(length(B)),labels=c("MON","TUE","WED","THUR","FRI","SAT","SUN"))

#CREATING A SIMPLE PIECHART WITH COLOURS, PERCENTAGE AND LEGEND
  B=c(2,4,5,7,12,14,16)
  percentlabels=round(100*B/sum(B))
  pielabels=paste(percentlabels, "%", sep ="")
  pie(B, main="MY BEST PIE-CHART", col = rainbow(length(B)),labels=pielabels, cex=0.8)
  legend("topright",c("MON","TUE","WED","THUR","FRI","SAT","SUN"), cex=0.8, fill=rainbow(length(B)))
  box(lwd=3, col="magenta")

