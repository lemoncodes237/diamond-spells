scoreboard players set @s ds-sautrie-hiddencounter 0

summon marker ^ ^ ^2 {Tags:["direction"]}
data modify entity @e[type=marker,tag=direction,distance=..3,limit=1] Pos[1] set from entity @s Pos[1]

summon marker ~ ~ ~ {Tags:["ds_sautrie_launch_temp","ds_sautrie_launch"]}
execute as @e[type=marker,tag=ds_sautrie_launch_temp,distance=..3,limit=1] at @s anchored eyes run tp @s ~ ~ ~ facing entity @e[type=marker,tag=direction,distance=..3,limit=1]
execute as @e[type=marker,tag=ds_sautrie_launch_temp,distance=..3,limit=1] at @s anchored eyes run tp @s ^ ^ ^2
execute as @e[type=marker,tag=ds_sautrie_launch_temp,distance=..3,limit=1] at @s run tp @s ~ ~1 ~

scoreboard players operation @e[type=marker,tag=ds_sautrie_launch_temp,distance=..7,limit=1] ds-id = @s ds-id

tag @e[type=marker,tag=ds_sautrie_launch_temp,distance=..7] remove ds_sautrie_launch_temp
kill @e[type=marker,tag=direction,distance=..3]