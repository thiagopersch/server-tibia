local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, 56)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 11)
setCombatFormula(combat, COMBAT_FORMULA_SKILL, -1, -50, -1, -2000)
function onUseWeapon(cid, var) return doCombat(cid, combat, var) end
