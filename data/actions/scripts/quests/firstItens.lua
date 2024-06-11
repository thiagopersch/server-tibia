function onUse(cid, item, frompos, item2, topos)
    if item.uid == 10000 then
        if getPlayerStorageValue(cid, 10000) == -1 then
            doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Congratulations! You have earned your starting items!")
            local bag = doPlayerAddItem(cid, 1988, 1)
            doAddContainerItem(bag, 2473, 1)
            doAddContainerItem(bag, 2492, 1)
            doAddContainerItem(bag, 2477, 1)
            doAddContainerItem(bag, 9812, 1)
            doAddContainerItem(bag, 2390, 1)
            doAddContainerItem(bag, 7383, 1)
            doAddContainerItem(bag, 2670, 10)
            doAddContainerItem(bag, 2671, 10)
            doAddContainerItem(bag, 2666, 10)
            doAddContainerItem(bag, 2160, 10)
            setPlayerStorageValue(cid, 10000, 1)
        else
            doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Sorry, the chest is empty.")
        end
        return true
    end
end
