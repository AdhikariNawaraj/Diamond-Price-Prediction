#Statistical Theory scientific computing-1
#Mini Project -1

#Q1.  Use sample function to generate a random 20x20 matrix A with integers in [-10, 10]. Print A
set.seed(123) # I used the for items  to make reproducible
A <- matrix(sample(-10:10, 20*20, replace = TRUE), nrow = 20, ncol = 20)
print(A)


#Q2.Generate a 20-dimensional vector b with real numbers in [-10, 10]. Print b
# Generating 20- dimensional vector with random number in [-10, 10]
b<- runif(20,min =-10,max = 10)
print(b) # print vector

#Q3: Print the 2nd row of A
 print(A[2,]) # A([2,]) this means we print all the elements of 2nd row.

#Q4: Print the element in the 2nd row and 3rd column of A
print(A[2, 3])

#Q5:Print all the diagonal elements of A.
# to print the diagonal of A we should assign the syntax variable for this.
diag_elements <- diag(A)
print(diag_elements)

#Q6: Print the upper triangular part of A, including the diagonal elements.
upper_triangular_A <- A
upper_triangular_A[lower.tri(A,diag = FALSE)] <- 0 # Here, replacing lower triangular elements as NA or 0
print(upper_triangular_A)

#Q7: Print the low triangular part of A, not including the diagonal elements.
lower_triangular_A <- A
lower_triangular_A[upper.tri(A,diag = TRUE)] = 0
print(lower_triangular_A)

#Q8: Combine A and b to one augmented matrix M = [A|b]. Print M

M <- cbind(A,b)
print(M)

#Q9: Think of a way to double check M is correct. Remember M, A are large size.

M[,21]-b ==0
all(M[,21]==b)

#Q10: Solve the equation Ax = b for x using row echelon form.
install.packages("matlib")  
library(matlib)
echelon(A,b)

#Q11: Is A invertible? Defend your answer. You need to show at least 2 different methods to check the
#invertibility of A. If A is invertible, find the inverse of A.

det(A) #  If the determinant of A is not eqaul to 0 this means A is invertible.
rref(A) # The row echelon form of matrix has the identity matrix then we can say that the matrix A is invertible
inv(A)


#Q12: If A is invertible, compute A’s inverse and A’s inverse multiplying b. If A is not invertible, what does it
#say about the solution for Ax = b?

inv(A) %*% b

# Q13: Check whether A’s inverse multiplying b is the same as the solution of equation Ax = b. Yes or No.

install.packages("matlib")
library(matlib)
t = inv(A)*b
y = cbind(A,b)
echelon(y)
View(echelon(y))
 # Yes Ax = b same

#Q14: Use sample function to generate a random 20x20 matrix B with integers in [11, 20]. Print B
B <- matrix(c(sample(11:20,20*20, TRUE)),nrow = 20,ncol = 20)
print(B)

#Q15: Verify transpose of A + B is equal to transpose of A + transpose of B

transpose_A <-t(A)
transpose_B <- t(B)
transpose_AB <- t(A+B)
transpose_AB == transpose_A + transpose_B

#Q16: Verify transpose of (A multiplies B) is equal to transpose of B multiplies transpose of A

transpose_mu_AB <- t(A%*%B) 
transpose_mu_AB == transpose_B %*% transpose_A

#Q17: Create a 20x20 identity matrix, I20

I20 <- diag(20)
print(I20)

#Q18: Create matrix M2 = [A|I20]

M2 <- cbind(A,I20) # I concatenate horizonntally
View(M2)


#Q19: Compute the reduced echelon form of M2

install.packages("pracma") # To calculate reduce echelon from we should install the package
library(pracma)
reduce_echelon <- rref(M2)
print(reduce_echelon)

#Q20: Obtain inverse of A from reduced echelon form of M2

inverse_of_A <- reduce_echelon[, (ncol(A) + 1):(ncol(A) + 20)]
print(inverse_of_A)



#Bonus Questions



#a) Create two matrices A is 30x30, and B is 30 x30, and I20 and I30 identity matrices

library(pracma)
A <- matrix(runif(30*30, min = 1, max = 20), ncol = 30, nrow = 30)
B <- matrix(runif(30*30,min = 5, max = 20), ncol= 30, nrow = 30)
I20 <- diag(20)
I30 <- diag(30)


# b) Create matrix M2= [ 𝐴 𝐼30 30 𝐵]

M2 = rbind(cbind(A,I30),cbind(I30,B)) 
print(M2)

# c) Compute the reduced echelon form of M2

M2_rref <- rref(M2) # performing reduce from of M2
M2_rref

# d) Obtain inverse of A from reduced echelon form of M2

A_inv <- M2_rref[1:30, 31:60] #Extracting inverse of A from first 30 rows and 31 to 60 columns

rref_M2 <- rref(M2) # performing row reduction of M2
print(A_inv) 

#e) Compare the reduced echelon form of D with D itself. Can you tell some similarities?

A_inv_solve <- solve(A)
comparison == all.equal(A_inv, A_inv_solve) #  Compare the results





# Challenge yourself Questions
 
 
#1.Q1: Generate a random 20x20 matrix A from uniform distribution. Print A
 
A <- matrix(runif(20*20,min = 1, max = 100),ncol = 20, nrow = 20)
print(A)     

#Q2: Q2: Generate a 20-dimensional vector b from Normal distribution. Print b

b <- c(rnorm(20))
print(b)
length(b)


#Q3:Print the 2nd and 5th row of A together
print(A[c(2,5),])

#Q4:Print the 3rd and 13th column of A together

print(A[,c(3,13)])

#Q5: In Q11 of the assignment you identified two ways to check if the matrix is invertible, can you think of any other ways to check if A is inv

# The other way than the ways mentioned in q11 would be the matrix should be a square matrix.
#A * adj(A) = I # Adjugate test
#eigen value test
