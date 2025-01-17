scoreboard players add @s ds-reg1 1
execute if score @s ds-reg1 matches 11.. run return 0

particle enchanted_hit ~ ~1 ~ 0 0 0 0 1

execute as @e[type=!#ds:immune,distance=..2,tag=!blunder_caster] run damage @s 15 player_attack by @a[tag=blunder_caster,limit=1]

execute positioned ^ ^ ^1 run return run function ds:spells/blunder/create_beams