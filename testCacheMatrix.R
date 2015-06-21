m1 <- matrix(c(1:5,4,3,2,1), nrow=3, ncol=3)
print(cm1 <- makeCacheMatrix(m1))
print(cacheSolve(cm1))
print(cacheSolve(cm1))