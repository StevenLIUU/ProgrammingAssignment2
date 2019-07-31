## Put comments here that give an overall description of what your
## functions do

## The first function, `makeCacheMatrix` creates a list containing 4 functions to

## 1.  set the value of the matrix
## 2.  get the value of the matrix
## 3.  set the value of the inverse
## 4.  get the value of the inverse

makeCacheMatrix <- function(x = matrix()) {
        inv = NULL
        set = function(y) {
                x <<- y
                inv <<- NULL
        }
        get = function() x
        setinverse(inverse) inv <<- inverse
        getinverse() inv
        list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## The following function calculates the inverse of the list
## created with the above function. However, it first checks to see if the
## inverse has already been calculated. If so, it `get`s the inverse from the
## cache and skips the computation. Otherwise, it calculates the inverse of
## the data and sets the value of the inverse in the cache via the `setinverse`
## function.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv = x$getinverse()
        if (!is.na(inv)) {
                message("getting cache data")
                inv
        }
        matrix = x$get()
        inv = solve(matrix)
        x$setinverse(inv)
        inv
}
