function newton()
    --These choices depend on the problem being solved
    x0 = 1                      --The initial value
    f = @(x) x^2 - 2            --The function whose root we are trying to find
    fprime = @(x) 2*x           --The derivative of f(x)
    tolerance = 10^(-7)         --7 digit accuracy is desired
    epsilon = 10^(-14)          --Don't want to divide by a number smaller than this

    maxIterations = 20          --Don't allow the iterations to continue indefinitely
    haveWeFoundSolution = false --Have not converged to a solution yet

    for i = 1, maxIterations do

        y = f(x0)
        yprime = fprime(x0)

        if(abs(yprime) < epsilon)                         --Don't want to divide by too small of a number
            % denominator is too small
            break;                                        --Leave the loop
        end

        x1 = x0 - y/yprime                                --Do Newton's computation

        if(abs(x1 - x0)/abs(x1) < tolerance)              --If the result is within the desired tolerance
            haveWeFoundSolution = true
            break;                                        --Done, so leave the loop
        end

        x0 = x1                                           --Update x0 to start the process again

    end

    if (haveWeFoundSolution)
       ... -- x1 is a solution within tolerance and maximum number of iterations
    else
       ... -- did not converge
    end
end
