# Find who launched it
scoreboard players operation #ds-temp ds-id = @s ds-id
execute as @a if score @s ds-id = #ds-temp ds-id run tag @s add soren_launcher

execute if entity @s[tag=ascension_2_soren] as @e[distance=..3,type=!#ds:immune,tag=!soren_launcher] run damage @s 7 player_attack by @a[tag=soren_launcher,limit=1]
execute if entity @s[tag=!ascension_2_soren] as @e[distance=..3,type=!#ds:immune,tag=!soren_launcher] run damage @s 5 player_attack by @a[tag=soren_launcher,limit=1]

tag @a[tag=soren_launcher] remove soren_launcher