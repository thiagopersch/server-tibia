local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, 67)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 379)
setCombatFormula(combat, COMBAT_FORMULA_SKILL, -1, -200, -1, -1200)
function onUseWeapon(cid, var) return doCombat(cid, combat, var) end
