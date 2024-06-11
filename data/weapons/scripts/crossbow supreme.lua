local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, 153)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 39)
setCombatFormula(combat, COMBAT_FORMULA_SKILL, -1, -50, -1, -2000)
function onUseWeapon(cid, var) return doCombat(cid, combat, var) end
