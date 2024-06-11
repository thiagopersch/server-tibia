local config = {
    cooldown = 60, -- tempo entre uma magia e outra
    tempo = 60, -- tempo em segundos que ficará healando
    storage = 45382,
    effect = 139 --- efeito que vai sair
}

function onCastSpell(cid, var)
    if getPlayerLevel(cid) < 200 then
        if os.time() - getPlayerStorageValue(cid, config.storage) >=
            config.cooldown then
            for i = 1, config.tempo do
                addEvent(function()
                    if isCreature(cid) then
                        local lifedraw = 1000
                        local pos = getPlayerPosition(cid)
                        doCreatureAddMana(cid, lifedraw, 1)
                        doSendAnimatedText(pos, "+" .. lifedraw, TEXTCOLOR_PURPLE)
                        doSendMagicEffect(pos, config.effect)
                    end
                end, 1000 * i)
            end
            doPlayerSetStorageValue(cid, config.storage, os.time())
        else
            doPlayerSendCancel(cid, "You can use the spell again in " .. (config.cooldown - (os.time() - getPlayerStorageValue(cid, config.storage))) .. " seconds.")
            return false
        end
    else
        doPlayerSendCancel(cid, "Only levels less than 200 can use this spell.")
        return false
    end
    return true
end
