function onCastSpell(cid, var)
    local mana = getCreatureMana(cid)

    if doCreatureAddMana(cid, -mana) then
        if doPlayerAddSpentMana(cid, mana) then
            doSendMagicEffect(getCreaturePosition(cid), 320)
            return false
        else
            doCreatureAddMana(cid, mana)
        end
    end

    doSendMagicEffect(getCreaturePosition(cid), 320)
    return false
end
