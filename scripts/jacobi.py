import helpers as hp
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

#takes q3data as input
def jacobi(A,b,N=25,x=None):

    # Create an initial guess if needed
    if x is None:
        x = np.zeros(len(A[0]))

    # Create a vector of the diagonal elements of A
    # and subtract them from A
    D = np.diag(A)
    R = A - np.diagflat(D)

    # Iterate for N times
    for i in range(N):
        x = (b - np.dot(R,x)) / D
    return x

b = np.array([11.0,13.0])
guess = np.array([1.0,1.0])

print(jacobi(inputMat,b,N=25,x=guess))