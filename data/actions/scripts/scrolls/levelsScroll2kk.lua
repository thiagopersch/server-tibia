-- Scripted By Perfection -- 
local itemID = 2263
local lvl = 2000
function onUse(cid, item, frompos, item2, topos)
    if item.itemid == itemID then
        doPlayerAddLevel(cid, lvl)
        doPlayerSendTextMessage(cid, MESSAGE_EVENT_ORANGE, "You received " .. lvl .. " levels !")
        doRemoveItem(cid, item.uid, 1)
    end
    return 1
end