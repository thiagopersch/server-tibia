function onUse(cid, item, fromPosition, itemEx, toPosition)
    ITEM = 2671
    local storage = 50000
    local wait = 0.2
    local pos1 = {
        x = getPlayerPosition(cid).x,
        y = getPlayerPosition(cid).y,
        z = getPlayerPosition(cid).z
    }
    if fromPosition.x ~= CONTAINER_POSITION and exhaustion.get(cid, storage) ==
        FALSE then
        REG_HEALTH = 0
        REG_MANA = 5000
        doPlayerAddMana(cid, REG_MANA)
        doCreatureAddHealth(cid, REG_HEALTH)
        doSendAnimatedText(getPlayerPosition(cid), "Aaahhh!", 180)
        doSendMagicEffect(pos1, 12)
        doRemoveItem(item.uid, 1)
        exhaustion.set(cid, storage, wait)
    elseif item.itemid == ITEM and exhaustion.get(cid, storage) == FALSE then
        REG_HEALTH = 0
        REG_MANA = 5000
        doPlayerAddMana(cid, REG_MANA)
        doCreatureAddHealth(cid, REG_HEALTH)
        doSendAnimatedText(getPlayerPosition(cid), "Aaahhh!", 180)
        doSendMagicEffect(pos1, 12)
        doRemoveItem(item.uid, 1)
        exhaustion.set(cid, storage, wait)
    else
        doPlayerSendCancel(cid, "You are exhausted.")
    end
    return TRUE
end
