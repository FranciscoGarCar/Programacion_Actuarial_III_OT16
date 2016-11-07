#Crear una carpeta para guardar datos descargados
if (file.exists("data")==F){
    dir.create("data")
}


#Descargar datos de internet
url<-"https://data.baltimorecity.gov/api/views/dz54-2aru/rows.csv?accessType=DOWNLOAD"
download.file(url,destfile="./data/camaras.csv")
list.files("./data")
fechaDescarga<-date()
fechaDescarga

#cargar datos desde computadora
datacam <- read.csv("./data/camaras.csv",sep=",", header=T)
datacam
head(datacam)

url2<-"https://data.baltimorecity.gov/api/views/dz54-2aru/rows.csv?accessType=DOWNLOAD&bom=true"
download.file(url2,destfile="./data/camaras.xlsx")
list.files("./data")
fechadescarga1<-date()
fechadescarga1
library(rJava)



#XML
url<- "http://www.w3schools.com/xml/simple.xml"
data <- xmlTreeParse(url,useInternalNodes = TRUE)
nodoRaiz <- xmlRoot(data)
names(nodoRaiz)

nodoRaiz[[1]][[1]]

xmlSApply(nodoRaiz,xmlValue)

xpathSApply(nodoRaiz,"//name",xmlValue)
xpathSApply(nodoRaiz,"//price",xmlValue)

#Json

jsonData<- fromJSON("https://api.github.com/users/FranciscoGarCar/repos")
names(jsonData)
myjson<-toJSON(iris,pretty = T)
myjson
cat(myjson)
iris2<-fromJSON(myjson)
head(iris2)
head(myjson)

#datatables
install.packages("data.table")
library(data.table)
DT<-data.table(x=rnorm(9),y=rep(c("a","b","c"),each=3),z=rnorm(9))
DT              
tables()
DT[c(2,3)]

DT2<-DT
DT[,y:=2]
DT2

set.seed(123)
DT<-data.table(x=sample(letters[1:3],1E5,TRUE))
DT[,.N,by=x]


library(swirl)
install_from_swirl("Getting_and_Cleaning_Data")
swirl()

