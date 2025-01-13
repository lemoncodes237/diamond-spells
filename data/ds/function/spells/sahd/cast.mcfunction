tag @s add sahd_caster

execute if predicate ds:is_sneaking run function ds:spells/sahd/ultimate_cast

execute unless predicate ds:is_sneaking run function ds:spells/sahd/normal_cast

tag @s remove sahd_caster