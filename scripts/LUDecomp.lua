function matrixMul(A, B):
    TB = zip(*B)
    return [(sum(ea*eb for ea,eb in zip(a,b)) for b in TB) for a in A]
end

function pivotize(m):
    --Creates the pivoting matrix for m."""
    n = m:nrow()
    ID = [(float(i == j) for i in xrange(n)) for j in xrange(n)]
    for j in xrange(n) do
        row = max(xrange(j, n), key=lambda i: abs(m[i][j]))
        if(j != row)
            ID[j], ID[row] = ID[row], ID[j]
        end
    end
    return ID
end

function lu(A):
    --Decomposes a nxn matrix A by PA=LU and returns L, U and P.
    n = len(A)
    L = [(0.0) * n for i in xrange(n)]
    U = [(0.0) * n for i in xrange(n)]
    P = pivotize(A)
    A2 = matrixMul(P, A)
    for j in xrange(n) do
        L[j][j] = 1.0
        for i in xrange(j+1):
            s1 = sum(U[k][j] * L[i][k] for k in xrange(i))
            U[i][j] = A2[i][j] - s1
        for i in xrange(j, n):
            s2 = sum(U[k][j] * L[i][k] for k in xrange(j))
            L[i][j] = (A2[i][j] - s2) / U[j][j]
    return (L, U, P)

b = [[11,9,24,2],[1,5,2,6],[3,17,18,1],[2,5,7,1]]
for part in lu(b):
    pprint(part)
    print