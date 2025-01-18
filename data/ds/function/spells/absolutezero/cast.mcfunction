tag @s add absolutezero_caster

execute if predicate ds:is_sneaking run function ds:spells/absolutezero/ultimate_cast

execute unless predicate ds:is_sneaking run function ds:spells/absolutezero/normal_cast

tag @s remove absolutezero_caster