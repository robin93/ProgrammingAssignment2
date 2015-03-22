## Program to generate a function which can be used to cache the inverse of a matrix
## makeCacheMatrix is a function to create a list of functions which will be used in the second function while caching matrix
## cacheSolve is the function to inverse the matrix. First it will check if the inverse of the matrix has already been done. If done already it will return the prestored value other wise it will call a function to generate a new inverse


## This function creates a list of functions which 1. set the value of the matrix  2. get the value of the matrix  3. set the value of the inverse  4. get the value of the inverse 
makeCacheMatrix <- function(x = matrix()) {
		inverse <- matrix()
		set <- function(y) {
			x <<- y
			inverse <<- matrix()
		}
		get <- function() x
		setinverse <-function(inverse) i <<- inverse 
		getinverse <-function() inverse
		list(set = set,get = get, 
			setmean = setmean, 
			getmean = getmean)
}


## This function creates the inverse for the matrix. Before that it checks if the inverse already exists. In the later case it fetches the value from the cache

cacheSolve <- function(x, ...) {
        inverse <- x$getinverse()    
        if(!is.null(inverse)) {            #checks if the inverse already exists or is it an empty matrix
        	message("getting cached data")
        	return(inverse)
        }
        data <- x$get()
        inverse <- supply(x,...)  #creates the inverse of the matrix
        x$setmean(inverse)
        inverse
}
