corr<- function(directorio="~/GitHub/Programacion_Actuarial_III_OT16/specdata/specdata",horizonte=0){
  for (i in 332) {
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
    getwd()
    setwd(directorio)
    c<-read.csv(a)
    suma<-0
    for (j in 1:nrow(c)){
      g<-complete.cases( c[j,])
      if(g==T){
        suma<-suma+1
      }
      
    }
  if(suma>=horizonte){
    for (k in 1:nrow(c)){
      g1<-complete.cases( c[k,2])
      g2<-complete.cases(c[k,3])
      if(g1==T && g2==T){
        suma1<-suma1+1
        sulf<-sulf+c[k,2]
        nitr<-nitr+c[k,3]
      }
      
    }
   promedios<-sulf/suma1
   promedion<-nitr/suma1
   sulf1<-0
   nitr1<-0
   suni<-0
   for (m in 1:suma){
     sulf1<-sulf1+(g1[m]^2)
     nitr1<-nitr1+(g2[m]^2)
     suni<-suni+(g1[m]*g2[m])
   }
   g3<-((sulf1/suma)-(promedios^2))^(1/2)
   g4<-((sulf1/suma)-(promedion^2))^(1/2)
   g5<-((suni/suma)-(promedios*promedion))
   corre<-g5/(g3*g4)
  }
  }
  print(corre)
}


