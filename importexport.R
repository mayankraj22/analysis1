#Check for files and folders
dir('./data2')
list.files('./data')
file.exists("./data/mtcars.csv")

#Reading from a flat file into a vector
list.files('./data2')
data=scan("./data2/hhe.txt",what="character")
head(data)

#CSV REad from CSV
# First creae as csv file from iris data set
head(iris)

write.csv(iris,"./data/iris.csv",row.names=F)
#goto folder data and see iris.csv
read1=read.csv(file="./data/iris.csv",header = TRUE,sep= ",")
str(read1);class(read1)
head(read1)

#CSV file from web
read_web1 = read.csv('http://www.stats.ox.ac.uk/pub/datasets/csb/ch11b.dat')

head(read_web1)

# Import from google sheet
library(gsheet)

url_gsheet = "https://docs.google.com/spreadsheets/d/1QogGSuEab5SZyZIw1Q8h-0yrBNs1Z_eEBJG7oRESW5k/edit#gid=107865534"

df_gsheet = as.data.frame(gsheet2tbl(url_gsheet))

head(df_gsheet)
#Import from Excel

# read in the first worksheet from the workbook myexcel.xlsx

# first row contains variable names
library(rJava)
sys.setenv(JAVA)
library(xlsx)

df_excel1 = read.xlsx("./data2/myexcel.xlsx", 1)

df_excel1

# read in the worksheet named mysheet

df_excel2a = read.xlsx("./data2/myexcel.xlsx", sheetName = "bowlers")

df_excel2a

df_excel2b = read.xlsx("./data2/myexcel.xlsx", sheetIndex = 2)

df_excel2b