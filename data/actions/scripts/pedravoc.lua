--[[Script made 100% by Night Wolf
                              for churupetinha at tibiaking ~~~ enjoy it]] function onUse(
    cid, item, frompos, item2, topos)
    local config = {
        idpedra = 2178 -- id do item
    }
    if item.itemid == config.idpedra then
        if getPlayerVocation(cid) <= 606 then
            doRemoveItem(item.uid, 1)
            doPlayerSetVocation(cid, getPlayerVocation(cid) + 4)
            doSendMagicEffect(config.pos, math.random(28, 30)) -- aqui � a parte do efeito, coloquei um random entre o efeito 28~30 que s�o os fogos de artificio
            doPlayerSendTextMessage(cid, 22, "You are now a " ..
                                        getPlayerVocationName(cid) .. "!")
        else
            doPlayerSendTextMessage(cid, 22,
                                    "You can't be promoted since you're already a " ..
                                        getPlayerVocationName(cid) .. "!")
        end
    else
    end
    return true
end
