function onUse(cid, item, frompos, item2, topos)
    if item.uid == 10012 then
        if getPlayerStorageValue(cid, 10012) == -1 then
            doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Congratulations! You have gain the quest item.")
            local bag = doPlayerAddItem(cid, 1996, 1)
            doAddContainerItem(bag, 2511, 1)
            setPlayerStorageValue(cid, 10012, 1)
        else
            doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Sorry, the chest is empty.")
        end
        return true
    end
end
