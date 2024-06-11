local effects = {
-- Vocations DBZ
    [1] = 102, -- Bardock
    [2] = 105, -- Bills
    [3] = 111, -- Botamo
    [4] = 107, -- Brolly
    [5] = 110, -- Bulma
    [6] = 104, -- Buu
    [7] = 106, -- C8
    [8] = 103, -- C17
    [9] = 103, -- C18
    [10] = 100, -- Cabba
    [11] = 101, -- Cell
    [12] = 108, -- Cooler
    [13] = 101, -- Dende
    [14] = 137, -- Freeza
    [15] = 134, -- Ginn
    [16] = 117, -- Gohan
    [17] = 120, -- Goku
    [18] = 108, -- Goku Black
    [19] = 105, -- Hitto
    [20] = 106, -- Janemba
    [21] = 111, -- Jiren
    [22] = 100, -- Kagome
    [23] = 104, -- Kaio
    [24] = 102, -- Kame
    [25] = 103, -- King Cold
    [26] = 119, -- King Vegeta
    [27] = 138, -- Kuririn
    [28] = 147, -- Liquir
    [29] = 138, -- Pan
    [30] = 131, -- Piccolo
    [31] = 123, -- Quitela
    [32] = 108, -- Raditz
    [33] = 121, -- Shenron
    [34] = 137, -- Tapion
    [35] = 138, -- Trunks
    [36] = 152, -- Tsuful
    [37] = 108, -- Turles
    [38] = 102, -- Uub
    [39] = 132, -- Vados
    [40] = 120, -- Vegeta
    [41] = 108, -- Vegetto
    [42] = 105, -- Vermoth
    [43] = 100, -- Videl
    [44] = 121, -- Zaiko
    [45] = 148, -- Zeno
    
-- Vocations Bleach
    [47] = 119, -- Aizen
    [48] = 149, -- Byakuya
    [49] = 151, -- Gin
    [50] = 153, -- Grimmjow
    [51] = 153, -- Hitsugaya
    [52] = 152, -- Ichigo Fullbring
    [53] = 154, -- Ichigo
    [54] = 158, -- Ishida
    [55] = 148, -- Kyouraku
    [56] = 151, -- Neliel
    [57] = 159, -- Orihime
    [58] = 147, -- Renji
    [59] = 155, -- Rukia
    [60] = 147, -- Sado
    [61] = 147, -- Shinji
    [62] = 152, -- Soi Fong
    [63] = 149, -- Tousen
    [64] = 149, -- Ulquiorra
    [65] = 147, -- Urahara
    [66] = 150, -- Yoruichi
    [67] = 147 -- Zaraki
}

function onThink(interval)
    for _, pid in ipairs(getPlayersOnline()) do
        local effect = effects[getPlayerVocation(pid)]
        if (effect) then doSendMagicEffect(getCreaturePos(pid), effect) end
    end
    return true
end
