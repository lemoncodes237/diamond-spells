tag @s add malison_caster

execute if predicate ds:is_sneaking run function ds:spells/malison/ultimate_cast

execute unless predicate ds:is_sneaking run function ds:spells/malison/normal_cast

tag @s remove malison_caster