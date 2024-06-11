function onDeath(cid, corpse, deathList)
    local ID_ITEM = 2173
    if (getPlayerSlotItem(cid, CONST_SLOT_NECKLACE).itemid == ID_ITEM) then
        doPlayerRemoveItem(cid, ID_ITEM, 1)
        doCreatureSetDropLoot(cid, false)
        doPlayerSetLossPercent(cid, experience, 5)
    end
    return true
end
