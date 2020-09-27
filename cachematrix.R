## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  ##assume that the matrix is invertible
  inv <- NULL
  ## set the value of the matrix using another function
  set <- function(y){
    x <<- y       ## use of the double assignment operator
    inv <<- NULL 
  }
     get <- function() {x} ## get the value of the matrix outside set function
     setInverse<-function(inverse)
     {inv <<- inverse}
     getInverse <- function(){inv} ##get the value of inverse
     list( set = set, get= get, setInverse= setInverse, getInverse = getInverse)
     }


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv <- x$getInverse() ##gets inverse of x and assigns it to inv
 ## to check if the inverse is already calculated
  
  if(!is.nul(inv)){
    message(" getting cached data")
    return(inv)
  }
  ## otherwise it needs to compute the inverse of the matrix and set it to cache
  mat <- x$get()
  inv <- solve(mat,...)
  x$setInverse(inv)
  inv
  }
