#Matrix Addition & Subtraction
A <- matrix(c(2, 0, 1, 3), ncol = 2)
B <- matrix(c(5, 2, 4, -1), ncol = 2)

A
B

#Compute A + B and display the result.
ab_plus <- A + B
#Compute A - B and display the result.
ab_minus <- A - B

ab_plus

ab_minus

#Create a Diagonal Matrix
#Use diag() to build a 4 × 4 matrix with diagonal entries 4, 1, 2, 3:

D <- diag(c(4, 1, 2, 3))

D
#Show the code and the resulting matrix.
#Construct a Custom 5 × 5 Matrix
#create diagonal
M <- diag(3, 5)

# Replace column and row
M[,1] <- c(3, 2, 2, 2, 2)
M[1,] <- c(3, 1, 1, 1, 1)

M
