local conf = {}

conf["level"] = {
-- [item_level] = {successParcent=PARCENT FOR UPGRADING SUCCESS, downrageLevel = IF UPGRADING FAIL - ITEM WAS DECRASED TO LEVEL HERE}
 [1] = {successParcent = 85, downrageLevel = 0},
 [2] = {successParcent = 80, downrageLevel = 1},
 [3] = {successParcent = 75, downrageLevel = 2},
 [4] = {successParcent = 70, downrageLevel = 3},
 [5] = {successParcent = 65, downrageLevel = 4},
 [6] = {successParcent = 60, downrageLevel = 5},
 [7] = {successParcent = 55, downrageLevel = 0},
 [8] = {successParcent = 50, downrageLevel = 0},
 [9] = {successParcent = 45, downrageLevel = 0}
}
conf["upgrade"] = { -- how many parcent attributes are rised?
    attack = 5, -- attack %
    extraAttack = 10, -- extra Attack %
    defense = 5, -- defence %
    extraDefense = 10, -- extra defence %
    armor = 5, -- armor %
    hitChance = 5, -- hit chance %
}

-- // do not touch // -- 
-- Upgrading system v.3.1 by Azi [Ersiu] --
local upgrading = {
    upValue = function (value, level, parcent)
        if(not(value>0))then return 0 end 
        for i=1,level do
            value = math.ceil(((value/100)*parcent)+value)+1
        end
        return (value > 0) and value or 0
    end,

    getLevel = function (item)
        local name = string.explode(getItemName(item), '+')
        return (#name == 1) and 0 or math.abs(name[2])
    end,
}
function onUse(cid, item, fromPosition, itemEx, toPosition)
    local getItem = getItemInfo(itemEx.itemid)
    if((getItem.weaponType > 0 or getItem.armor > 0) and not isItemStackable(itemEx.itemid))then
        local level = upgrading.getLevel(itemEx.uid)
        if(level < #conf["level"])then
            local nLevel = (conf["level"][(level+1)].successParcent >= math.random(1,100)) and (level+1) or conf["level"][level].downrageLevel
            if(nLevel > level)then
                doSendMagicEffect(toPosition, 30)
                doPlayerSendTextMessage(cid, 22, "Congratz! Upgraded was successful, your item has become stronger!")
            else
                doSendMagicEffect(toPosition, 2)
                doPlayerSendTextMessage(cid, 22, "Argh! Upgrading fail... you item lost some of strong!")
            end
            doItemSetAttribute(itemEx.uid, "name", getItem.name..((nLevel>0) and "+"..nLevel or "")) 
            doItemSetAttribute(itemEx.uid, "attack",  upgrading.upValue(getItem.attack, nLevel, conf["upgrade"].attack))
            doItemSetAttribute(itemEx.uid, "extraattack", upgrading.upValue(getItem.extraAttack, nLevel, conf["upgrade"].extraAttack))
            doItemSetAttribute(itemEx.uid, "defense", upgrading.upValue(getItem.defense,nLevel, conf["upgrade"].defense))
            doItemSetAttribute(itemEx.uid, "extradefense", upgrading.upValue(getItem.extraDefense, nLevel, conf["upgrade"].extraDefense))
            doItemSetAttribute(itemEx.uid, "armor", upgrading.upValue(getItem.armor, nLevel, conf["upgrade"].armor))
            doItemSetAttribute(itemEx.uid, "hitChance", upgrading.upValue(getItem.hitChance,nLevel, conf["upgrade"].hitChance))
            doRemoveItem(item.uid, 1)
        else
            doPlayerSendTextMessage(cid, 19, "Sorry this item is on max level.")
        end
    else
        doPlayerSendTextMessage(cid, 19, "You cannot upgrade this item.")
    end
end