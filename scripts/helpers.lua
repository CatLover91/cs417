function takeInput(fileLocation)
    local headers = {}
    local inputMatrix = {}
    local lines = 0
    for line in io.lines(fileLocation) do
        if lines == 0 then
            for w in line:gmatch("%w+") do table.insert(headers, w) end
            lines = lines + 1
        else
            local row = {}
            for n in line:gmatch("%w+") do table.insert(row, n) end
        	table.insert(inputMatrix, row)
        end
    end
    local outputObj = {}
    outputObj["headers"] = headers
    outputObj["mat"] = inputMatrix
    return outputObj
end

function logError(errorArg)

end

function performOutput(solvedMatrix)
    sf = string.format
    print(sf("The file had %d menus out of %d lines.", menus, lines))
end