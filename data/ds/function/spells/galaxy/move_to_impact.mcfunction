tp @s ~ ~ ~ facing entity @e[tag=galaxy_meteor_location,type=marker,sort=nearest,limit=1]

# Ascension 1: Meteorite
execute if entity @s[tag=galaxy_meteorite] run tp @s ^ ^ ^1.8

execute unless entity @s[tag=galaxy_meteorite] run tp @s ^ ^ ^1.5

particle flame ~ ~ ~ 2 2 2 0.1 15

execute if entity @e[tag=galaxy_meteor_location,type=marker,distance=..1] run function ds:spells/galaxy/impact