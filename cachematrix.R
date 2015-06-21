## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## Similar to makeVector but works with inverse of matrix instead of mean of vector
## create cached matrix and functions for getting and setting matrix and inverse
makeCacheMatrix <- function(x = matrix()) {
    i <- NULL
    set <- function(y) {
        x <<- y
        i <<- NULL
    }
    get <- function() x
    setinv <- function(inv) i <<- inv
    getinv <-function() i
    list(set = set, get = get,
         setinv = setinv,
         getinv = getinv)
}


## Write a short comment describing this function

## Similar to cachemean but works with cached inverse matrix instead of cached mean
## check for cached inverse and return if not null, else calculate, cache and return it
cacheSolve <- function(x, ...) {
    i <- x$getinv()
    if (!is.null(i)) {
        message("getting cached data")
        return(i)
    }
    data <- x$get()
    i <- solve(data)
    x$setinv(i)
    ## Return a matrix that is the inverse of 'x'
    i
}
