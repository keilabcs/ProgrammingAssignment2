
# Programming Assignment 2


## Put comments here that give an overall description of what your


# Invert the matrix is usually a costly calculation and may be some benefit 
# To cache the inverse of a matrix instead of calculating it repeatedly. The 
# After two functions are used to cache the inverse of a matrix. 

# MakeCacheMatrix creates a list containing a function to 
# 1 set the value of the matrix 
# 2. get the value of the matrix 
# 3 set the value of the inverse matrix 
# 4 get the value of the inverse matrix

## functions do


## Write a short comment describing this function

# The following function returns the inverse matrix. It first checks 
# The converse has already been calculated. If so, he gets the result and ignores the
# Computing. If not, it computes the reverse, sets the value in the cache via 
# Function setinverse.


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


## Write a short comment describing this function
## Faça um breve comentário descrevendo esta função


# This function assumes that the array is always reversed.


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


## Return a matrix that is the inverse of 'x'
## Retorna uma matriz que é o inverso de 'x'





