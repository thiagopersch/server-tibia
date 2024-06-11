CONFIG = {
    [1] = {
        message = "- - > TV Karakura < - -\n\n To know what the commands are, just say /commands.",
        color = 22
    },
    [2] = {
        message = "- - > Dragon Ball TV < - -\n\n To transform, just say transform 1, transform 2, transform 3, etc.",
        color = 22
    }
}

function onThink()
    getRandom = math.random(1, #CONFIG)
    return
        doBroadcastMessage(CONFIG[getRandom].message, CONFIG[getRandom].color)
end
