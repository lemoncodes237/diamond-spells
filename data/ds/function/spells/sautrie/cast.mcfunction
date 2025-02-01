tag @s add sautrie_caster

execute if predicate ds:is_sneaking run function ds:spells/sautrie/ultimate_cast

execute unless predicate ds:is_sneaking run function ds:spells/sautrie/normal_cast

tag @s remove sautrie_caster