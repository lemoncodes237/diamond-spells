summon marker ^ ^ ^2 {Tags:["direction"]}
data modify entity @e[type=marker,tag=direction,distance=..3,limit=1] Pos[1] set from entity @s Pos[1]

summon marker ~ ~ ~ {Tags:["ds_tornado_temp","ds_tornado"]}
execute as @e[type=marker,tag=ds_tornado_temp,distance=..3,limit=1] at @s anchored eyes run tp @s ~ ~ ~ facing entity @e[type=marker,tag=direction,distance=..3,limit=1]
execute as @e[type=marker,tag=ds_tornado_temp,distance=..3,limit=1] at @s anchored eyes run tp @s ^ ^ ^3

scoreboard players operation @e[type=marker,tag=ds_tornado_temp,distance=..7,limit=1] ds-id = @s ds-id

# Ascension 3: Thundering Tornado
execute if score @s ds-ascension matches 3.. run tag @e[type=marker,tag=ds_tornado_temp,distance=..7,limit=1] add ds_tornado_ascension_3

tag @e[type=marker,tag=ds_tornado_temp,distance=..7] remove ds_tornado_temp
kill @e[type=marker,tag=direction,distance=..3]