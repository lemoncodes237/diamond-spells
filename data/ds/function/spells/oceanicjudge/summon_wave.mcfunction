summon marker ^ ^ ^2 {Tags:["direction"]}
data modify entity @e[type=marker,tag=direction,distance=..3,limit=1] Pos[1] set from entity @s Pos[1]

summon marker ~ ~ ~ {Tags:["wave_temp","oceanicjudge_wave"]}
execute if score @s ds-ascension matches 5.. run tag @e[type=marker,tag=wave_temp,distance=..3,limit=1] add ascension_5_wave
execute as @e[type=marker,tag=wave_temp,distance=..3,limit=1] at @s anchored eyes run tp @s ~ ~ ~ facing entity @e[type=marker,tag=direction,distance=..3,limit=1]
execute as @e[type=marker,tag=wave_temp,distance=..3,limit=1] at @s anchored eyes run tp @s ^ ^ ^3

# Generate Wave ID
scoreboard players operation @e[type=marker,tag=wave_temp,distance=..7,limit=1] ds-id = @s ds-id

tag @e[type=marker,tag=wave_temp,distance=..7] remove wave_temp
kill @e[type=marker,tag=direction,distance=..3]
