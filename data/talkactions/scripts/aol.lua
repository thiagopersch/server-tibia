function onSay(cid, words, param)
    if doPlayerRemoveMoney(cid, 50000) then
        doPlayerAddItem(cid, 2173, 1)
        doSendMagicEffect(getThingPos(cid), 9)
        doCreatureSay(cid, "You bought the amulet", TALKTYPE_ORANGE_1)
    else
        doPlayerSendCancel(cid, "You not have money.")
        doSendMagicEffect(getThingPos(cid), 2)
    end
    return true
end
