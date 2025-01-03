tag @s add conductors_baton_caster

execute if predicate ds:is_sneaking run function ds:spells/conductorsbaton/ultimate_cast

execute unless predicate ds:is_sneaking run function ds:spells/conductorsbaton/normal_cast

tag @s remove conductors_baton_caster