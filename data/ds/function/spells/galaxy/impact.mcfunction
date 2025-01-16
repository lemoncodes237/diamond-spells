# Find Meteor Caster
scoreboard players operation #ds-temp ds-id = @s ds-id
execute as @a if score @s ds-id = #ds-temp ds-id run tag @s add ds_meteor_caster

execute unless entity @s[tag=galaxy_heavy] as @e[type=!#ds:immune,distance=..8,tag=!ds_meteor_caster] run damage @s 40 player_explosion by @a[tag=ds_meteor_caster,limit=1]
# Ascension 5: Heavy Strike
execute if entity @s[tag=galaxy_heavy] as @e[type=!#ds:immune,distance=..8,tag=!ds_meteor_caster] run damage @s 48 player_explosion by @a[tag=ds_meteor_caster,limit=1]

tag @a remove ds_meteor_caster

kill @s
kill @e[type=marker,tag=galaxy_meteor_location,sort=nearest,limit=1]
particle explosion ~ ~2 ~ 2 2 2 0 100
particle end_rod ~ ~2 ~ 2 2 2 0 100
particle flame ~ ~2 ~ 2 2 2 0.1 100
playsound entity.generic.explode master @a ~ ~ ~ 3