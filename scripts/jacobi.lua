def jacobi(theMatrix) 
    ij = theMatrix.x() * theMatrix.y()
    
    a = theMatrix.toArray()
    b = theMatrix.toArrayB()
    
    # Set initial guess to be identically zero
    
    u = Array.new(ij, 0)
    v = Array.new(ij, 0)
    
    outputanderror "jacobi out", u, 0

    # Carry out Jacobi iterations
    for k in [1..totaliters] by 1
        
        # Alternately flip input and output matrices
        if k % 2 is 0
            a = u
            b = v
        else 
            a = v
            b = u  
        # Compute Jacobi iteration
        for j in [1..(n-1)] by 1
            for i in [1..(nX-1)] by 1 
                ij = i + nX * j
                a[ij] = (f(i,j) + dxxinv * (b[ij - 1] + b[ij + 1]) + dyyinv * (b[ij - nX] + b[ij + nX])) * d cent;
            
        # Save and compute error if necessary
        outputanderror "jacobi out", a, k
