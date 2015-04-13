[[-- http://www.scilua.org/sci_alg.html--]]
require "bigdecimal"
require "bigdecimal/math"

class helper
    def initialize(precision)
        @prec = precision
        @pi = PI(precision)
        @omega = BigDecimal(2 / (1 + sin(2 * @pi / n)))
    end

    def aRandomNumber()
        result = Math.floor((Math.random() * 2000000) + 1);
        result = (result - 1000000) / 10000;
        result;
    end

    # Set grid size and number of iterations
    saveIters = 20
    totalIters = 200
    errorEvery = 2
    m = 33
    n = 33
    min = −1
    xmax = 1
    ymin = −1
    ymax = 1
    #  Compute useful constants

    dx = (xmax − xmin) / (nX − 1)
    dy = (ymax − ymin) / (ny − 1)
    dxxinv = 1 / (dx * dx)
    dyyinv = 1 / (dy * dy)
    dcent = 1 / (2 * (dxxinv + dyyinv))

    # Input function
    def f(i, j)
        x = xmin + i * dx
        y = ymin + j * dy
        return abs(x) > 0.5 || abs(y) > 0.5 ? 0 : 1;
    end

    # Common output and error routine
    def error(theMatrix)
        # Computes the error if sn%error every==0
        
    end
end