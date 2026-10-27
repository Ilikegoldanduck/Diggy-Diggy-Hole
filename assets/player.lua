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
        cd = 2,
        cdTracker = 0
    }
}

local movement = 3

function start()
    health = maxHealth
    for i, v in ipairs(attack) do
        attack[i].cdTracker = 0
        attack[i].pp = attack[i].ppMax
    end
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

function getAvailable(atk)
    if attack[atk].pp == 0 then
        return "pp"
    elseif attack[atk].cdTracker < attack[atk].cd then
        return "cd"
    end
    return "avail"
end

function attack(atk)
    if attack[atk].pp > 0 then
        attack[atk].pp = attack[atk].pp - 1
    end
    attack[atk].cdTracker = 0
    return attack[atk].damage
end

function newTurn()
    for i, v in ipairs(attack) do
        attack[atk].cdTracker = attack[atk].cdTracker + 1
    end
end

return player