tag @s add crashlanding_caster

execute if predicate ds:is_sneaking run function ds:spells/crashlanding/ultimate_cast

execute unless predicate ds:is_sneaking run function ds:spells/crashlanding/normal_cast

tag @s remove crashlanding_caster