function jacobi(theMatrix)
    local ij = theMatrix.x() * theMatrix.y()

    local a = theMatrix.toArray()
    local b = theMatrix.toArrayB()

    -- Set initial guess to be identically zero

    local u = Array.new(ij, 0)
    local v = Array.new(ij, 0)

    logError("jacobi out", u, 0)

    -- Carry out Jacobi iterations
    for k = 1, totaliters do

        -- Alternately flip input and output matrices
        if k % 2 == 0
            a, b = u, v
        else
            a, b = v, u
        end
        -- Compute Jacobi iteration
        for j = 1..(n-1) do
            for i = 1, nX - 1 do
                ij = i + nX * j
                a[ij] = (f(i,j) + dxxinv * (b[ij - 1] + b[ij + 1]) + dyyinv * (b[ij - nX] + b[ij + nX])) * d cent;
            end
        end
        -- Save and compute error if necessary
        logError("jacobi out", a, k)
    end
end
