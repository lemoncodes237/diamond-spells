tag @s add autumnwind_caster

execute if predicate ds:is_sneaking run function ds:spells/autumnwind/ultimate_cast

execute unless predicate ds:is_sneaking run function ds:spells/autumnwind/normal_cast

tag @s remove autumnwind_caster