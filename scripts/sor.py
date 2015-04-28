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
def sor(A):
    # takes q5data as input
    A = [0.8 -0.4 0; -0.4 0.8 -0.4; 0 -0.4 0.8];
    b = [41; 25; 105];

    # error tolerance

    tol = 0.05;

    #initial guess:
    x0 = zeros(3,1);


    #SOR
    #---------------

    lambda=1.15;
    n=length(x0);
    x=x0;
    error=1;
    iter = 0;
    while (error>tol & iter<maxiter)
        xold=x;
        for i=1:n
            I = [1:i-1 i+1:n];
            x(i) = (1-lambda)*x(i)+lambda/A(i,i)*( b(i)-A(i,I)*x(I) );
        end
        error = norm(x-xold)/norm(x);
        iter = iter+1;
    end

x_SOR=x