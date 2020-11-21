## Put comments here that give an overall description of what your
## functions do

## This function creates a list of functions where each function, in order:
##  - caches the value of a matrix and resets the value of its inverse
##  - returns the value of a matrix
##  - caches the value of the inverse of a matrix
##  - returns the value of the inverse of a matrix

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) inv <<- solve
  getinverse <- function() inv
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## This function computes the inverse of a matrix unless that inverse has
## already been computed and cached; in that case returns the cached inverse

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv <- x$getinverse()
  if(!is.null(inv)) {
    message("Getting cached inverse:")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data)
  x$setinverse(inv)
  inv
}
