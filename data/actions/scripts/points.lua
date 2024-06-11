local cfg = {amount = 10}

function onUse(cid, item, fromPosition, itemEx, toPosition)

    if getPlayerLevel(cid) > 8 then
        doAccountAddPoints(cid, cfg.amount)
        doCreatureSay(cid, "Parabens! Voce recebeu 10 Premium Points! ",
                      TALKTYPE_ORANGE_1)
        doSendMagicEffect(getCreaturePosition(cid), 28)
        doRemoveItem(item.uid, 1)
    else
        doPlayerSendCancel(cid, "Voce precisa de level 8 para usar este item.")
    end
    return TRUE
end
