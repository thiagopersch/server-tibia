function onSay(cid, words, param, channel)
    doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You have " .. doNumberFormat(getPlayerMoney(cid)) .. " of money's.")
    return true
end
