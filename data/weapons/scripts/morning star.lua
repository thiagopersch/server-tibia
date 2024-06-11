local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, 23)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 4)
setCombatFormula(combat, COMBAT_FORMULA_SKILL, -1, -50, -1, -800)
function onUseWeapon(cid, var) return doCombat(cid, combat, var) end
