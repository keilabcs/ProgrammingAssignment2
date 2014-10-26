
# Programming Assignment 2


## Put comments here that give an overall description of what your
## Coloque comentários aqui que dão uma descrição geral do que o seu

# Inversão da matriz é geralmente um cálculo dispendiosa e pode haver algum benefício
# Para cache o inverso de uma matriz em vez de calculá-lo repetidamente. A
# Após duas funções são usadas para armazenar em cache o inverso de uma matriz.

# MakeCacheMatrix cria uma lista contendo uma função para
# 1. definir o valor da matriz
# 2. obter o valor da matriz
# 3. definir o valor da inversa da matriz
# 4. obter o valor do inverso da matriz

## functions do
## funções fazer



## Write a short comment describing this function
## Faça um breve comentário descrevendo esta função

# A seguinte função retorna o inverso da matriz. Ele primeiro verifica se
# O inverso já foi calculado. Se assim for, ele recebe o resultado e ignora o
# Computação. Se não, ele calcula o inverso, define o valor no cache via
# Função setinverse.


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


# Esta função assume que a matriz é sempre invertida.


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





