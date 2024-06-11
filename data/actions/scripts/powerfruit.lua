local condition = createConditionObject(CONDITION_ATTRIBUTES)
setConditionParam(condition, CONDITION_PARAM_TICKS, 60 * 1000)
setConditionParam(condition, CONDITION_PARAM_STAT_MAGICPOINTS, 15)
setConditionParam(condition, CONDITION_PARAM_BUFF, TRUE)
local text = "Aaahhh! Me sinto mais poderoso!"
 function onUse(cid, item, frompos, item2, topos)
if(isInArray({357,358,359,360,361,362,363}, getPlayerVocation(cid)) == TRUE) and (getPlayerLevel(cid)>=400) then
var = numberToVariant(cid)
local pos1 = {x = getPlayerPosition(cid).x + 1, y = getPlayerPosition(cid).y + 0, z = getPlayerPosition(cid).z}
efeito = doSendMagicEffect(pos1, 78)
doTargetCombatCondition(0, cid, condition, efeito)
doCreatureSay(cid, text, 19)
doRemoveItem(item.uid, 1)
else
doPlayerSendCancel(cid, "Voce precisa ser da vocação Turles Reborn LvL 400+ para usar este item.")
doSendMagicEffect(getPlayerPosition(cid),2)
return true
end
end