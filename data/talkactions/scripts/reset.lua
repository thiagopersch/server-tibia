local config = {
    backToLevel = 8,
    redskull = false, -- need to be without redskull to reset?
    battle = true, -- need to be without battle to reset?
    pz = true, -- need to be in protect zone to reset?
    stages = {
        {resets = 4, level = 350, premium = 330},
        {resets = 9, level = 355, premium = 340},
        {resets = 14, level = 360, premium = 355},
        {resets = 19, level = 365, premium = 360},
        {resets = 24, level = 380, premium = 370},
        {resets = 29, level = 390, premium = 380},
        {resets = 34, level = 410, premium = 400},
        {resets = 39, level = 430, premium = 420},
        {resets = 44, level = 450, premium = 440},
        {resets = 49, level = 480, premium = 470},
        {resets = 54, level = 510, premium = 500},
        {resets = 59, level = 550, premium = 540},
        {resets = 64, level = 590, premium = 580},
        {resets = 69, level = 630, premium = 620},
        {resets = 74, level = 680, premium = 670},
        {resets = 79, level = 730, premium = 720},
        {resets = 84, level = 780, premium = 770},
        {resets = 89, level = 860, premium = 840},
        {resets = 94, level = 930, premium = 910},
        {resets = 2 ^ 1024, level = 1010, premium = 990}
    }
}

function onSay(cid, words, param)
    local function getPlayerResets(cid)
        local resets = getPlayerStorageValue(cid, 500)
        return resets < 0 and 0 or resets
    end

    local function doPlayerAddResets(cid, count)
        setPlayerStorageValue(cid, 500, getPlayerResets(cid) + count)
    end

    if config.redskull and getCreatureSkullType(cid) == 4 then
        return doPlayerSendTextMessage(cid, MESSAGE_EVENT_ORANGE,
                                       "You need to be without red skull to reset.")
    elseif config.pz and not getTilePzInfo(getCreaturePosition(cid)) then
        return doPlayerSendTextMessage(cid, MESSAGE_EVENT_ORANGE,
                                       "You need to be in protection zone to reset.")
    elseif config.battle and getCreatureCondition(cid, CONDITION_INFIGHT) then
        return doPlayerSendTextMessage(cid,
                                       "You need to be without battle to reset.")
    end

    local resetLevel = 0
    for x, y in ipairs(config.stages) do
        if getPlayerResets(cid) <= y.resets then
            resetLevel = isPremium(cid) and y.premium or y.level
            break
        end
    end

    if getPlayerLevel(cid) < resetLevel then
        return doPlayerSendTextMessage(cid, MESSAGE_EVENT_ORANGE,
                                       "You need level " .. resetLevel ..
                                           " or more to reset.")
    end

    doPlayerAddResets(cid, 1)
    local healthMax, manaMax = getCreatureMaxHealth(cid),
                               getCreatureMaxMana(cid)
    doPlayerAddLevel(cid, -(getPlayerLevel(cid) - config.backToLevel))
    setCreatureMaxHealth(cid, healthMax)
    setCreatureMaxMana(cid, manaMax)
    doSendMagicEffect(getCreaturePosition(cid), CONST_ME_FIREWORK_RED)
    doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE,
                            "Now you have " .. getPlayerResets(cid) .. " " ..
                                (getPlayerResets(cid) == 1 and "reset" or
                                    "resets") .. ".")
    return true
end
