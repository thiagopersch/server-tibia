function onStartup()
    db.query("UPDATE `players` SET `online_time` = 0")
    db.executeQuery("UPDATE `players` SET `online` = 0 WHERE `world_id` = " ..
                        getConfigValue('worldId') .. ";")
    return true
end
