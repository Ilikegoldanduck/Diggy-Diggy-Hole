local player = {}

local health = 10
local maxHealth = 10

local attack = {
    {
        damage = 1,
        pp = -1,
        ppMax = -1,
        cd = 0,
        cdTracker = 0
    },
    {
        damage = 10,
        pp = 3,
        ppMax = 3,
        cd = 3,
        cdTracker = 0
    }
}

local movement = 3

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

function getPP(atk)
    return attack[atk].pp
end

function attack(atk)
    if attack[atk].pp > 0 then
        attack[atk].pp = attack[atk].pp - 1
    end
    return attack[atk].damage
end

return player