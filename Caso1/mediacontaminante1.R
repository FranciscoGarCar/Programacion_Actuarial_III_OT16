mediacontaminante<- function(directorio="~/GitHub/Programacion_Actuarial_III_OT16/specdata/specdata",contaminante,id=1:332){
  suma<-0
  totalren<-0
  for (i in id){
    if (i<10){
      a<-paste("00",i,".csv",sep="")
    }
    if (i==10){
      a<-paste("0",i,".csv", sep="")
    }
    if (i>10 && i<100){
      a<-paste("0",i,".csv", sep="")
    }
    if (i==100){
      a<-paste(i,".csv", sep="")
    }
    if(i>100){
      a<-paste(i,".csv", sep="")
    }
    #print(a)
    getwd()
    setwd(directorio)
    c<-read.csv(a)
    #print(c)
    if (contaminante=="sulfato"){
      suma<-suma+sum(c[,2],na.rm=T)
      for (j in 1:nrow(c)){
        if (is.na(c[j,2])==T){
          totalren<-totalren+0}
        else{
          totalren<-totalren+1
        }
      }
     
    }
    if (contaminante=="nitrato"){
      suma<-suma+sum(c[,3],na.rm=T)
      for (j in 1:nrow(c)){
        if (is.na(c[j,3])==T){
          totalren<-totalren+0}
        else{
          totalren<-totalren+1
        }
      }
    
    }
    
    
  }
  
  promedio<-suma/totalren
  print(promedio)
  
}
 mediacontaminante(,"sulfato",1:10)

  
   
   
   
 

 





