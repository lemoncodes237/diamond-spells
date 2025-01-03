tag @s add calamity_caster

execute if predicate ds:is_sneaking run function ds:spells/calamity/ultimate_cast

execute unless predicate ds:is_sneaking if entity @s[tag=calamity_ultimate] run function ds:spells/calamity/ultimate_attack

execute unless predicate ds:is_sneaking unless entity @s[tag=calamity_ultimate] run function ds:spells/calamity/normal_cast

tag @s remove calamity_caster