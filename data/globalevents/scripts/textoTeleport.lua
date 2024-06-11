local positions = {
    ["First Itens"] = {
        pos = {x = 17470, y = 17379, z = 6},
        color = {205, 210},
        effect = {}
    },
    ["Houses"] = {
        pos = {x = 17474, y = 17366, z = 6},
        color = {205, 210},
        effect = {10, 376}
    },
    ["Arena PvP"] = {
        pos = {x = 17466, y = 17366, z = 6},
        color = {205, 210},
        effect = {10, 376}
    }
}

function onThink(cid, interval, lastExecution)
    for t, pos in pairs(positions) do
        for _, effect in ipairs(pos.effect) do
            if (#pos.effect > 0) then
                doSendMagicEffect(pos.pos, effect)
            end
        end
        doSendAnimatedText(pos.pos, t, #pos.color > 0 and
                               pos.color[math.random(#pos.color)] or 215)
    end
    return true
end
