function onSay(cid, words, param, channel)
    local players, str, GuildName = {}, '', getPlayerGuildName(cid)
    if getPlayerGuildId(cid) <= 0 then
        doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You need to be in a guild.")
        return true
    end
    for _, cid in pairs(getPlayersOnline()) do
        if getPlayerGuildName(cid) == GuildName then
            table.insert(players, cid)
        end
    end
    str = str .. "Guild Members: " .. CountGuildMembers(GuildName) .. " Players.\n\n• Exist " .. #players .. " online players in your guild:\n\n"
    for i = 1, #players do
        str = str .. "\n[" .. getPlayerName(players[i]) .. "][" .. getPlayerGuildRank(players[i]) .. "]"
    end
    return doShowTextDialog(cid, 2533, str)
end
