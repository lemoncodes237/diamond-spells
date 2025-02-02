tag @s add yggdrasil_caster

execute if predicate ds:is_sneaking run function ds:spells/yggdrasil/ultimate_cast

execute unless predicate ds:is_sneaking run function ds:spells/yggdrasil/normal_cast

tag @s remove yggdrasil_caster