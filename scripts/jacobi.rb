def jacobi() 
    int i,j,ij,k;
    double error,u[m∗n],v[m∗n],z;
    double ∗a,∗b;

    # Set initial guess to be identically zero
    for(ij=0;ij<m∗n;ij++) 
        u[ij]=v[ij]=0;
    end
    outputanderror("jacobi out",u,0);

    # Carry out Jacobi iterations
    for(k=1;k<=totaliters;k++)
        
        # Alternately flip input and output matrices
        if (k%2==0) {a=u;b=v;} else {a=v;b=u;}
            
        # Compute Jacobi iteration
        for(j=1;j<n−1;j++) 
            for(i=1;i<m−1;i++) 
                ij=i+m∗j;
                a[ij]=(f(i,j)+dxxinv∗(b[ij−1]+b[ij+1])
                +dyyinv∗(b[ij−m]+b[ij+m]))∗dcent;
            end
        end
            
        # Save and compute error if necessary
        outputanderror("jacobi out",a,k);
    end
end
