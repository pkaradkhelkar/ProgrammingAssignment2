## 
The two functions below are used to create a special matrix of lists and then inverse of that matrix




## The function 

makeCacheMatrix takes a square matrix and converts it into a list with 4 elements set, get, setinverse and getinverse

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinverse <- function(solve) m <<- solve
  getinverse <- function() m
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}

## The function 

cacheSolve <- function(x, ...) {
} inverts the given matrix only if it has not been inverted yet. This function takes the list from above function and used solve function to calculate inverse 

cacheSolve <- function(x, ...) {
  m <- x$getinverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinverse(m)
  m
}
