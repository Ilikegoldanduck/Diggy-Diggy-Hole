local map = {}

local level = {{}}

local function generate()
    for i = 0, 40, 1 do
        for v = 0, 24, 1 do
            level[i][v] = math.random(0, 1)
        end
    end

    for i = 0, math.random(5, 7), 1 do
        level[math.random(0, 40)][math.random(0, 24)] = -1
    end
end

local function getLevel()
    return level
end

return map