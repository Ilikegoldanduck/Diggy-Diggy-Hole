local map = {}

local level = {{}}

function map.initialize()
    for i = 0, 39, 1 do
        local temp = {}
        for v = 0, 22, 1 do
            table.insert(temp, 0)
        end
        table.insert(level, temp)
    end
end

function map.generate(x, y) -- starting position for player
    for i, v in ipairs(level) do
        for j, k in ipairs(v) do
            if i == x and y == j then
                level[i][j] = 1
            else
                level[i][j] = math.random(0, 1)
            end
        end
    end

    for i = 0, math.random(5, 7), 1 do
        local i, v = math.random(0, #level), math.random(0, #(level[1]))
        if i == x and y == v then
            i = i - 1
        else
            level[i][v] = -1
        end
    end

    local temp = true
    while temp do
        local i, v = math.random(0, #level), math.random(0, #(level[1]))
        if i ~= x or v ~= y then
            level[i][v] = 2
            temp = false
            pprint(i, v)
        end
    end
end

function map.getLevel()
    return level
end

function map.getTile(x, y)
    return level[x][y]
end

return map