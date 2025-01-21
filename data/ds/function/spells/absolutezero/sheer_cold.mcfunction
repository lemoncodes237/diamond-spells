scoreboard players add @s ds-var 1

execute if score @s ds-var matches 300.. run return run kill @s

particle snowflake ~ ~ ~ 15 4 15 0.05 60

# Find who casted it
scoreboard players operation #ds-temp ds-id = @s ds-id
execute as @a if score @s ds-id = #ds-temp ds-id run tag @s add sheer_cold_caster

effect give @e[distance=..21,type=!#ds:immune,tag=!sheer_cold_caster] slowness 3 2
execute as @e[distance=..21,type=!#ds:immune,tag=!sheer_cold_caster] at @s run particle snowflake ~ ~1 ~ 0.5 0.5 0.5 0.05 5

# Reset Iceology Cooldown
scoreboard players set @a[tag=sheer_cold_caster,limit=1,distance=..21] ds-absolutezero-normal 0

# Ascension 3: Preservation
execute if entity @s[tag=ascension_3_sheer_cold] as @a[tag=sheer_cold_caster,limit=1,distance=..21] unless predicate ds:sheer_cold_regen run effect give @s regeneration 2 1
execute if entity @s[tag=ascension_3_sheer_cold] run effect give @a[tag=sheer_cold_caster,limit=1,distance=..21] speed 2 1

# Ascension 5: Withering Cold
execute if entity @s[tag=ascension_5_sheer_cold] as @e[distance=..21,type=!#ds:immune,tag=!sheer_cold_caster] unless predicate ds:wither run effect give @s wither 3 1

tag @a[tag=sheer_cold_caster] remove sheer_cold_caster