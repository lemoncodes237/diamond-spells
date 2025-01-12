tag @s add embercore_caster

execute if predicate ds:is_sneaking run function ds:spells/embercore/ultimate_cast

execute unless predicate ds:is_sneaking run function ds:spells/embercore/normal_cast

tag @s remove embercore_caster