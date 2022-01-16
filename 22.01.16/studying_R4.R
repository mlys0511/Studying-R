install.packages("readx1")
library(readxl)
df_exam<-read_excel("C:/Users/kkang/Desktop/R 실습자료/excel_exam.xlsx")
df_exam
mean(df_exam$english)
mean(df_exam$science)
df_exam_sheet<-read_excel("C:/Users/kkang/Desktop/R 실습자료/excel_exam.xlsx")
df_exam_sheet
mean(df_exam_sheet$english)
mean(df_exam_sheet$science)
df_csv_exam<-read.csv("C:/Users/kkang/Desktop/R 실습자료/csv_exam")
df_csv_exam
df_midterm<-data.frame(english=c(90,80,60,70),math=c(50,60,100,20),class=c(1,1,2,2))
df_midterm
write.csv(df_midterm,file=("C:/Users/kkang/Desktop/R 실습자료/df_midterm.csv"))
english<-c(90,80,60,70)
math<-c(50,60,100,20)
df_exam<-data.frame(english,math)
df_exam
