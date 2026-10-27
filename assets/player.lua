local player = {}

local health = 10
local maxHealth = 10


function die()
    health = maxHealth
end

function heal(x)
    health = health + x
    if health > maxHealth then
        health = maxHealth
    end
end

function damage(x)
    health = health - x
end

function getHealth()
    return health
end

return player