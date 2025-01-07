execute as @s at @s run data modify storage ds:effects active_effects set from entity @e[type=pig,sort=nearest,limit=1] active_effects
execute store result storage ds:effects active_effects[1].duration int 0.05 run data get storage ds:effects active_effects[1].duration

say hi

execute as @s run function ds:spells/nullification/set_effects with storage ds:effects active_effects[1]