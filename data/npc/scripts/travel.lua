local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

-- OTServ event handling functions start
function onCreatureAppear(cid) npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid) npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg) npcHandler:onCreatureSay(cid, type, msg) end
function onThink() npcHandler:onThink() end
-- OTServ event handling functions end

-- Don't forget npcHandler = npcHandler in the parameters. It is required for all StdModule functions!
local travelNode = keywordHandler:addKeyword({'central city'}, StdModule.say, {
    npcHandler = npcHandler,
    onlyFocus = true,
    text = 'Do you want to go to {Central City}?'
})
travelNode:addChildKeyword({'yes'}, StdModule.travel, {
    npcHandler = npcHandler,
    premium = false,
    level = 1,
    destination = {x = 17541, y = 17552, z = 6}
})
travelNode:addChildKeyword({'no'}, StdModule.say, {
    npcHandler = npcHandler,
    onlyFocus = true,
    reset = true,
    text = 'Then go hunting again! Bye Bye!'
})

local travelNode = keywordHandler:addKeyword({'karakura'}, StdModule.say, {
    npcHandler = npcHandler,
    onlyFocus = true,
    text = 'Do you want to go to {Karakura}?'
})
travelNode:addChildKeyword({'yes'}, StdModule.travel, {
    npcHandler = npcHandler,
    premium = yes,
    level = 50,
    destination = {x = 17584, y = 17710, z = 6}
})
travelNode:addChildKeyword({'no'}, StdModule.say, {
    npcHandler = npcHandler,
    onlyFocus = true,
    reset = true,
    text = 'Then go hunting again! Bye Bye!'
})

keywordHandler:addKeyword({'travel'}, StdModule.say, {
    npcHandler = npcHandler,
    onlyFocus = true,
    text = "Where do you want to travel? {Central City}, {Karakura}"
})

-- Makes sure the npc reacts when you say hi, bye etc.
npcHandler:addModule(FocusModule:new())
