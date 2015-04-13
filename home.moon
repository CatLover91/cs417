import math, diff, alg from sci

jacobi = (matrix) ->
    ij = theMatrix.x() * theMatrix.y()

    a = theMatrix.toArray()
    b = theMatrix.toArrayB()

    -- Set initial guess to be identically zero

    u = Array.new(ij, 0)
    v = Array.new(ij, 0)

    outputanderror "jacobi out", u, 0

    -- Carry out Jacobi iterations
    for k in [1..totaliters] by 1

        -- Alternately flip input and output matrices
        if k % 2 is 0
            a = u
            b = v
        else
            a = v
            b = u
        -- Compute Jacobi iteration
        for j in [1..(n-1)] by 1
            for i in [1..(nX-1)] by 1
                ij = i + nX * j
                a[ij] = (f(i,j) + dxxinv * (b[ij - 1] + b[ij + 1]) + dyyinv * (b[ij - nX] + b[ij + nX])) * d cent;

        # Save and compute error if necessary
        outputanderror "jacobi out", a, k

Gauss = (matrix) ->
    int i,j,ij,k;
    double error,u[m∗n],z;

    -- Set initial guess to be identically zero
    guessMat = (0 for [0...m*n])
    outputanderror "gsrb out", u, 0

    -- Compute Red−Black Gauss−Seidel iteration
    for k in [1..totaliters] by 1

        for j in [1..(n - 1)] by 1
            for i in [(1 + (j and 1))..(m-1)] by 2
                ij = i + m * j
                guessMat[ij] = (f(i,j) + dxxinv * (guessMat[ij - 1] + guessMat[ij + 1]) + dyyinv * (guessMat[ij - m]+guessMat[ij + m])) * dcent;

        for j in [1..(n - 1)] by 1
            for i in [(1 + (j and 1))..(m-1)] by 2
                ij = i + m * j
                guessMat[ij] = (f(i,j) + dxxinv * (guessMat[ij - 1] + guessMat[ij + 1]) + dyyinv * (guessMat[ij - m] + guessMat[ij + m])) * dcent;

        -- Save the result and compute error if necessary
        outputanderror "gsrb out", u, k
SOR = (matrix) ->
    int i,j,ij,k;
    double error,u[m∗n],z;

    -- Set initial guess to be identically zero
    u = (0 for [0...(m*n)])

    outputanderror "sor out", u, 0

    -- Compute SOR Red−Black iterations
    for k in [1..totaliters] by 1
        for j in [1..(n - 1)] by 1
            for i in [(1 + (j and 1))..(m-1)] by 2
                ij = i + m * j;
                u[ij] = u[ij] * (1 - omega) + omega * (f(i,j) + dxxinv * (u[ij - 1] + u[ij + 1]) + dyyinv * (u[ij - m] + u[ij + m])) * dcent;

        for j in [1..(n - 1)] by 1
            for i in [(1 + (j and 1))..(m-1)] by 2
                ij = i + m * j
                u[ij] = u[ij] * (1 - omega) + omega * (f(i,j) + dxxinv * (u[ij - 1] + u[ij + 1]) + dyyinv * (u[ij - m] + u[ij + m])) * dcent;

        -- Save the result and compute error if necessary
        outputanderror "sor out", u, k

Gauss-Elim = (matrix) ->

LU-Decomp = (matrix) ->

Bisect = (matrix) ->

RFM = (matrix) ->

Newton = (matrix) ->

basicInfo = ->
    print "input format: ./417parse [mode] [file]"
    print "Modes:"
    print "    -j  : Jacobi"
    print "    -g  : Gauss-Striedel"
    print "    -s  : Successive Over-Relaxation"
    print "    -ge : Gaussian Elimination"
    print "    -l  : LU-Decomposition"
    print "    -b  : Bisection"
    print "    -r  : Regula Falsi Method"
    print "    -n  : Newtons Method"

modeSelect = arg[0]
inputFile = arg[1]

switch modeSelect
    when "-j"
    when "-g"
    when "-s"
    when "-ge"
    when "-l"
    when "-b"
    when "-r"
    when "-n"
    else
        basicInfo!