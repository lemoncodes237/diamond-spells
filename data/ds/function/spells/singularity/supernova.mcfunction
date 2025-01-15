# Ascension 5: Supernova
particle explosion ~ ~ ~ 3 3 3 0 30
playsound entity.generic.explode master @a ~ ~ ~ 5

# Find the person who created the black hole
scoreboard players operation #ds-temp ds-id = @s ds-id
execute as @a if score @s ds-id = #ds-temp ds-id run tag @s add ds_blackhole_creator

execute as @e[type=!#ds:immune,distance=..8,tag=!ds_blackhole_creator] run damage @s 15 ds:no_cooldown by @a[tag=ds_blackhole_creator,limit=1]
execute as @e[type=!#ds:immune,distance=..8,tag=!ds_blackhole_creator] at @s run tp @s ~ ~20 ~

tag @a[tag=ds_blackhole_creator] remove ds_blackhole_creator