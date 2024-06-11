function onUse(cid, item, frompos, item2, topos)
    if item.uid == 10005 then
        if getPlayerStorageValue(cid, 10005) == -1 then
            doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Congratulations! You have gain the quest item.")
            local bag = doPlayerAddItem(cid, 2002, 1)
            doAddContainerItem(bag, 9929, 1)
            doAddContainerItem(bag, 2512, 1)
            doAddContainerItem(bag, 2670, 50)
            doAddContainerItem(bag, 2671, 50)
            doAddContainerItem(bag, 2160, 50)
            setPlayerStorageValue(cid, 10005, 1)
        else
            doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Sorry, the chest is empty.")
        end
        return true
    end
end
