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

    local multi = math.log(lvl, 8)

    for i, v in ipairs(level) do
        for j, k in ipairs(v) do
            if math.random() < (.5 * math.pow(1.95, -multi) + .5) then
                level[i][j] = math.random(0, 1)
            else
                level[i][j] = math.random(3, 4)
            end
        end
    end


    for i = 0, math.random(5 + multi, 7 + multi), 1 do
        local i, v = math.random(1, #level), math.random(1, #(level[1]))
        if (i == x and y == v) or level[i][v] < 0 then
            i = i - 1
        else
            level[i][v] = math.random(-2, -1)
        end
    end

    for i = 0, multi * 2, 1 do
        local i, v = math.random(1, #level), math.random(1, #(level[1]))
        if (i == x and y == v) or level[i][v] < 0 then
            i = i - 1
        else 
            level[i][v] = -3
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
            if l == 1 and math.random(0, 29) == 0 then
                level[i][o] = -4
            end
        end
    end

    level[x][y] = 1
end

function map.getLevel()
    return level
end

function map.getTile(x, y)
    return level[x][y] or -10
end

function map.destroyTile(x, y)
    level[x][y] = 1
end

return map