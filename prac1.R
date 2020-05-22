a = data.frame(x1= c("A","B","C"), x2=1:3) 

b = data.frame(x1= c("A","B","D"), x2=c("Yes","No","Yes")) 

c=left_join(b,a,by='x1')
