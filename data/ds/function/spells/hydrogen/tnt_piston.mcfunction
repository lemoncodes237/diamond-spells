scoreboard players add @s ds-var 1

# Don't do anything for half a second
execute if score @s ds-var matches 0..10 run return 0

# Find the caster
scoreboard players operation #ds-temp ds-id = @s ds-id
execute as @a if score @s ds-id = #ds-temp ds-id run tag @s add tnt_piston_caster

# Also explode after 10s
execute if score @s ds-var matches 200.. run function ds:spells/hydrogen/explode

execute unless entity @e[type=!#ds:immune,distance=..20,tag=!tnt_piston_caster] run return run tag @a[tag=tnt_piston_caster,limit=1] remove tnt_piston_caster

execute facing entity @e[type=!#ds:immune,tag=!tnt_piston_caster,distance=..20,sort=nearest,limit=1] feet run tp @s ^ ^ ^0.35 facing ^ ^ ^1

execute if entity @e[type=!#ds:immune,tag=!tnt_piston_caster,distance=..3] run function ds:spells/hydrogen/explode

tag @a[tag=tnt_piston_caster,limit=1] remove tnt_piston_caster