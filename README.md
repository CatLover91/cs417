This repository contains my code for CS417

generator
step 1: Generate random matrix A of N x N size
step 2: Enforce diagonal dominance
    take absolute value of diagonals
    add absolute value of each row location to diagonal
        this guarentees that methods work
step 3: GENERATE RANDOM SOLUTION
    can write to external file
step 4: gen A*x=b
step 5: gen file, containing N1, N2, Aval, Bval

    | |
    | |
     V

solver

runs through:
    Jacobi
    Gauss Seidel
    S.O.R.
keep track of:
    solution
    amount and details of iterations
    relative error per iteration and final error
        |b(comp) - b(act)|sub(2) <- "2 norm"
        -----------------------
            |b(act)|sub(2)
