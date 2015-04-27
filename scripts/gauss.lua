function gauss(theMatrix)
    local i,j,ij,k;
    local error,u[m∗n],z;

    -- Set initial guess to be identically zero
    local guessMat = (0 for [0...m*n])
    logError("gsrb out", u, 0)

    -- Compute Red−Black Gauss−Seidel iteration
    for k = 1, totaliters do

        for j = 1, n - 1 do
            for i = (1 + (j and 1)), m - 1, 2 do
                ij = i + m * j
                guessMat[ij] = (f(i,j) + dxxinv * (guessMat[ij - 1] + guessMat[ij + 1]) + dyyinv * (guessMat[ij - m]+guessMat[ij + m])) * dcent;
            end
        end

        for j = 1, n - 1 do
            for i = (1 + (j and 1)), m - 1, 2 do
                ij = i + m * j
                guessMat[ij] = (f(i,j) + dxxinv * (guessMat[ij - 1] + guessMat[ij + 1]) + dyyinv * (guessMat[ij - m] + guessMat[ij + m])) * dcent;
            end
        end

        -- Save the result and compute error if necessary
        logError("gsrb out", u, k)
    end
end
