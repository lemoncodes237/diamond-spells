tag @s add hydrogen_caster

execute if predicate ds:is_sneaking run function ds:spells/hydrogen/ultimate_cast

execute unless predicate ds:is_sneaking run function ds:spells/hydrogen/normal_cast

tag @s remove hydrogen_caster