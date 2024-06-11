function onUse(cid, item, frompos, item2, topos)
    if item.uid == 10006 then
        if getPlayerStorageValue(cid, 10006) == -1 then
            doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Congratulations! You have gain the quest item.")
            local bag = doPlayerAddItem(cid, 2003, 1)
            doAddContainerItem(bag, 7407, 1)
            setPlayerStorageValue(cid, 10006, 1)
        else
            doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Sorry, the chest is empty.")
        end
        return true
    end
end
