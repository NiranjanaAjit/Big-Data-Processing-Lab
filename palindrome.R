n<-readline(prompt="ENTER NUMBER OF VECTORS: ")
x<-list()
for(i in 1:n){
  print(paste("vector ",i))
  print("ENTER YOUR WORDS , TYPE -1 TO STOP")
  a<-c()
  b<-0
  while(b!="-1"){
    b<-readline(prompt = "")
    if(b!="-1"){
      a<-c(a,b)
    }
  }
  x[[i]]<-a
}
print(x)

for(i in 1:n){
  print(paste("VECTORS ",i))
  
  for(j in x[[i]]){
    #print(j)
    jchar<-strsplit(j,NULL)[[1]]
    jrev<-paste(rev(jchar), collapse="")
    if(j==jrev){
      print(paste(j," IT IS A PALINDROME"))
    }
    else{
      print(paste(j," IT IS NOT A PALINDROME"))
    }
  }
}
print(x)
