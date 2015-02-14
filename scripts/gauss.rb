def gauss(theMatrix) 
    int i,j,ij,k;
    double error,u[m∗n],z;
    
    # Set initial guess to be identically zero
    for(ij=0;ij<m∗n;ij++) 
        u[ij]=0;
    end
    outputanderror("gsrb out",u,0);
    
    # Compute Red−Black Gauss−Seidel iteration
    for(k=1;k<=total iters;k++)
        
        for(j=1;j<n−1;j++) 
            for(i=1+(j&1);i<m−1;i+=2) 
                16ij=i+m∗j;
                u[ij]=(f(i,j)+dxxinv∗(u[ij−1]+u[ij+1])
                +dyyinv∗(u[ij−m]+u[ij+m]))∗dcent;
            end
        end
        
        for(j=1;j<n−1;j++) 
            for(i=2−(j&1);i<m−1;i+=2) 
                ij=i+m∗j;
                u[ij]=(f(i,j)+dxxinv∗(u[ij−1]+u[ij+1])
                +dyyinv∗(u[ij−m]+u[ij+m]))∗dcent;
            end
        end
        # Save the result and compute error if necessary
        outputanderror("gsrb out",u,k);
    end
end
