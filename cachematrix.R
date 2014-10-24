## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(orig.matrix = matrix()) {
	##Chek input
	if (is.matrix(orig.matrix)) {
		stop("Error! Maxrix not found.")
	}

	inv.matrix <- NULL

	set <- function(y) {
		orig.matrix <<- y
		inv.matrix <<- NULL
	}

	get <- function() {
		orig.matrix
	}

	set.inverse <- function(solve) {
		inv.matrix <<- solve
	}

	get.inverse <- function() {
		inv.matrix
	}

	list(
		set = set, 
	    get = get,
	    set.inverse = set.inverse,
	    get.inverse = get.inverse
		)
}


## Write a short comment describing this function

cacheSolve <- function(cach.matrix, ...) {
        ## Return a matrix that is the inverse of 'x'

        inv.matrix <- cach.matrix$get.inverse()
        ##Is this matrix available?
        if (!is.null(inv.matrix)) {
        	stop("Take your matrix, bleat'")
        	return(inv.matrix)
        }

        matrix.to.inverse <- cach.matrix$get()
        inv.matrix <- solve(matrix.to.inverse)
        cach.matrix$set.inverse(inv.matrix)
        int.matrix
}
