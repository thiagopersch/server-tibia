function onUse(cid, item, fromPosition, itemEx, toPosition)

if isPlayer(cid) == false then
return true
end

local levelRequired = item.actionid-1000
local playerLevel = getPlayerLevel(cid)
local cidPosition = getCreaturePosition(cid)

	if item.uid == 5789 and item.actionid > 100 and playerLevel >= levelRequired then
		
		
		if cidPosition.y < toPosition.y then
			doTeleportThing(cid, {x=toPosition.x,y=toPosition.y+1,z=toPosition.z}, TRUE)
			else
			doTeleportThing(cid, {x=toPosition.x,y=toPosition.y-1,z=toPosition.z}, TRUE)
			end
			return TRUE
		else
			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Voce não possui level suficiente.")
			return TRUE
	end
	return FALSE
end


