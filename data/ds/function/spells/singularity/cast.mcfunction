tag @s add singularity_caster

execute if predicate ds:is_sneaking run function ds:spells/singularity/ultimate_cast

execute unless predicate ds:is_sneaking run function ds:spells/singularity/normal_cast

tag @s remove singularity_caster