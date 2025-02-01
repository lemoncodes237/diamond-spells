scoreboard players set @s ds-reg1 0
execute anchored eyes rotated ~-80 ~ run function ds:spells/sautrie/sword_swipe_big

execute if score @s ds-ascension matches 0..1 run execute anchored eyes positioned ^ ^ ^2.5 as @e[type=!#ds:immune,distance=..3.5,tag=!sautrie_caster] run damage @s 6 player_attack by @a[tag=sautrie_caster,limit=1]
# Ascension 2: Stronger Swipe
execute if score @s ds-ascension matches 2.. run execute anchored eyes positioned ^ ^ ^2.5 as @e[type=!#ds:immune,distance=..3.5,tag=!sautrie_caster] run damage @s 7.2 player_attack by @a[tag=sautrie_caster,limit=1]

scoreboard players operation @s ds-sautrie-normal = #ds-tick ds-var
# 1 second cooldown
scoreboard players add @s ds-sautrie-normal 20

scoreboard players add @s ds-sautrie-hiddencounter 1
execute if score @s ds-sautrie-hiddencounter matches 3.. anchored eyes run return run function ds:spells/sautrie/launch_attack