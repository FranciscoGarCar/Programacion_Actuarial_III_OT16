mediacontaminante<- function(directorio="~/GitHub/Programacion_Actuarial_III_OT16/specdata/specdata",contaminante,id=1:332){
  getwd()
  setwd("~/GitHub/Programacion_Actuarial_III_OT16/specdata/specdata")
  promedio<-0
  for (i in id){
    if (contaminante=="sulfato"){
      if(i<10){
        c<- paste("00",i,".csv",sep="")
        d<-read.csv(c)
        promedio<- promedio+(mean(d[,2],na.rm=T))
        
      }
      if(i==10){
        c<- paste("0",i,".csv",sep="")
        d<-read.csv(c)
        promedio<- promedio+(mean(d[,2],na.rm=T))
      }
      if(i>10 && i<100){
        c<- paste("0",i,".csv",sep="")
        d<-read.csv(c)
        promedio<- promedio+(mean(d[,2],na.rm=T))
      }
      if(i==100){
        c<- paste(i,".csv",sep="")
        d<-read.csv(c)
        promedio<- promedio+(mean(d[,2],na.rm=T))
      }
      if(i>100){
        c<- paste(i,".csv",sep="")
        d<-read.csv(c)
        promedio<- promedio+(mean(d[,2],na.rm=T))
      }
      promedio1<-promedio/length(id)
    }
    else {
      if(i<10){
        c<- paste("00",i,".csv",sep="")
        d<-read.csv(c)
        promedio<- promedio+(mean(d[,3],na.rm=T))
      }
      if(i==10){
        c<- paste("0",i,".csv",sep="")
        d<-read.csv(c)
        promedio<- promedio+(mean(d[,3],na.rm=T))
      }
      if(i>10 && i<100){
        c<- paste("0",i,".csv",sep="")
        d<-read.csv(c)
        promedio<- promedio+(mean(d[,3],na.rm=T))
      }
      if(i==100){
        c<- paste(i,".csv",sep="")
        d<-read.csv(c)
        promedio<- promedio+(mean(d[,3]-d[1,3],na.rm=T))
      }
      if(i>100){
        c<- paste(i,".csv",sep="")
        d<-read.csv(c)
        promedio<- promedio+(mean(d[,3],na.rm=T))
      }
     
    }
   
  }
  promedio1<-promedio/length(id) 
  promedio1
 
}

mediacontaminante(contaminante="sulfato",1:1)