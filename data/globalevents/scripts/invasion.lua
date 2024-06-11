local days = {
    ["Sunday"] = {
        ["12:00"] = {
            nome = "Demon invasion",
            pos = {x = 1005, y = 1025, z = 7},
            monster = {"40 Demon", "50 Demonic Soldier", "4 Valak"},
            Time = 15
        }
    },
    ["Monday"] = {
        ["08:00"] = {
            nome = "Saiyajin invasion",
            pos = {x = 1023, y = 1040, z = 7},
            monster = {
                "5 Bardock", "5 Bardock Ssj", "5 Bardock Ssj3",
                "5 Bardock Ssj4", "5 Bardock Ssj5"
            },
            Time = 15
        },
        ["16:00"] = {
            nome = "Dragon invasion",
            pos = {x = 1023, y = 1040, z = 7},
            monster = {
                "200 Dragon", "150 Dragon Lord", "300 Dragon Frost",
                "100 Dragon Lord Thawing"
            },
            Time = 15
        }
    }
}
function onThink(interval, lastExecution)
    function getDayName()
        local days = {
            "Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday",
            "Saturday"
        }
        return days[os.date("*t")["wday"]]
    end
    hours = tostring(os.date("%X")):sub(1, 5)
    tb = days[getDayName()][hours]
    if tb then
        function removeCreature()
            for x = ((tb.pos.x) - 10), ((tb.pos.x) + 10) do
                for y = ((tb.pos.y) - 10), ((tb.pos.y) + 10) do
                    local m = getTopCreature({x = x, y = y, z = tb.pos.z}).uid
                    if m ~= 0 and isMonster(m) then
                        doRemoveCreature(m)
                    end
                end
            end
            return true
        end
        addEvent(removeCreature, tb.Time * 60 * 1000)
        doBroadcastMessage(tb.nome)
        for _, x in pairs(tb.monster) do
            for s = 1, tonumber(x:match("%d+")) do
                doSummonCreature(x:match("%s(.+)"), tb.pos)
            end
        end
    end
    return true
end
