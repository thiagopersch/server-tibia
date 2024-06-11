function onThink(interval, lastExecution)
    local cor = 22 -- Defina a cor da mensagem (22 = branco)
    local mensagens = {
        "Be sure to visit our website, there you will find lots of information about the game's spoilers!",
        "Every day improving, more and more the game!"
    }
    doBroadcastMessage(mensagens[math.random(1, table.maxn(mensagens))], cor)

    return TRUE

end
