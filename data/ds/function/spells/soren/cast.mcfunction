tag @s add soren_caster

execute if predicate ds:is_sneaking run function ds:spells/soren/ultimate_cast

execute unless predicate ds:is_sneaking run function ds:spells/soren/normal_cast

tag @s remove soren_caster