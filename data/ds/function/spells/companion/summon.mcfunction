scoreboard players add @s ds-var 1
execute if score @s ds-var matches 15.. run data merge entity @s {DeathTime:19s,Health:0}

execute if score @s ds-var matches 5.. run data merge entity @s {Invulnerable:0b}

execute unless entity @s[tag=ascension_3_summon] run return 0

# Ascension 3: Animal Help
scoreboard players operation #ds-temp ds-id = @s ds-id
execute at @s as @a[distance=..7] if score @s ds-id = #ds-temp ds-id unless predicate ds:regen_1 run effect give @s speed 2 1
execute at @s as @a[distance=..7] if score @s ds-id = #ds-temp ds-id run effect give @s regeneration 2 0
