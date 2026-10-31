local enemy = {}

local enemyHandler = {}

local enemyTypes = {
    {
        id = 1,
        health = 4,
        damage = 1,
        range = 1,
        movement = 3
    },
    {
        id = 2,
        health = 2,
        damage = 2,
        range = 5,
        movement = 1
    }
}

function enemy.create(type, pos)
    local temp = {
        id = enemyTypes[type].id,
        health = enemyTypes[type].health,
        damage = enemyTypes[type].damage,
        range = enemyTypes[type].range,
        movement = enemyTypes[type].movement,
        position = pos
    }
    table.insert(enemyHandler, temp)
    return #enemyHandler
end

--ONLY DO THIS IF EVERY SINGLE ENEMY IS GONE FROM THE LEVEL
function enemy.reset()
    enemyHandler = {}
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

function enemy.getid(i)
    return enemyHandler[i].id
end

function enemy.pos(id)
    return enemyHandler[id].position
end

function enemy.changePos(id, pos)
    enemyHandler[id].position = pos
end

return enemy