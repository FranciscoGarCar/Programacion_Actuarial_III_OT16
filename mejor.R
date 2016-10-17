outcome <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
 head(outcome)
 ncol(outcome)
 colnames(outcome)
 names(outcome)
 outcome[, 11] <- as.numeric(outcome[, 11])
 ## 
 hist(outcome[, 11])
 
 
mejor<- function (estado,resultado){
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
    
    #HOSPITAL CON TASA DE MORTALIDAD MAS BAJA
    suma<-0
    y<-0
   if (resultado== "ataque al corazon"){
     for (i in 1:nrow(a)){
        if (a[i,7] == estado){
           v<- a[i,11]
           y<-c(y,v)
           suma<-suma+1

        }
     }
       suma1<-suma+1
   x<-min(y[2:suma1],na.rm=T)
   final1<-NA
    for (j in 1:nrow(a)){
        if (a[j,7] == estado){
            if (a[j,11]==x){
                final<-as.character(a[j,2])
                final1<-c(final1,final)
              
            }
            
        }
    }
   final2<-sort(final1)
   print(final2[1])
   }

    suma<-0
    y<-0
    if (resultado== "falla cardiaca"){
        for (i in 1:nrow(a)){
            if (a[i,7] == estado){
                v<- a[i,17]
                y<-c(y,v)
                suma<-suma+1
                
                
            }
        }
        suma1<-suma+1
        x<-min(as.numeric(y[2:suma1]),na.rm=T)
        final1<-NA
        for (j in 1:nrow(a)){
            if (a[j,7] == estado){
                if (a[j,17]==x){
                    final<-as.character(a[j,2])
                    final1<-c(final1,final)
                   
                }
                
            }
        }
        
        final2<-sort(final1)
        print(final2[1])
        
        
    }
    
    suma<-0
    y<-0
    if (resultado== "neumonia"){
        for (i in 1:nrow(a)){
            if (a[i,7] == estado){
                v<- a[i,23]
                y<-c(y,v)
                suma<-suma+1
                
            }
        }
        suma1<-suma+1
        x<-min(as.numeric(y[2:suma1]),na.rm=T)
        final1<-NA
        for (j in 1:nrow(a)){
            if (a[j,7] == estado){
                if ( a[j,23]==x){
                   final<-as.character(a[j,2])
                   final1<-c(final1,final)
                  
                }
                
            }
        }
        
        final2<-sort(final1)
        print(final2[1])
        
        
    }
    
}
  


mejor("MD","ataque al corazon")
