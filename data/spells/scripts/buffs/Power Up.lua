local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, false)

local condition = createConditionObject(CONDITION_ATTRIBUTES)
setConditionParam(condition, CONDITION_PARAM_TICKS, 30000)
setConditionParam(condition, CONDITION_PARAM_SKILL_FIST, 5)
setConditionParam(condition, CONDITION_PARAM_SKILL_CLUB, 5)
setConditionParam(condition, CONDITION_PARAM_SKILL_SWORD, 5)
setConditionParam(condition, CONDITION_PARAM_SKILL_AXE, 5)
setConditionParam(condition, CONDITION_PARAM_SKILL_DISTANCE, 5)
setConditionParam(condition, CONDITION_PARAM_SKILL_SHIELD, 5)
setConditionParam(condition, CONDITION_PARAM_STAT_MAGICLEVEL, 5)
setConditionParam(condition, CONDITION_PARAM_BUFF, true)
setCombatCondition(combat, condition)

function onCastSpell(cid, var)
    if exhaustion.check(cid, 13101) == TRUE then
        doPlayerSendCancel(cid, "Please wait 60 seconds to use the spell again.")
        doSendMagicEffect(getCreaturePosition(cid), 2)
        return false
    end
    for k = 1, 60 do
        addEvent(function()
            if isCreature(cid) then
                local pos1 = {
                    x = getPlayerPosition(cid).x + 0,
                    y = getPlayerPosition(cid).y + 0,
                    z = getPlayerPosition(cid).z
                }
                doSendMagicEffect(pos1, 162)
            end
        end, 1 + ((k - 1) * 500))
    end
    exhaustion.set(cid, 13101, 30.0)
    return doCombat(cid, combat, var)
end
