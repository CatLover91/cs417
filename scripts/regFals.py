import math
from operator import idiv
#Use reg-falsi to solve for the root of:
# f(x) = x + ln(x)
#It is known that the solution lies between 0.1 and 1.0
#Print out your solution  at each iteration.

# answer is ~0.568
def f(x):
   return x + math.log1p(x)

def regFalsi(f, lower, upper, tolerance=0.00001, m=100):
    side = 0
    # starting values at endpoints of interval
    fl = f(lower);
    fu = f(upper);

    for n in range(0, m):
        r = (fl * upper - fu * lower) / (fl - fu)
        if(abs(upper - lower) < tolerance * abs(upper + lower)):
            break
        fr = f(r)

        if (fr * fu > 0):
            upper = r
            fu = fr
            if (side == -1):
                fl = idiv(fl, 2)
            side = -1
        elif (fl * fr > 0):
            lower = r
            fl = fr
            if (side == 1):
                fu = idiv(fu, 2)
            side = 1
        else:
            break
    return r

answer = regFalsi(f, 0.1, 1.0)

print answer