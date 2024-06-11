-- local combat1 = createCombatObject()
-- setCombatParam(combat1, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
-- setCombatParam(combat1, COMBAT_PARAM_DISTANCEEFFECT, 101)
-- setCombatFormula(combat1, COMBAT_FORMULA_LEVELMAGIC, -10.0, 0, -35.0, 0)

-- local function onCastSpell1(parameters)
--     doCombat(parameters.cid, parameters.combat1, parameters.var)
-- end

-- function onCastSpell(cid, var)
--     local position1 = {
--         x = getThingPosition(getCreatureTarget(cid)).x,
--         y = getThingPosition(getCreatureTarget(cid)).y,
--         z = getThingPosition(getCreatureTarget(cid)).z
--     }
--     local parameters = {cid = cid, var = var, combat1 = combat1}

--     for k = 1, 10 do
--         addEvent(function()
--             if isCreature(cid) then
--                 addEvent(onCastSpell1, 1, parameters)
--                 doSendMagicEffect(position1, 317)
--             end
--         end, 1 + ((k - 1) * 200))
--     end
--     return true
-- end


-- Cria um objeto de combate para causar dano físico
local function createPhysicalDamageCombat()
    local combat = createCombatObject()
    setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
    setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, 101)
    setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -10.0, 0, -35.0, 0)
    return combat
end

-- Realiza o combate usando os parâmetros fornecidos
local function castSpell(parameters)
    doCombat(parameters.cid, parameters.combat, parameters.var)
end

function onCastSpell(cid, var)
    local targetPosition = getThingPosition(getCreatureTarget(cid))
    local position = {
        x = targetPosition.x,
        y = targetPosition.y,
        z = targetPosition.z
    }
    local parameters = { cid = cid, var = var, combat = createPhysicalDamageCombat() }

    for k = 1, 10 do
        addEvent(function()
            if isCreature(cid) then
                addEvent(castSpell, 1, parameters)
                doSendMagicEffect(position, 317)
            end
        end, 1 + ((k - 1) * 250))
    end
    return true
end
