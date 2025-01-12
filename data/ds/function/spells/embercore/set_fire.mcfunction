scoreboard players add @s ds-var 1
execute if score @s ds-var matches 10.. run return 0

execute positioned ~ ~-1 ~ if block ~ ~ ~ #ds:air run return run function ds:spells/embercore/set_fire

execute if block ~ ~ ~ #ds:air run setblock ~ ~ ~ fire