tag @s add jumper_caster

execute if predicate ds:is_sneaking run function ds:spells/jumper/ultimate_cast

execute unless predicate ds:is_sneaking run function ds:spells/jumper/normal_cast

tag @s remove jumper_caster