tag @s add dlainnce_caster

execute if predicate ds:is_sneaking run function ds:spells/dlainnce/ultimate_cast

execute unless predicate ds:is_sneaking run function ds:spells/dlainnce/normal_cast

tag @s remove dlainnce_caster