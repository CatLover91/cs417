gauss = (theMatrix) ->
    int i,j,ij,k;
    double error,u[m∗n],z;
    
    # Set initial guess to be identically zero
    guessMat = (0 for [0...m*n])
    outputanderror "gsrb out", u, 0
    
    # Compute Red−Black Gauss−Seidel iteration
    for k in [1..totaliters] by 1
        
        for j in [1..(n - 1)] by 1
            for i in [(1 + (j and 1))..(m-1)] by 2
                ij = i + m * j
                guessMat[ij] = (f(i,j) + dxxinv * (guessMat[ij - 1] + guessMat[ij + 1]) + dyyinv * (guessMat[ij - m]+guessMat[ij + m])) * dcent;
                
        for j in [1..(n - 1)] by 1
            for i in [(1 + (j and 1))..(m-1)] by 2
                ij = i + m * j
                guessMat[ij] = (f(i,j) + dxxinv * (guessMat[ij - 1] + guessMat[ij + 1]) + dyyinv * (guessMat[ij - m] + guessMat[ij + m])) * dcent;
                
        # Save the result and compute error if necessary
        outputanderror "gsrb out", u, k