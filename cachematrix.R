## Put comments here that give an overall description of what your
## functions do

## Writting a special matrix that can cache its inversion

makeCacheMatrix <- function(x = matrix()) {
        i <- NULL
        set <- function(y){
                x <<- y
                i <<- NULL
        }
        get <- function() x
        setinv <- function(inv) i <<- inv
        getinv <- function() i
        list(set = set, get = get,
             setinv = setinv,
             getinv = getinv)
}


## Writting function to calculate the inverse of a CacheMatrix object

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        i = x$getinv()
        if(!is.null(i)){
                message("found cached data, getting...")
                return(m)
        }
        i = solve(data, ...)
        x$setinv(i)
        i
}
