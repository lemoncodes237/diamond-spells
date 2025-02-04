scoreboard players add @s ds-var 1

execute if score @s ds-var matches 8.. run return 0

execute if score @s ds-ascension matches 0..1 as @e[distance=..3,type=!#ds:immune,tag=!shredder_caster] run damage @s 5 player_attack by @a[tag=shredder_caster,limit=1]
# Ascension 2: Stronger Puncture
execute if score @s ds-ascension matches 2.. as @e[distance=..3,type=!#ds:immune,tag=!shredder_caster] run damage @s 7 player_attack by @a[tag=shredder_caster,limit=1]

particle sweep_attack ~ ~ ~ 0 0 0 0 1

execute positioned ^ ^ ^1 run return run function ds:spells/shredder/puncture