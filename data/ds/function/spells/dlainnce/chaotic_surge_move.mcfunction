tp @s ^ ^ ^2.5

particle wax_on ~ ~ ~ 2 2 2 0 30
particle wax_off ~ ~ ~ 2 2 2 0 30
particle witch ~ ~ ~ 2 2 2 0.1 30

scoreboard players operation #ds-temp ds-id = @s ds-id
execute as @a if score @s ds-id = #ds-temp ds-id run tag @s add ds_surge_caster

scoreboard players set #ds-temp ds-var 0
execute if entity @s[tag=ascension_1_surge] run scoreboard players set #ds-temp ds-var 1
execute unless entity @s[tag=ascension_3_surge] as @e[type=!#ds:immune,tag=!ds_surge_caster,distance=..7] run function ds:spells/dlainnce/chaotic_surge_hit
execute if entity @s[tag=ascension_3_surge] as @e[type=!#ds:immune,tag=!ds_surge_caster,distance=..7] run function ds:spells/dlainnce/chaotic_surge_a3_hit

tag @a[tag=ds_surge_caster] remove ds_surge_caster

scoreboard players add @s ds-var 1
execute if score @s ds-var matches 20.. run kill @s