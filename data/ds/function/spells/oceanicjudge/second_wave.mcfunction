summon marker ^ ^ ^-5 {Tags:["wave_temp","oceanicjudge_wave"]}

tag @s add original_wave

execute positioned ^ ^ ^-5 as @e[type=marker,tag=wave_temp,distance=..3,limit=1] at @s anchored eyes run tp @s ~ ~ ~ facing entity @e[type=marker,tag=original_wave,distance=..15,sort=nearest,limit=1]

execute positioned ^ ^ ^-5 run scoreboard players operation @e[type=marker,tag=wave_temp,distance=..7,limit=1] ds-oceanicjudge-wave-id = @s ds-oceanicjudge-wave-id

execute positioned ^ ^ ^-5 run tag @e[type=marker,tag=wave_temp,distance=..7] remove wave_temp

tag @s remove original_wave
tag @s remove ascension_5_wave