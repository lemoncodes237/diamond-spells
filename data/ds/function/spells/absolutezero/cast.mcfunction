tag @s add absolutezero_caster

execute if predicate ds:is_sneaking run function ds:spells/absolutezero/ultimate_cast

execute unless predicate ds:is_sneaking run function ds:spells/absolutezero/normal_cast

tag @s remove absolutezero_caster

# This is the 20th and final wand for the first development cycle!
# Surprisingly enough, it's the 1st on this list since it's 1st alphabetically!