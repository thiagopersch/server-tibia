local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_DEATHDAMAGE)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, 207)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 385)
setCombatFormula(combat, COMBAT_FORMULA_SKILL, -1, -150, -1, -1800)
function onUseWeapon(cid, var) return doCombat(cid, combat, var) end
