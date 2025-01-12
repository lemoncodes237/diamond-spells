tag @s add sizeshifter_caster

execute if predicate ds:is_sneaking run function ds:spells/sizeshifter/ultimate_cast

execute unless predicate ds:is_sneaking run function ds:spells/sizeshifter/normal_cast

tag @s remove sizeshifter_caster