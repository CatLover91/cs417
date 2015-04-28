import math
#Use bisection to solve for the root of:
# f(x) = x + ln(x)
#It is known that the solution lies between 0.1 and 1.0
#Print out your solution  at each iteration.
def f(x):
    return x + math.log1p(x)

def bisect(f, lower, upper, tolerance=1.0e-7):
    mid = (lower + upper) / 2.0
    while (upper - lower) / 2.0 > tolerance:
        if f(mid) == 0:
            return mid
        elif f(lower) * f(mid) < 0:
            upper = mid
        else :
            lower = mid
        mid = (lower + upper) / 2.0
        print mid
    return mid

x = bisect(f, 0.1, 1.0) #running the bisection function for the function 'func'

print x
