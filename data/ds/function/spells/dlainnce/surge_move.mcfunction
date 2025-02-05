tp @s ^ ^ ^2

particle wax_off ~ ~ ~ 1 1 1 0 20
particle witch ~ ~ ~ 1 1 1 0.1 20

scoreboard players operation #ds-temp ds-id = @s ds-id
execute as @a if score @s ds-id = #ds-temp ds-id run tag @s add ds_surge_caster

execute as @e[type=!#ds:immune,tag=!ds_surge_caster,distance=..4] run function ds:spells/dlainnce/surge_hit

tag @a[tag=ds_surge_caster] remove ds_surge_caster

scoreboard players add @s ds-var 1
execute if score @s ds-var matches 20.. run kill @s