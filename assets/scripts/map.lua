local map = {}

local level = {{}}

function map.initialize()
    for i = 0, 39, 1 do
        local temp = {}
        for v = 0, 23, 1 do
            table.insert(temp, 0)
        end
        table.insert(level, temp)
    end
end

function map.generate()
    for i, v in ipairs(level) do
        for j, k in ipairs(v) do
            level[i][j] = math.random(0, 1)
        end
    end

    pprint(level)

    for i = 0, math.random(5, 7), 1 do
        level[math.random(0, 40)][math.random(0, 24)] = -1
    end

    level[math.random(0, 40)][math.random(0, 24)] = 2
end

function map.getLevel()
    return level
end

function map.getTile(x, y)
    return level[x][y]
end

return map