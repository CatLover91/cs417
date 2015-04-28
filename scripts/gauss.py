import numpy as np
from sys import argv
from scipy.linalg import solve

script, filename = argv

txt = open(filename)

header = txt.readline().split()
inputArray = map(float, txt.readline().split())
txt.close()

inputMat = np.mat(inputArray)
inputMat.reshape(int(header[0]), int(header[1]))
inputMat.shape()

b = [1.0, 2.0, 3.0] #?????
x = [1, 1, 1]

n = 20

#takes q4data as input
def gauss(A, b, x, n):

    L = np.tril(A)
    U = A - L
    for i in range(n):
        x = np.dot(np.linalg.inv(L), b - np.dot(U, x))
        print str(i).zfill(3),
        print(x)
    return x




print gauss(inputMat, b, x, n)
print solve(inputMat, b)