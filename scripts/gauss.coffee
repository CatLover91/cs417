gauss = (theMatrix) ->
    int i,j,ij,k;
    double error,u[m∗n],z;
    
    # Set initial guess to be identically zero
    guessMat = (0 for [0...m*n])
    outputanderror "gsrb out", u, 0
    
    # Compute Red−Black Gauss−Seidel iteration
    for k in totaliters
        
        for(j = 1; j < n − 1; j++) 
            for(i = 1 + (j & 1); i < m − 1; i += 2) 
                ij = i + m ∗ j
                guessMat[ij] = (f(i,j) + dxxinv ∗ (guessMat[ij − 1] + guessMat[ij + 1])
                    + dyyinv ∗ (guessMat[ij − m]+guessMat[ij + m])) ∗ dcent;
                
        for(j = 1; j < n − 1; j++) 
            for(i = 2 − (j & 1); i < m − 1; i += 2) 
                ij = i + m ∗ j
                guessMat[ij] = (f(i,j) + dxxinv ∗ (guessMat[ij − 1] + guessMat[ij + 1])
                    + dyyinv * (guessMat[ij − m] + guessMat[ij + m])) ∗ dcent;
                
        # Save the result and compute error if necessary
        outputanderror "gsrb out", u, k