local saga = {
    -- Dragon Ball
    [1] = { 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, effect = 62 },                                                         --Bardock
    [2] = { 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, effect = 62 },                                      --Bills
    [3] = { 49, 48, 47, 45, 46, 44, 43, 42, effect = 62 },                                                          --Botamo
    [4] = { 62, 61, 60, 59, 58, 57, 56, 55, 54, 53, 52, 51, effect = 62 },                                          --Brolly
    [5] = { 65, 66, 67, 68, 69, 70, 71, 72, 73, effect = 62 },                                                      -- Bulma
    [6] = { 75, 76, 77, 78, 79, 80, 81, 82, 83, effect = 62 },                                                      --Buu
    [7] = { 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, effect = 62 },                                              --C8
    [8] = { 97, 98, 99, 100, 101, 102, 103, 104, effect = 62 },                                                     --C17
    [9] = { 106, 107, 108, 109, 110, 111, 112, effect = 62 },                                                       --C18
    [10] = { 114, 115, 116, 117, 118, 119, 120, 121, 122, effect = 62 },                                            --Cabba
    [11] = { 123, 124, 125, 126, 127, 128, 129, effect = 62 },                                                      --Cell
    [12] = { 131, 132, 134, 137, 133, 135, 136, 140, 138, 139, effect = 62 },                                       --Cooler
    [13] = { 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, effect = 62 },                             --Dende
    [14] = { 155, 156, 157, 158, 159, 160, 161, 152, 163, effect = 62 },                                            --Freeza
    [15] = { 165, 166, 167, 168, 169, 170, 171, 172, effect = 62 },                                                 -- Ginn
    [16] = { 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, effect = 62 },              --Gohan
    [17] = { 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 217, 215, 214, 216, 218, effect = 62 }, --Goku
    [18] = { 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, effect = 62 },                                  -- Goku Black
    [19] = { 220, 221, 222, 223, 224, 225, 226, 227, effect = 62 },                                                 --Hitto
    [20] = { 229, 330, 231, 232, 233, 234, 235, effect = 62 },                                                      --Janemba
    [21] = { 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, effect = 62 },                        --Jiren
    [22] = { 251, 252, 253, 254, 255, 256, 257, 258, 259, 260, effect = 62 },                                       --Kagome
    [23] = { 262, 263, 264, 265, 266, 267, 268, 269, effect = 62 },                                                 --Kaio
    [24] = { 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, effect = 62 },                                  --Kamge
    [25] = { 283, 284, 285, 286, 287, 288, 289, 290, 291, effect = 62 },                                            --King Cold
    [26] = { 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, effect = 62 },                                       --King Vegeta
    [27] = { 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, effect = 62 },                                       -- Kuririn
    [28] = { 315, 316, 317, 318, 319, 320, 321, effect = 62 },                                                      --Liquir
    [29] = { 323, 324, 325, 326, 327, 328, 329, 330, effect = 62 },                                                 --Pan
    [30] = { 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, effect = 62 },                             --Piccolo
    [31] = { 346, 347, 348, 349, 350, 351, 352, 344, effect = 62 },                                                 --Quitela
    [32] = { 354, 355, 356, 357, 358, 359, 360, effect = 62 },                                                      --Raditz
    [33] = { 362, 363, 364, 365, 366, 367, 368, 369, 943, effect = 62 },                                            --Shenron
    [34] = { 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, effect = 62 },                   --Tapion
    [35] = { 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, effect = 62 },                             --Trunks
    [36] = { 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, effect = 62 },                        --Tsuful
    [37] = { 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, effect = 62 },                             --Turles
    [38] = { 426, 427, 428, 429, 430, 431, effect = 62 },                                                           --Uub
    [39] = { 433, 434, 435, 436, 437, 438, 439, effect = 62 },                                                      --Vados
    [40] = { 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 453, 452, effect = 62 },                        --Vegeta
    [41] = { 455, 456, 457, 458, 459, 461, 460, 462, effect = 62 },                                                 --Vegetto
    [42] = { 20, 26, 22, 23, 24, 14, 27, 25, 16, 21, 15, 19, 18, 17, effect = 62 },                                 --Vermouth
    [43] = { 464, 465, 466, 467, 468, 469, effect = 62 },                                                           --Videl
    [44] = { 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, effect = 62 },                                  --Zaiko
    [45] = { 483, 484, 485, 486, 487, 488, 489, 490, effect = 62 },                                                 --Zeno

    -- Bleach
    [47] = { 495, 498, 497, 496, 499, 494, 493, 492, 939, 491, effect = 62 },                             --Aizen
    [48] = { 508, 507, 506, 505, 509, 503, 502, 501, 500, effect = 62 },                                  --Byakuya
    [49] = { 514, 513, 515, 511, 510, effect = 62 },                                                      --Gin
    [50] = { 520, 219, 521, 517, 516, effect = 62 },                                                      --Grimmjow
    [51] = { 530, 529, 528, 531, 527, 525, 524, 523, effect = 62 },                                       --Hitsugaya
    [52] = { 536, 535, 534, 533, 532, effect = 62 },                                                      --Ichigo FullBring
    [53] = { 553, 552, 549, 551, 550, 548, 547, 554, 545, 544, 543, 542, 541, 540, 539, 538, effect = 62 }, --Ichigo
    [54] = { 561, 560, 559, 562, 557, 556, 555, effect = 62 },                                            --Ishida
    [55] = { 566, 568, 567, 565, 564, 563, effect = 62 },                                                 --Kyouraku
    [56] = { 577, 576, 578, 575, 573, 572, 571, effect = 62 },                                            --Neliel
    [57] = { 582, 583, 580, 579, effect = 62 },                                                           --Orihime
    [58] = { 590, 589, 588, 591, 586, 585, 584, effect = 62 },                                            --Renji
    [59] = { 597, 596, 598, 594, 593, 592, effect = 62 },                                                 --Rukia
    [60] = { 602, 603, 604, 605, 601, 600, effect = 62 },                                                 --Sado
    [61] = { 614, 612, 613, 611, 615, 609, 608, 607, 606, effect = 62 },                                  --Shinji
    [62] = { 620, 621, 622, 623, 618, 617, 616, effect = 62 },                                            --Soi Fong
    [63] = { 628, 627, 629, 625, 624, effect = 62 },                                                      --Tousen
    [64] = { 637, 636, 635, 638, 633, 632, 631, 630, effect = 62 },                                       --Ulquiorra
    [65] = { 644, 643, 645, 640, 641, 639, effect = 62 },                                                 --Urahara
    [66] = { 651, 650, 649, 648, 647, 646, effect = 62 },                                                 --Yoruichi
    [67] = { 658, 662, 661, 660, 659, 663, 656, 655, 654, 653, effect = 62 },                             --Zaraki
}
local level = 50                                                                                          -- Limite para liberar uma saga nova
local sagastor = 578744
function onSay(cid, words, param, channel)
    if exhaustion.check(cid, 120) == TRUE then
        doPlayerSendCancel(cid, "You are exhausted.")
        doSendMagicEffect(getCreaturePosition(cid), 3)
        return true
    end
    if (param == '') then
        doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Enter the saga number you want.")
        exhaustion.set(cid, 120, 0.5)
        return true
    end
    if not saga[getPlayerVocation(cid)] then
        doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "There is no transformation for this vocation.")
        exhaustion.set(cid, 120, 0.5)
        return true
    end
    local t = string.explode(param, ",")
    if (t[2]) then
        doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Could't not understand.")
        return true
    end
    if not (tonumber(t[1])) then
        doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Enter the saga number you want.")
        exhaustion.set(cid, 120, 0.5)
        return true
    end
    if tonumber(t[1]) > #saga[getPlayerVocation(cid)] or tonumber(t[1]) < 1 then
        doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "This saga does not exist.")
        exhaustion.set(cid, 120, 0.5)
        return true
    end
    if getPlayerLevel(cid) < (tonumber(t[1]) * level) then
        doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE,
            "Sorry, you need to level " .. (tonumber(t[1]) * level) .. " to use this saga.")
        return true
    end
    local out = saga[getPlayerVocation(cid)][tonumber(t[1])]
    doCreatureChangeOutfit(cid, { lookType = out })
    setPlayerStorageValue(cid, sagastor, ":" .. out .. ",:" .. getPlayerVocation(cid))
    doSendMagicEffect(getThingPos(cid), saga[getPlayerVocation(cid)].effect)
    doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You've chosen a new saga!")
    doPlayerSay(cid, "AAAAAAAAAAHHHHHH!!", TALKTYPE_ORANGE_1)
    exhaustion.set(cid, 120, 0.5)
    return true
end
