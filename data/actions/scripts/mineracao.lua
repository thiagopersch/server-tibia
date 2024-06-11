-- ==--Sistema de Minera��o By KingCPI--==--
function onUse(cid, item, frompos, item2, topos)

    difskill = 200 -- Dificuldade do skill(quanto maior mais dificil)
    dif = 600 -- Dificuldade
    skillid = 15895

    -- Minerando pedras preciosas
    smallrand = math.random(1, 10)
    if smallrand == 1 then
        smallpremio = 2145 -- Small Diamond
    elseif smallrand == 2 or smallrand == 3 then
        smallpremio = 2146 -- Small Sapphire
    elseif smallrand == 4 or smallrand == 5 then
        smallpremio = 2147 -- Small Ruby
    elseif smallrand == 6 or smallrand == 7 then
        smallpremio = 2149 -- Small Emerald
    else
        smallpremio = 2150 -- Small Amethysh
    end

    -- Minerando Gems
    gemrand = math.random(1, 5)
    if gemrand == 1 then
        gempremio = 2153 -- Violet Gem
    elseif gemrand == 2 then
        gempremio = 2154 -- Yellow Gem
    elseif gemrand == 3 then
        gempremio = 2155 -- Big Emerald
    elseif gemrand == 4 then
        gempremio = 2156 -- Big Ruby
    else
        gempremio = 2158 -- Blue Gem
    end

    -- Minerando Porcarias
    porcrand = math.random(1, 3)
    if porcrand == 1 then
        porcpremio = 1293 -- Stone
    elseif porcrand == 2 then
        porcpremio = 1294 -- Small Stone
    else
        porcpremio = 1295 -- Stone
    end

    -- Minerando coisas legais
    lglrand = math.random(1, 4)
    if lglrand == 1 then
        lglpremio = 2320 -- Skull
    elseif lglrand == 2 then
        lglpremio = 2151 -- Talon
    elseif lglrand == 3 then
        lglpremio = 2225 -- Piece of Iron
    else
        lglpremio = 2260 -- Blank Rune
    end

    rand = math.random(1, dif)
    if item2.itemid == 356 or item2.itemid == 8639 or item2.itemid == 8635 or
        item2.itemid == 8638 or item2.itemid == 8634 or item2.itemid == 8636 then

        if rand <= 50 then
            doSendAnimatedText(topos, 'Tck', 210)
            doSendMagicEffect(topos, 3)
            pedra = doPlayerAddItem(cid, porcpremio, 1)
            doSetItemSpecialDescription(pedra, "Minerado por " ..
                                            getPlayerName(cid) .. ".")
            AddSkill(cid, skillid, 2)
        elseif rand > 50 and rand <= 70 then
            doSendAnimatedText(topos, 'Tuk', 210)
            doSendMagicEffect(topos, 3)
            pedra = doPlayerAddItem(cid, lglpremio, 1)
            doSetItemSpecialDescription(pedra, "Minerado por " ..
                                            getPlayerName(cid) .. ".")
            AddSkill(cid, skillid, 2)
        elseif rand > 70 and rand <= 80 then
            doSendAnimatedText(topos, 'Tnk', 210)
            doSendMagicEffect(topos, 3)
            pedra = doPlayerAddItem(cid, smallpremio, 1)
            doSetItemSpecialDescription(pedra, "Minerado por " ..
                                            getPlayerName(cid) .. ".")
            AddSkill(cid, skillid, 2)
        elseif rand > 80 and rand <= 85 then
            doSendAnimatedText(topos, 'Tnk', 210)
            doSendMagicEffect(topos, 3)
            pedra = doPlayerAddItem(cid, gempremio, 1)
            doSetItemSpecialDescription(pedra, "Minerado por " ..
                                            getPlayerName(cid) .. ".")
            AddSkill(cid, skillid, 2)
        else
            doSendAnimatedText(topos, 'Tin', 210)
            doSendMagicEffect(topos, 2)
            AddSkill(cid, skillid, 1)
        end
    end
end
-- ==--By Conde Sapo--==--
function AddSkill(cid, num, skill)
    skill = getPlayerStorageValue(cid, num)
    if skill > 59 then
        coef = 1600
    else
        coef = 1000
    end
    -- � primeiro skill ???
    if skill < 0 then skill = 0 end
    Valor = difskill + (skill * 10)
    if skill + valor + rand <= coef then
        skill = skill + 1
        setPlayerStorageValue(cid, num, skill)
        if skill < 100 then
            doPlayerSendTextMessage(cid, 22, "You advanced in smithing (" ..
                                        skill .. ").")
        else
            doPlayerSendTextMessage(cid, 4,
                                    "Congratulations!!You advanced to last skill of smithing (100).")
        end
    end
end

