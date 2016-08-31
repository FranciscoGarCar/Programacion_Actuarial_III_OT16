#clase del 25/08/2016

#crear vectores
x <- vector(mode ="numeric",length=5L)

#Crear vectores con la funcion C
x <- c(0.5,0.6)
x

x <-c(TRUE,FALSE)
x
class(x)

x <-5:10
x
class(x)

x <-10:0
x
class(x)

x <-c(1+2i,5,3+9i,-4-5i)
x
class(x)

x <-c("a","b","c","d",e)
x
class(x)
#Mezclas de objetos en un vector
y <- c(1.7,"a")  #caracter
y
class(y)

y <-(TRUE,2)     #numerico
y
class(y)


y <-c("a",TRUE)   #caracter
y
class(y)

y <-c(TRUE,10L,8.5,1+1i,"yo")
y
class(y)
#orden de coaccion explicita
#1 caracter
#2 complejo
#3 numerico
#4 entero
#5 logico
+
  #coercion explicita
  z <- 0:6
as.numeric(z)
as.logical(z)
as.character(z)


z <- c(1+2i,3+4i,8+0i,0+3i,0)
as.logical(z)

z <- c("Programacion","Actuarial","III")
as.numeric(z)
as.logical(z)
as.complex(z)

#LISTAS (es como un vector... pero de vectores y c/u tiene su propia clase)
x <- list(1,"a",TRUE,1+4i)
x

#matrices
m <- matrix(nrow = 2,ncol = 3)
m
#Cambio de dimensiones de 2*3 a 3*2
dim(m)
attributes(m)
dim(m)<-c(3,2)
m
#crear una matriz con datos
m<- matrix(1:6,3,2)
m
m<- matrix(1:6,3,3,T)
m
class(m)
str(m)

dim(m)<- c(2,5) #Esto va a producir error
x<-c(1,2,3)
y<- c("a","b", "c")
z<-c(x,y)
z

m1<- rbind(m,x)
m1

m2<- cbind(m,x)
m2
m3<-rbind(m1,y)
m3
m4<- cbind(m2,y)
m4

x<-factor(c("si","no","si", "si", "no", "si", "no"))
x
table(x)
unclass(x)
x<- factor(c ("si","no","si", "si", "no", "si", "no"), levels= c ("si","no","si", "si", "no", "si", "no"))

#Voleres faltantes
x<-c(1,2,NA,10,3)
is.na(x)
is.nan(x)

#data frames
x<-data.frame(erick =1:4, lori= c(T,T, F, F))
row.names(x)<- c("priemro", "segundo", "tercero", "cuarto")
x
nrow(x)
ncol(x)
attributes (x)
names(x)<- c("yarely", "Karne")
x

#los nombres no son exclusivos de los data frame
x<-1:3
names(x)
names(x)<- c("hugo","paco", "luis")
x

x<- list(a=1:10, b=100:91, c= 51:60)
x
names(x)<-c("seq1", "seq2", "seq3")
x

m<-matrix(1:4,2,2)
m
attributes(m)
dimnames(m)<- list(c("fil1","fil2"), c("col1","col2"))
m
m1<-matrix(,5,6)
m1
dimnames(m1)<- list(c(1,2,3,4,5), c("a","b","c","d","e","f"))
 m1 
 
 #LECTURA DE DATOS
 getwd()
 setwd("~/GitHub/Programacion_Actuarial_III_OT16")
 data<- read.csv("table.csv")
 data<-read.table("table.csv",T,",")
 data