## Put comments here that give an overall description of what your
## functions do

## creates four inner functions that get and set a matrix and
## it's inverse and puts them into a list.

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) { 
                x <<- y
                m <<- NULL
        }
        get <- function() x 
        setmatrix <- function(matrix) m <<- matrix 
        getmatrix <- function() m
        list(set = set, get = get,
             setmatrix = setmatrix,
             getmatrix = getmatrix)
}


## checks to see if a matrix is stored in cacheMatrix
## and returns the inverse of the matrix

cacheSolve <- function(x, ...) {
        m <- x$getmatrix() 
        if(!is.null(m)) { 
                message("getting cached data")
                return(m) 
        }
        data <- x$get()  
        m <- solve(data, ...) 
        x$setmatrix(m) 
        m 
}
