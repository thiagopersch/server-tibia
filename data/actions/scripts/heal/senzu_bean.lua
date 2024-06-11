function onUse(cid, item, fromPosition, itemEx, toPosition)
    ITEM = 2674
    local storage = 50000
    local wait = 1.5
    local pos1 = {
        x = getPlayerPosition(cid).x,
        y = getPlayerPosition(cid).y,
        z = getPlayerPosition(cid).z
    }
    if fromPosition.x ~= CONTAINER_POSITION and exhaustion.get(cid, storage) ==
        FALSE then
        REG_HEALTH = 30000
        REG_MANA = 30000
        doPlayerAddMana(cid, REG_MANA)
        doCreatureAddHealth(cid, REG_HEALTH)
        doCreatureSay(cid, 'Aaahhh!', TALKTYPE_ORANGE_1)
        doSendMagicEffect(pos1, 101)
        doRemoveItem(item.uid, 0)
        exhaustion.set(cid, storage, wait)
    elseif item.itemid == ITEM and exhaustion.get(cid, storage) == FALSE then
        REG_HEALTH = 30000
        REG_MANA = 30000
        doPlayerAddMana(cid, REG_MANA)
        doCreatureAddHealth(cid, REG_HEALTH)
        doCreatureSay(cid, 'Aaahhh!', TALKTYPE_ORANGE_1)
        doSendMagicEffect(pos1, 101)
        doRemoveItem(item.uid, 0)
        exhaustion.set(cid, storage, wait)
    else
        doPlayerSendCancel(cid, "You are exhausted.")
    end
    return TRUE
end
