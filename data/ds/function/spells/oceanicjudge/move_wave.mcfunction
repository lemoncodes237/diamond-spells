tp @s ^ ^ ^0.5
function ds:spells/oceanicjudge/wave_particles
scoreboard players add @s ds-var 1

execute if score @s ds-var matches 60.. run kill @s

# Find the person who spawned the wave
scoreboard players operation #ds-temp ds-id = @s ds-id
execute as @a if score @s ds-id = #ds-temp ds-id run tag @s add ds_wave_spawner

execute positioned ^ ^ ^ as @e[distance=..1.5,type=!#ds:immune,tag=!ds_wave_spawner] run damage @s 8 player_attack by @a[tag=ds_wave_spawner,limit=1]
execute positioned ^1 ^ ^ as @e[distance=..1.5,type=!#ds:immune,tag=!ds_wave_spawner] run damage @s 8 player_attack by @a[tag=ds_wave_spawner,limit=1]
execute positioned ^2 ^ ^ as @e[distance=..1.5,type=!#ds:immune,tag=!ds_wave_spawner] run damage @s 8 player_attack by @a[tag=ds_wave_spawner,limit=1]
execute positioned ^3 ^ ^ as @e[distance=..1.5,type=!#ds:immune,tag=!ds_wave_spawner] run damage @s 8 player_attack by @a[tag=ds_wave_spawner,limit=1]
execute positioned ^4 ^ ^ as @e[distance=..1.5,type=!#ds:immune,tag=!ds_wave_spawner] run damage @s 8 player_attack by @a[tag=ds_wave_spawner,limit=1]
execute positioned ^5 ^ ^ as @e[distance=..1.5,type=!#ds:immune,tag=!ds_wave_spawner] run damage @s 8 player_attack by @a[tag=ds_wave_spawner,limit=1]
execute positioned ^-1 ^ ^ as @e[distance=..1.5,type=!#ds:immune,tag=!ds_wave_spawner] run damage @s 8 player_attack by @a[tag=ds_wave_spawner,limit=1]
execute positioned ^-2 ^ ^ as @e[distance=..1.5,type=!#ds:immune,tag=!ds_wave_spawner] run damage @s 8 player_attack by @a[tag=ds_wave_spawner,limit=1]
execute positioned ^-3 ^ ^ as @e[distance=..1.5,type=!#ds:immune,tag=!ds_wave_spawner] run damage @s 8 player_attack by @a[tag=ds_wave_spawner,limit=1]
execute positioned ^-4 ^ ^ as @e[distance=..1.5,type=!#ds:immune,tag=!ds_wave_spawner] run damage @s 8 player_attack by @a[tag=ds_wave_spawner,limit=1]
execute positioned ^-5 ^ ^ as @e[distance=..1.5,type=!#ds:immune,tag=!ds_wave_spawner] run damage @s 8 player_attack by @a[tag=ds_wave_spawner,limit=1]

tag @a remove ds_wave_spawner

execute if score @s ds-var matches 30.. if entity @s[tag=ascension_5_wave] run function ds:spells/oceanicjudge/second_wave