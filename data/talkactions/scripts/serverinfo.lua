local config = {
    rateExperience = getConfigInfo('rateExperience'),
    rateSkill = getConfigInfo('rateSkill'),
    rateLoot = getConfigInfo('rateLoot'),
    rateMagic = getConfigInfo('rateMagic'),
    rateSpawn = getConfigInfo('rateSpawn'),
    protectionLevel = getConfigInfo('protectionLevel'),
    stages = getBooleanFromString(getConfigInfo('experienceStages'))
}

function onSay(cid, words, param, channel)
    local exp = config.rateExperience
	if (config.stages) then 
		exp = getExperienceStage(getPlayerLevel(cid), getVocationInfo(getPlayerVocation(cid)).experienceMultiplier)
    end

    doPlayerPopupFYI(cid,"--- Server Information ---\n\nExperience: x" .. exp ..
                         "\nSkills: x" .. config.rateSkill ..
                         "\nMagic: x" .. config.rateMagic ..
                         "\nLoot: x" .. config.rateLoot ..
                         "\nSpawns: x" .. config.rateSpawn ..
                         "\nProtection level: " .. config.protectionLevel)
    return true
end
