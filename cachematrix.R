## The two functions can help you to caculate the inverse of Matrix

## this function can cache a Matrix

makeCacheMatrix <- function(x = matrix())
{
        so <- NULL
        set <- function(y) {   ##set a Matrix
                x <<- y
                so <<- NULL
        }
        get <- function() x   ## get a Matrix
        setsolve <- function(solve) so <<- solve  ## set the inverse of the Matrix
        getsolve <- function() so  ##get the inverse of the Matrix
        list(set = set, get = get,
             setsolve = setsolve,
             getsolve = getsolve)
}


   ## Return a matrix that is the inverse of 'x'

cacheSolve <- function(x, ...) {
     
                so <- x$getsolve()
        if(!is.null(so)) { 
                message("getting cached data")  
                return(so)
        }
        data <- x$get()
        so <- solve(data,...)
        x$setsolve(so)
        so ## print the inverse of 'x'
}
