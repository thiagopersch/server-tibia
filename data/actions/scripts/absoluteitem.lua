function onUse(cid, item, fromPos, toPos)
    local coins = {1, 30} -- {quantia mínima, quantia máxima}
    local items = {
        2160, 2470, 7896, 8884, 2477, 7898, 2436, 4852, 8303, 9971, 8883, 11111,
        2476, 7897, 2400, 8886, 7891, 2444
    } -- {items}
    local mr = items[math.random(1, #items)]
    if mr == 2160 then
        doPlayerAddItem(cid, 2160, math.random(coins[1], #coins))
        doSendMagicEffect(fromPos, CONST_ME_GIFT_WRAPS)
        doCreatureSay(cid, 'Você abriu Cemetery Present!', TALKTYPE_ORANGE_1)
        doRemoveItem(item.uid, 1)
    else
        doPlayerAddItem(cid, mr, 1)
        doSendMagicEffect(fromPos, CONST_ME_GIFT_WRAPS)
        doCreatureSay(cid, 'Você abriu Cemetery Present!', TALKTYPE_ORANGE_1)
        doRemoveItem(item.uid, 1)
    end
    return true
end
