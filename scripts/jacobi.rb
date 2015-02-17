def jacobi(theMatrix) 
    ij = theMatrix.x() * theMatrix.y()
    
    a = theMatrix.toArray()
    b = theMatrix.toArrayB()
    
    # Set initial guess to be identically zero
    
    u = Array.new(ij, 0)
    v = Array.new(ij, 0)
    
    outputanderror("jacobi out",u,0)

    # Carry out Jacobi iterations
    for(k=1;k<=totaliters;k++)
        
        # Alternately flip input and output matrices
        if (k % 2 == 0) {
            a = u
            b = v
        } else {
            a = v
            b = u
        }
            
        # Compute Jacobi iteration
        for(j = 1; j< n − 1; j++) 
            for(i = 1; i < nX − 1; i++) 
                ij = i + nX * j;
                a[ij] = (f(i,j) + dxxinv * (b[ij − 1] + b[ij + 1])
                + dyyinv * (b[ij − nX] + b[ij + nX])) * dcent;
            end
        end
            
        # Save and compute error if necessary
        outputanderror("jacobi out",a,k);
    end
end
