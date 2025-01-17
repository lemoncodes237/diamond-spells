tag @s add blunder_caster

execute if predicate ds:is_sneaking run function ds:spells/blunder/ultimate_cast

execute unless predicate ds:is_sneaking run function ds:spells/blunder/normal_cast

tag @s remove blunder_caster