m=10
n=rnorm(10)
x= data.frame(replicate(m,rnorm(n)))
d=x

t1= Sys.time()
for (i in seq(nrow(x))) {
  for (j in seq(nrow(x))) {
    d[i,j]=round(d[i,j]+sin(1.570796),3)
  } 
}
t2 = Sys.time()
print(paste0("For loop takes ",round((t2-t1),5)," seconds"))

z=x
t3 = Sys.time()
y=sapply(z,function(k) { k=round(k + sin(1.570796),3)})
t4 = Sys.time()
print(paste0("For loop takes ",round((t4-t3),5)," seconds"))

x[1,]
y[1,]
d[1,]
