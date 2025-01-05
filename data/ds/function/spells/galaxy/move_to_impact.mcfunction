tp @s ~ ~ ~ facing entity @e[tag=galaxy_meteor_location,type=marker,sort=nearest,limit=1]

tp @s ^ ^ ^1.7

execute if entity @e[tag=galaxy_meteor_location,type=marker,distance=..1] run function ds:spells/galaxy/impact