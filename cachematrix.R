## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

    inv <- NULL                             ## initialize inv as NULL;
                                            ## will hold value of matrix inverse 
    set <- function(y) {                    ## define the set function to assign new 
        x <<- y                             ## value of matrix 
        inv <<- NULL                        ## if there is a new matrix, reset inv to NULL
    }
    get <- function() x                     ## returns value of the matrix argument

    setinverse <- function(inverse) inv <<- inverse  ## assigns value of inv 
    getinverse <- function() inv                     ## gets value of inv 
    list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)  

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix-> inverse of 'x'

    inv <- x$getinverse()
    if(!is.null(inv)) {
        message("getting cached data")
        return(inv)
    }
    data <- x$get()
    inv <- solve(data, ...)
    x$setinverse(inv)
    inv
}
