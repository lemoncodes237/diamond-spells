tag @s add clearsight_caster

execute if predicate ds:is_sneaking run function ds:spells/clearsight/ultimate_cast

execute unless predicate ds:is_sneaking run function ds:spells/clearsight/normal_cast

tag @s remove clearsight_caster