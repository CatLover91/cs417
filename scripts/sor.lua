function sor(theMatrix)
    local i,j,ij,k;
    local error,u[m∗n],z;

    -- Set initial guess to be identically zero
    local u = (0 for [0...(m*n)])

    local logError("sor out", u, 0)

    -- Compute SOR Red−Black iterations
    for k = 1, totaliters do
        for j = 1, n - 1 do
            for i = 1 + (j and 1), m - 1, 2 do
                ij = i + m * j;
                u[ij] = u[ij] * (1 - omega) + omega * (f(i,j) + dxxinv * (u[ij - 1] + u[ij + 1]) + dyyinv * (u[ij - m] + u[ij + m])) * dcent;
            end
        end
        for j = 1, n - 1 do
            for i = 1 + (j and 1), m - 1, 2 do
                ij = i + m * j
                u[ij] = u[ij] * (1 - omega) + omega * (f(i,j) + dxxinv * (u[ij - 1] + u[ij + 1]) + dyyinv * (u[ij - m] + u[ij + m])) * dcent;
            end
        end
        -- Save the result and compute error if necessary
        logError("sor out", u, k)
    end
end