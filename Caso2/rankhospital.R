rankhospital<- function (estado,resultado,ranking){
    #LECTURA DE DATOS
    getwd()
    setwd("~/GitHub/Programacion_Actuarial_III_OT16/Calidad de Hospitales - data")
    a<-read.csv("outcome-of-care-measures.csv", colClasses = "character")
    
    #REVISION DE LA VALIDEZ
    b<-factor(a[,7])
    c<-attr(b,"levels")
    d<-estado
    e<-c( "ataque al corazon","falla cardiaca", "neumonia")
    f<-factor(e)
    g<-attr(f,"levels")
    h<-resultado
    
    if (length(c[c==d]) == 0 && length(g[g==h])==0 ) {
        stop("Estado inválido y resultado inválido")
        
    }
    if (length(c[c==d]) == 0) {
        stop("Estado inválido")
        
    }
    
    if (length(g[g==h])==0){
        stop("resultado inválido")
        
    }
    if ((ranking != "mejor" && ranking != "peor")==T && is.numeric(ranking)==F ){
        stop("ranking invalido")
    }
    
    #HOSPITAL CON TASA DE MORTALIDAD MAS BAJA
    y<-NA
    y1<-NA
    if (resultado== "ataque al corazon"){
        for (i in 1:nrow(a)){
            if (a[i,7] == estado){
                v<-as.numeric(a[i,11])
                v1<-as.character(a[i,2])
                y<-c(y,v)
                y1<-c(y1,v1)
                
                
                
            }
        }
        
        final<-data.frame(y,y1)
        final1<-final[order(y),]
        q<-sort(factor(y))
        q2<-NA
        suma<-0
        for (j in  1:nrow(final1)){
            if(is.na(final1[j,1])==F){
                q1<-as.character(final1[j,2])
                q2<-c(q2,q1)
                suma<-suma+1
            }
        }
        
        suma1=suma+1
        q3<-split(q2[2:suma1],q)
        #print(sapply(q3,sort))
        q4<-tapply(q2[2:suma1],q,sort)
        q6<-NA
        for (k in 1:length(q4)){
            for (l in 1:length(q4[[k]])){
                q5<-q4[[k]][l]
                q6<-c(q6,q5)
                
            }
        }
        q7<-length(q6)
        if (is.numeric(ranking)==F) {
        
        if (ranking=="mejor"){
            print(q6[2])
        }
        if (ranking=="peor"){
            print(q6[q7])
        }
        } else {
        print(q6[ranking+1])
        }
        
    }
    
 
    y<-NA
    y1<-NA
    if (resultado== "falla cardiaca"){
        for (i in 1:nrow(a)){
            if (a[i,7] == estado){
                v<-as.numeric(a[i,17])
                v1<-as.character(a[i,2])
                y<-c(y,v)
                y1<-c(y1,v1)
                
                
              
            }
        }
       
       final<-data.frame(y,y1)
      final1<-final[order(y),]
      q<-sort(factor(y))
      q2<-NA
      suma<-0
      for (j in  1:nrow(final1)){
      if(is.na(final1[j,1])==F){
          q1<-as.character(final1[j,2])
          q2<-c(q2,q1)
          suma<-suma+1
      }
      }
    
      suma1=suma+1
      q3<-split(q2[2:suma1],q)
     #print(sapply(q3,sort))
     q4<-tapply(q2[2:suma1],q,sort)
     q6<-NA
     for (k in 1:length(q4)){
         for (l in 1:length(q4[[k]])){
             q5<-q4[[k]][l]
             q6<-c(q6,q5)
             
         }
     }
     q7<-length(q6)
     if (is.numeric(ranking)==F) {
         
         if (ranking=="mejor"){
             print(q6[2])
         }
         if (ranking=="peor"){
             print(q6[q7])
         }
     } else {
         print(q6[ranking+1])
     }
     
    
    }
    
    y<-NA
    y1<-NA
    if (resultado== "neumonia"){
        for (i in 1:nrow(a)){
            if (a[i,7] == estado){
                v<-as.numeric(a[i,23])
                v1<-as.character(a[i,2])
                y<-c(y,v)
                y1<-c(y1,v1)
                
                
                
            }
        }
        
        final<-data.frame(y,y1)
        final1<-final[order(y),]
        q<-sort(factor(y))
        q2<-NA
        suma<-0
        for (j in  1:nrow(final1)){
            if(is.na(final1[j,1])==F){
                q1<-as.character(final1[j,2])
                q2<-c(q2,q1)
                suma<-suma+1
            }
        }
        
        suma1=suma+1
        q3<-split(q2[2:suma1],q)
        #print(sapply(q3,sort))
        q4<-tapply(q2[2:suma1],q,sort)
        q6<-NA
        for (k in 1:length(q4)){
            for (l in 1:length(q4[[k]])){
                q5<-q4[[k]][l]
                q6<-c(q6,q5)
                
            }
        }
        q7<-length(q6)
        if (is.numeric(ranking)==F) {
            
            if (ranking=="mejor"){
                print(q6[2])
            }
            if (ranking=="peor"){
                print(q6[q7])
            }
        } else {
            print(q6[ranking+1])
        }
    }
    
    
   
    
}

rankhospital("TX","falla cardiaca","mejor")
