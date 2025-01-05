tag @s add galaxy_caster

execute if predicate ds:is_sneaking run function ds:spells/galaxy/ultimate_cast

execute unless predicate ds:is_sneaking run function ds:spells/galaxy/normal_cast

tag @s remove galaxy_caster