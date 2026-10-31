local map = {}

local level = {}

function map.initialize()
    for i = 0, 39, 1 do
        local temp = {}
        for v = 0, 23, 1 do
            table.insert(temp, 0)
        end
        table.insert(level, temp)
    end
end

function map.generate(x, y, lvl) -- starting position for player
    math.randomseed(lvl)

    for i, v in ipairs(level) do
        for j, k in ipairs(v) do
            level[i][j] = math.random(0, 1)
        end
    end

    for i = 0, math.random(5, 7), 1 do
        local i, v = math.random(1, #level), math.random(1, #(level[1]))
        if i == x and y == v then
            i = i - 1
        else
            level[i][v] = math.random(-2, -1)
        end
    end

    local temp = true
    while temp do
        local i, v = math.random(1, #level), math.random(1, #(level[1]))
        if i ~= x or v ~= y then
            level[i][v] = 2
            temp = false
            pprint(i, v)
        end
    end

    for i, k in ipairs(level) do
        for o, l in ipairs(k) do
            if l == 1 and math.random(0, 19) == 0 then
                level[i][o] = -3
            end
        end
    end

    level[x][y] = 1
end

function map.getLevel()
    return level
end

function map.getTile(x, y)
    return level[x][y]
end

function map.destroyTile(x, y)
    level[x][y] = 1
end

return map