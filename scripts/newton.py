# coding: utf-8
#Solve the following polynomial using Newton’s method.
# X4 + 2x3 -9x2 -2x +8 = 0
#For a root that lies between x=-2 and x= -10.
#Print out for each iteration the current x, stop when the solution is within 10-5

#function described in problem
def f(x):
    return x**4 + 2*x**3 - 9*x**2 - 2*x + 8

def derivative(f):
    def compute(x, dx):
        return (f(x+dx) - f(x)) / dx
    return compute

#tolerance set to 10**-5
def newtons_method(f, x, dx=0.00001, tolerance=0.00001):
    df = derivative(f)
    while True:
        x1 = x - f(x)/df(x, dx)
        t = abs(x1 - x)
        if t < tolerance:
            break
        x = x1
        print x
    return x



x_approx = -6  # rough guess

# f refers to the function f(x)
x = newtons_method(f, x_approx)

print("Solve for x in x**4 + 2*x**3 - 9*x**2 - 2*x + 8 = 0")
print("x = %0.12f" % x)
''' result ...
Solve for x in 3*x**5 - 2*x**3 + 1*x - 37 = 0
x = 1.722575335786
'''