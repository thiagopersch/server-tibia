local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, 213)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 439)
setCombatFormula(combat, COMBAT_FORMULA_SKILL, -1, -30, -1, -900)
function onUseWeapon(cid, var) return doCombat(cid, combat, var) end
