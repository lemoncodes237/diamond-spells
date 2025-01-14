summon marker ^ ^ ^-15 {Tags:["wave_temp","oceanicjudge_wave"]}

tag @s add original_wave

execute positioned ^ ^ ^-15 as @e[type=marker,tag=wave_temp,distance=..3,limit=1] at @s anchored eyes run tp @s ~ ~ ~ facing entity @e[type=marker,tag=original_wave,distance=..20,sort=nearest,limit=1]

execute positioned ^ ^ ^-15 run scoreboard players operation @e[type=marker,tag=wave_temp,distance=..7,limit=1] ds-id = @s ds-id

execute positioned ^ ^ ^-15 run tag @e[type=marker,tag=wave_temp,distance=..7] remove wave_temp

tag @s remove original_wave
tag @s remove ascension_5_wave