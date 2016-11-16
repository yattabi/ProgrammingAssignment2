## Assignment: Caching the Inverse of a Matrix


## This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
  inverseMatrix <<- NULL
  set <- function(y) {
    if (x != y)
    x <<- y
    inverseMatrix <<- NULL
  }
  get <- function() x
  setInverse <- function() inverseMatrix <<- solve(x)
  getInverse <- function() inverseMatrix
  
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)

}


## This function computes the inverse of the special "matrix" returned by 
## makeCacheMatrix above. If the inverse has already been calculated 
## (and the matrix has not changed), then cacheSolve should retrieve the 
## inverse from the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inverseMatrix <- x$getInverse()
  if (!is.null(inverseMatrix)){
    message("getting chaed inverse matrix")
    return(inverseMatrix)
  }
}
