function onUse(cid, item, frompos, item2, topos)
    if item.uid == 12315616 then
        if getPlayerStorageValue(cid, 12315616) == -1 then
            doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Congratulations! You have gain the quest item.")
            local bag = doPlayerAddItem(cid, 1990, 1)
            doAddContainerItem(bag, 2128, 5)
            setPlayerStorageValue(cid, 12315616, 1)
        else
            doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Sorry, the chest is empty.")
        end
        return true
    end
end
