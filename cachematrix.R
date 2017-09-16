## Indietify potencially memory consuming calculations 

## makeCacheMatrix create a list containign a function to 
# 1. set the value of the matrix
# 2. get the value of the matrix

makeCacheMatrix <- function(x = matrix()) {
  m<-NULL
  set<-function(y){
  x<<-y
  m<<-NULL
}
get<-function() x
setmatrix<-function(solve) m<<- solve
getmatrix<-function() m
list(set=set, get=get,
   setmatrix=setmatrix,
   getmatrix=getmatrix)
}

## Check if the mean value has been calculated, otherwise calculate it 
cacheSolve <- function(x=matrix(), ...) {
    m<-x$getmatrix()
    if(!is.null(m)){
      message("getting cached data")
      return(m)
    }
    matrix<-x$get()
    m<-solve(matrix, ...)
    x$setmatrix(m)
    m
}

## Call the function 
a<-makeCacheMatrix()
## Set the varaible
a$set(matrix(1:4,2,2))
## Solve the function
cacheSolve(a)
