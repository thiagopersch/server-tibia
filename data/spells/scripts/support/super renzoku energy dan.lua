local combat1 = createCombatObject()
setCombatParam(combat1, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
setCombatParam(combat1, COMBAT_PARAM_EFFECT, 37)
setCombatParam(combat1, COMBAT_PARAM_DISTANCEEFFECT, 124)
setCombatFormula(combat1, COMBAT_FORMULA_LEVELMAGIC, -20.0, 0, -70.0, 0)

local function onCastSpell1(parameters)
    doCombat(parameters.cid, parameters.combat1, parameters.var)
end

function onCastSpell(cid, var)
    local parameters = {cid = cid, var = var, combat1 = combat1}

    for k = 1, 3 do
        addEvent(function()
            if isCreature(cid) then
                addEvent(onCastSpell1, 1, parameters)
            end
        end, 1 + ((k - 1) * 200))
    end
    return true
end
