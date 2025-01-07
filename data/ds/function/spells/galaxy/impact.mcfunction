execute unless entity @s[tag=galaxy_heavy] as @e[type=!#ds:immune,distance=..8] run damage @s 30 explosion
# Ascension 5: Heavy Strike
execute if entity @s[tag=galaxy_heavy] as @e[type=!#ds:immune,distance=..8] run damage @s 36 explosion

kill @s
kill @e[type=marker,tag=galaxy_meteor_location,sort=nearest,limit=1]
particle explosion ~ ~2 ~ 2 2 2 0 100
particle end_rod ~ ~2 ~ 2 2 2 0 100
particle flame ~ ~2 ~ 2 2 2 0.1 100
playsound entity.generic.explode master @a ~ ~ ~ 3