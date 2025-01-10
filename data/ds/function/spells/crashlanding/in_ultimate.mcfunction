tag @s add crashlanding_ultimate

execute unless predicate ds:mighty_impact if predicate ds:on_ground run return run function ds:spells/crashlanding/end_ultimate

execute if entity @s[tag=crashlanding_jumped] if predicate ds:on_ground run function ds:spells/crashlanding/on_land

particle crit ~ ~1 ~ 0.5 0.5 0.5 0 3

tag @s remove crashlanding_ultimate