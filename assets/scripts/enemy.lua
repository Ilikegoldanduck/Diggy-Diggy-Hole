local enemy = {}

local enemyHandler = {}

local enemyTypes = {
    {
        health = 4,
        damage = 1,
        range = 1,
        movement = 2
    },
    {
        health = 2,
        damage = 2,
        range = 5,
        movement = 1
    }
}

function enemy.create(type)
    local temp = {
        health = enemyTypes[type].health,
        damage = enemyTypes[type].damage,
        range = enemyTypes[type].range,
        movement = enemyTypes[type].movement
    }
    table.insert(enemyHandler, temp)
    return #enemyHandler
end

function enemy.move(id)
    return enemyHandler[id].movement
end

function enemy.damage(id, x)
    enemyHandler[id].health = enemyHandler[id].health - x
    if enemyHandler[id].health <= 0 then
        return true
    end
    return false
end

function enemy.attack(id)
    return enemyHandler[id].damage
end

function enemy.range(id)
    return enemyHandler[id].range
end

return enemy