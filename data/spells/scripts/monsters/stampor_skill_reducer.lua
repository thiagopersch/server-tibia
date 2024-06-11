local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_SMALLPLANTS)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_POISON)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -10.0, 0, -35.0, 0)

local condition = Condition(CONDITION_ATTRIBUTES)
condition:setParameter(CONDITION_PARAM_TICKS, 25000)
condition:setParameter(CONDITION_PARAM_SKILL_DISTANCEPERCENT, i)
condition:setParameter(CONDITION_PARAM_SKILL_MELEEPERCENT, i)

local function onCastSpell1(parameters)
    doCombat(parameters.cid, parameters.combat, parameters.var)
end

function onCastSpell(cid, var)
    local position1 = {
        x = getThingPosition(getCreatureTarget(cid)).x,
        y = getThingPosition(getCreatureTarget(cid)).y,
        z = getThingPosition(getCreatureTarget(cid)).z
    }
    local parameters = {cid = cid, var = var, combat = combat}

    for k = 1, 1 do
        addEvent(function()
            if isCreature(cid) then
                addEvent(onCastSpell1, 1, parameters)
                doSendMagicEffect(position1, 62)
            end
        end, 1 + ((k - 1) * 200))
    end
    return true
end
