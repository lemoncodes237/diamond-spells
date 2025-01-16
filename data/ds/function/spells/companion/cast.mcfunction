tag @s add companion_caster

execute if predicate ds:is_sneaking run function ds:spells/companion/ultimate_cast

execute unless predicate ds:is_sneaking run function ds:spells/companion/normal_cast

tag @s remove companion_caster