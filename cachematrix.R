## ASSIGNMENT #2 - WRITTEN BY: CodeBeckZero



## This function creates a special "matrix" object that can cache its inverse. By defualt, the function passes an empty matrix
## unless the input matrix is unique AND the functions makeCacheMatrix and cacheSolve have run before. The function requires
## enviroment variables (m_Input_Used & m_Cache) to be created by cacheSolve function



makeCacheMatrix <- function(x = matrix()) {
        
        m_compute <- numeric()  ## Default matrix output 
        
        if(exists("m_Input_Used") == FALSE || (identical(x, m_Input_Used) == FALSE)){ ## Unquie Matrix Input AND makeCacheMatrix/cacheSolve functions used 
               
                 m_compute <- x ## Updates matrix to be passed
        } 

        m_compute 
}


## This function will return the inverse of a matrix. The function will return the inverse from memory if input is not unique from the previous excution. 
## Otherwise the inverse will be computed, previous matrix input and inverse result are cached. 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
       x <- makeCacheMatrix(x)  ## Checks to see if input is unique 
        
       if(length(x) != 0 || exists("m_Cache") == FALSE) {       ## Input unique
               
               message("New data getting cached")
               m_Input_Used <<- x                               ## Previous input recorded
               m_Cache <<- m_Ans <- solve(x)                    ## Inverse computed, result recorded
               
              
        } else {                                                ## Input not unique
                
                message("Getting cached data") 
                m_Ans <- m_Cache                                ## Retriving previous result
               
        }
        
        m_Ans                                                   ## Output 
}
