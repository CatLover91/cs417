Programming assignment 1

You are to write a functionally designed C++ program that will display the following functionality:
Generate a random, diagonally dominant matrix problem and save to file A and b into separate files.
Load a matrix of size nxn from a file named A.txt
Load a vector of size n from a file named b.txt
Solve the matrix-vector problem Ax=b by:
Jacobi iteration
Gauss-seidel iteration
SOR with user input for the omega value.
      Stop iteration each of the methods when the two-norm of the error vector is less than 1.0x10-6. Display thee ||error||2 and the number of iterations required to reach the desired solution.


You may wish to design your own matrix class or find one on the internet.
You are allowed to preface the double precision values in the matrix and/or the forcing vector with an integer representing the value n.


Example:
A.txt

3
1.1     2.2     3.3
4.4     5.5     6.6
7.7     8.8     9.9


b.txt
3
2.1     3.2    4.3