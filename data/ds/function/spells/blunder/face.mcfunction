summon marker ^ ^ ^1 {Tags:["temp_direction"]}

data modify entity @e[type=marker,tag=temp_direction,distance=..2,limit=1] Pos[1] set from entity @s Pos[1]

scoreboard players set @s ds-var 0
execute facing entity @e[type=marker,tag=temp_direction,distance=..2,limit=1] feet run function ds:spells/blunder/teleport

kill @e[type=marker,tag=temp_direction,distance=..20]