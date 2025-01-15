tag @s add farmersdelight_caster

execute if predicate ds:is_sneaking run function ds:spells/farmersdelight/ultimate_cast

execute unless predicate ds:is_sneaking run function ds:spells/farmersdelight/normal_cast

tag @s remove farmersdelight_caster