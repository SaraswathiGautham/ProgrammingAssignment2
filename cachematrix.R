## The following functions wiil return the inverse of a cached matrix

## the following functions will set the matrix, get the matrix, 
## set the inverse of the matrix and get the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
inv<-NULL
set<-function(y){
  x<<-y
  inv<<-NULL
}
get=function()x
setinv<-function(inverse) inv<<-inverse
getinv<-function()inv
list(set=set, get=get,
     setinv=setinv,
     getinv=getinv)
}


## The following function will return the inverse matrix of the original matrix.
## If the inverse exists a message is returned. Otherwise it gets calculated.

cacheSolve <- function(x, ...) {
  inv<-getinv()
  if(!is.null(inv)){
    message("getting cached data")
    return(inv)
  }
  mat.data<-x$get()
  inv<-solve(mat.data,...)
  x$setinv(inv)
  return(inv)
        ## Return a matrix that is the inverse of 'x'
}
