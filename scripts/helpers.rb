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
        return result;
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
    def outputAndError(filename, a, sn)
        # Computes the error if sn%error every==0
        if(sn % errorEvery == 0)
            z
            error = 0
            ij
            for(j=1; j < n − 1; j++)
                for(i = 1; i < nX − 1; i++)
                    ij = i + nX * j
                    z = f(i,j) − a[ij] * (2 * dxxinv + 2 * dyyinv)
                        + dxxinv * (a[ij − 1] + a[ij + 1])
                        + dyyinv * (a[ij − nX] + a[ij + nX])
                    error += z * z
                end
            end
            cout << sn << " " << error * dx * dy << endl;
        end
        # Saves the matrix if sn<=save iters
        if(sn <= save iters)
            int i,j,ij=0,ds=sizeof(float);
            float x,y,data float;
            const char ∗pfloat;
            pfloat=(const char∗)&data float;
            ofstream outfile;
            static char fname[256];
            sprintf(fname,"%s.%d",filename,sn);
            outfile.open(fname,fstream::out | fstream::trunc | fstream::binary);
            data float=m;
            outfile.write(pfloat,ds);
            for(i=0;i<m;i++)
                x=xmin+i∗dx;
                data float=x;
                outfile.write(pfloat,ds);
            end
            for(j=0;j<n;j++)
                y=ymin+j∗dy;
                data float=y;
                outfile.write(pfloat,ds);
                for(i=0;i<m;i++)
                    data float=a[ij++];
                    outfile.write(pfloat,ds);
                end
            end
            outfile.close();
        end
    end
end