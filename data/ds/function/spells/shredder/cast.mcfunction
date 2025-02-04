tag @s add shredder_caster

execute if predicate ds:is_sneaking run function ds:spells/shredder/ultimate_cast

execute unless predicate ds:is_sneaking run function ds:spells/shredder/normal_cast

tag @s remove shredder_caster