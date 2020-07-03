## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

# Function below will create matrix capable in caching its inverse
# Starting with set matrix, getting matrix and setup the inverse and getting it

makeCacheMatrix <- function(x = matrix()) {
  # creates a cached matrix object
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() {
    x
  }
  setinv <- function(inverse) {
    inv <<- inverse
  }
  getinv <- function() {
    inv
  }
  list(set = set, get = get,
            setinv = setinv,
            getinv = getinv)
}


## Write a short comment describing this function
# Function below will compute the inverse of the special matrix
# using the output returned by makeCacheMatrix above
# it will retrieve after computing the inverse

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'

  inv <- x$getinv()
  if (!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data, ...)
  x$setinv(inv)
  inv
}
