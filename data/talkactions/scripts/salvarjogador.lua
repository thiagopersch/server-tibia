function onSay(cid, words, param, channel)

    local config = {
        s = 11548, -- n mexa
        exhau = 30 -- tempo em segundos para salvar denovo
    }

    if (getPlayerStorageValue(cid, config.s) <= os.time()) then
        doPlayerSave(cid)
        setPlayerStorageValue(cid, config.s, os.time() + config.exhau)
        doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "DBO - Your Character has been successfully saved!.")
    else
        doPlayerSendCancel(cid, "DBO - wait " .. config.exhau .. " seconds to save again.")
    end
    return TRUE
end
