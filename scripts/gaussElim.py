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

#takes q1data as input
def gaussElim(A):
    n = len(A)

    for i in range(0, n):
        # Search for maximum in this column
        maxEl = abs(A[i, i])
        maxRow = i
        for k in range(i+1, n):
            if abs(A[k, i]) > maxEl:
                maxEl = abs(A[k, i])
                maxRow = k

        # Swap maximum row with current row (column by column)
        for k in range(i, n+1):
            tmp = A[maxRow, k]
            A[maxRow, k] = A[i, k]
            A[i, k] = tmp

        # Make all rows below this one 0 in current column
        for k in range(i + 1, n):
            c = -A[k, i] / A[i, i]
            for j in range(i, n+1):
                if i == j:
                    A[k, j] = 0
                else:
                    A[k, j] += c * A[i, j]

    # Solve equation Ax=b for an upper triangular matrix A
    x = [0 for i in range(n)]
    for i in range(n-1, -1, -1):
        x[i] = A[i, n]/A[i, i]
        for k in range(i-1, -1, -1):
            A[k, n] -= A[k, i] * x[i]
    return x

print gaussElim(inputMat)