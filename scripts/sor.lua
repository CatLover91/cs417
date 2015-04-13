sor = (theMatrix) -> 
    int i,j,ij,k;
    double error,u[m∗n],z;
    
    # Set initial guess to be identically zero
    u = (0 for [0...(m*n)])
    
    outputanderror "sor out", u, 0
    
    # Compute SOR Red−Black iterations
    for k in [1..totaliters] by 1 
        for j in [1..(n - 1)] by 1
            for i in [(1 + (j and 1))..(m-1)] by 2 
                ij = i + m * j;
                u[ij] = u[ij] * (1 - omega) + omega * (f(i,j) + dxxinv * (u[ij - 1] + u[ij + 1]) + dyyinv * (u[ij - m] + u[ij + m])) * dcent;
        
        for j in [1..(n - 1)] by 1
            for i in [(1 + (j and 1))..(m-1)] by 2 
                ij = i + m * j
                u[ij] = u[ij] * (1 - omega) + omega * (f(i,j) + dxxinv * (u[ij - 1] + u[ij + 1]) + dyyinv * (u[ij - m] + u[ij + m])) * dcent;
        
        # Save the result and compute error if necessary
        outputanderror "sor out", u, k