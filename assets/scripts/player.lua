local player = {}

local health = 10
local maxHealth = 10

local attack = {
    {
        damage = 3,
        cd = 0,
        cdTracker = 0,
        range = 1
    },
    {
        damage = 10,
        cd = 2,
        cdTracker = 0,
        range = 5
    }
}

local movement = 4
local movesDone = 4

local playerPos = {0, 0}

function player.start()
    health = maxHealth
    for i, v in ipairs(attack) do
        attack[i].cdTracker = 0
    end
end

function player.heal(x)
    health = health + x
    if health > maxHealth then
        health = maxHealth
    end
end

function player.damage(x)
    health = health - x
end

function player.getHealth()
    return health
end

function player.getAvailable(atk)
    if attack[atk].cdTracker < attack[atk].cd then
        return "cd"
    end
    return "avail"
end

function player.attack(atk)
    attack[atk].cdTracker = 0
    return attack[atk].damage
end

function player.newTurn()
    movesDone = movement
    for i, v in ipairs(attack) do
        attack[atk].cdTracker = attack[atk].cdTracker + 1
    end
end

function player.doMove()
    movesDone = movesDone - 1
end

function player.getMoves()
    return movesDone
end

function player.getCD()
    return attack[2].cd - attack[2].cdTracker
end

function player.resetCD()
    attack[2].cdTracker = 0
end

return player