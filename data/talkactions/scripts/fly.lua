function onSay(cid, words, param)

    local config = {
        pz = false, -- players precisam estar em protection zone para usar? (true or false)
        battle = true, -- players deve estar sem battle? (true or false)
        custo = false, -- precisa de dinheiro para teleportar? (true or false)
        need_level = true, -- n�vel necessario para usar o comando (true or false)
        vip = false -- se precisa ser vip account ou premium account (true or false)
    }

    --[[ Config lugares]] -- level � o nivel necessario para usar o comando, e price � o dinheiro necessario para usar o comando
    local lugar = {
        ["templo"] = { -- nome do lugar
            pos = {x = 1027, y = 1026, z = 7},
            level = 50,
            price = 0
        },
    }

    --[[ Lista de Viagem (N�o mexa) ]] --
    if (param == "list") then
        local str = ""
        str = str .. "Citys list:\n\n"
        for name, pos in pairs(lugar) do str = str .. name .. "\n" end
        str = str .. ""
        doShowTextDialog(cid, 6579, str)
        return TRUE
    end

    local a = lugar[param]
    if not (a) then
        doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE,"Sorry, this place doesn't exist")
        doSendMagicEffect(getCreaturePosition(cid), CONST_ME_POFF)
        return TRUE
    elseif config.pz == true and getTilePzInfo(getCreaturePosition(cid)) ==
        FALSE then
        doPlayerSendTextMessage(cid, MESSAGE_STATUS_WARNING,"You must be in a protected zone.")
        return TRUE
    elseif config.vip == true and isPremium(cid) == false then -- Se voc� tiver um sistema de VIP, pegar o comando isVip, ou algo semelhante e trocar por isPremium
        doPlayerSendTextMessage(cid, MESSAGE_EVENT_DEFAULT,"Only premium players can teleport, say !buypremium")
        return TRUE
    elseif config.battle == true and
        getCreatureCondition(cid, CONDITION_INFIGHT) == TRUE then
        doPlayerSendTextMessage(cid, MESSAGE_STATUS_WARNING,"You need to be out of combat.")
        return TRUE
    elseif config.need_level == true and getPlayerLevel(cid) < a.level then
        doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE,"You need to be level " .. a.level .. " to teleport.")
        doSendMagicEffect(getCreaturePosition(cid), CONST_ME_POFF)
        return TRUE
    elseif config.custo == true and doPlayerRemoveMoney(cid, a.price) == FALSE then
        doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE,"You need to " .. a.price .. " gold bar's to teleport.")
        doSendMagicEffect(getCreaturePosition(cid), CONST_ME_POFF)
        return TRUE
    end
    doTeleportThing(cid, a.pos)
    doSendMagicEffect(a.pos, CONST_ME_TELEPORT)
    doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You have been teleported to " .. param .. ".")
    return TRUE
end
