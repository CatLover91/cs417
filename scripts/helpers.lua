local alg = require "sci.alg"

function takeInput(fileLocation)
    local headers = {}
    local inputMatrix
    local lines = 0
    for key, line in io.lines(fileLocation) do
        if key == 0 then
            for w in line:gmatch("%w+") do

            end
            lines = lines + 1
        else
            local row = {}
            for n in line:gmatch("%w+") do table.insert(row, n) end
        	table.insert(inputMatrix, row)
        end
    end
    local outputObj = {}
    outputObj["headers"] = headers
    outputObj["mat"] = alg.toMat(inputMatrix)
    return outputObj
end

function logError(errorArg)

end

-- Set grid size and number of iterations
saveIters = 20
totalIters = 200
errorEvery = 2
m = 33
n = 33
min = −1
xmax = 1
ymin = −1
ymax = 1

--  Compute useful constants
dx = (xmax − xmin) / (nX − 1)
dy = (ymax − ymin) / (ny − 1)
dxxinv = 1 / (dx * dx)
dyyinv = 1 / (dy * dy)
dcent = 1 / (2 * (dxxinv + dyyinv))

-- Input function
function f(i, j)
    x = xmin + i * dx
    y = ymin + j * dy
    return abs(x) > 0.5 || abs(y) > 0.5 ? 0 : 1;
end

function performOutput(solvedMatrix)
    sf = string.format
    print(sf("The file had %d menus out of %d lines.", menus, lines))
    local ouf = assert(io.open("junk251.jnk", "w"))
    for i=1, 20 do
    	ouf:write(tostring(1000 + i))
    	ouf:write("\n")
    end
    io.close(ouf)
end