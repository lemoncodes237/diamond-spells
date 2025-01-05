tag @s add mining_fever_caster

execute if predicate ds:is_sneaking run function ds:spells/miningfever/ultimate_cast

execute unless predicate ds:is_sneaking run function ds:spells/miningfever/normal_cast

tag @s remove mining_fever_caster