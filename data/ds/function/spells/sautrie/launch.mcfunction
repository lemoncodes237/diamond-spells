scoreboard players add @s ds-reg5 1

execute unless score @s ds-reg5 matches 6.. run return 0

execute if score @s ds-reg5 matches 6 run playsound block.glass.break master @a ~ ~ ~ 1 0.8

scoreboard players set @s ds-reg1 0
execute anchored eyes rotated ~-60 ~ run function ds:spells/sautrie/sword_swipe_launch

scoreboard players operation #ds-temp ds-id = @s ds-id
execute as @a if score @s ds-id = #ds-temp ds-id run tag @s add ds_swipe_caster

execute positioned ^ ^ ^2 as @e[type=!#ds:immune,distance=..4] run damage @s 10 player_attack by @a[tag=ds_swipe_caster,limit=1]

tp @s ^ ^ ^2

tag @a[tag=ds_swipe_caster] remove ds_swipe_caster

execute if score @s ds-reg5 matches 26.. run kill @s