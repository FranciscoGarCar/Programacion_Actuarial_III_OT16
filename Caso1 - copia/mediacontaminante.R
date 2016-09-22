varu <- 0 
for (i in 1:100) {print(z)
z<-5  
while (z>=3 && z<=10){
  #print (z) 
  moneda<- rbinom(1,1,0.5)
  
  if (moneda==1){
    z<- z+1
    
  } else {
    z<-z-1
    
  }
}
if(z<3){ varu <- varu +1} 
}


varu
vart<-100-varu
vart

