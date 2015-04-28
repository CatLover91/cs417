import numpy as np
from sys import argv

script, filename = argv

txt = open(filename)

header = txt.readline().split()
inputArray = map(float, txt.readline().split())
txt.close()

inputMat = np.mat(inputArray)
inputMat.reshape(int(header[0]), int(header[1]))
inputMat.shape()

#takes q2data as input
def lu(A):
    #Decomposes a nxn matrix A by PA=LU and returns L, U and P.
    n = len(A)
    L = [[0.0] * n for i in xrange(n)]
    U = [[0.0] * n for i in xrange(n)]

    #Creates the pivoting matrix for m.
    n = len(A)
    ID = [[float(i == j) for i in xrange(n)] for j in xrange(n)]
    for j in xrange(n):
        row = max(xrange(j, n), key=lambda i: abs(A[i][j]))
        if j != row:
            ID[j], ID[row] = ID[row], ID[j]
    p = ID

    #perform matrix multplication
    TA = zip(*A)
    A2 = [[sum(eP*ea for eP,ea in zip(P,a)) for a in TA] for P in p]

    for j in xrange(n):
        L[j, j] = 1.0
        for i in xrange(j+1):
            s1 = sum(U[k, j] * L[i, k] for k in xrange(i))
            U[i, j] = A2[i, j] - s1
        for i in xrange(j, n):
            s2 = sum(U[k, j] * L[i, k] for k in xrange(j))
            L[i, j] = (A2[i, j] - s2) / U[j, j]
    return (L, U, p)

print lu(inputMat)