tag @s add oceanicjudge_caster

execute if predicate ds:is_sneaking run function ds:spells/oceanicjudge/ultimate_cast

execute unless predicate ds:is_sneaking run function ds:spells/oceanicjudge/normal_cast

tag @s remove oceanicjudge_caster