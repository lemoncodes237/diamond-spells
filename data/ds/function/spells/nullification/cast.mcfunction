tag @s add nullification_caster

execute if predicate ds:is_sneaking run function ds:spells/nullification/ultimate_cast

execute unless predicate ds:is_sneaking run function ds:spells/nullification/normal_cast

tag @s remove nullification_caster