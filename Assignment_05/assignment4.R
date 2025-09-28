#Create the matrices
#In R, define:
A <- matrix(1:100,  nrow = 10)
B <- matrix(1:1000, nrow = 10)
#Inspect dimensions
#Verify whether each matrix is square:
dim(A)  # should be 10 × 10
dim(B)  # 10 × 100 — not square
#Compute inverse and determinant
#Use solve() and det(); handle errors for non‑square or singular matrices:
# For A
#invA <- solve(A)
#detA <- det(A)

invA <- tryCatch(solve(A), error = function(e) print(e))
detA <- tryCatch(det(A),   error = function(e) print(e))
print(detA)
# For B, use tryCatch to capture errors
invB <- tryCatch(solve(B), error = function(e) print(e))
detB <- tryCatch(det(B),   error = function(e) print(e))

