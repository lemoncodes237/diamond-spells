particle crit ^ ^ ^ 0.2 0.2 0.2 0 2

scoreboard players add @s ds-var 1

execute as @e[distance=..2,tag=!singularity_caster,type=!#ds:immune] run damage @s 6 player_attack by @a[tag=singularity_caster,limit=1,sort=nearest]

# Ascension 2: Slowing Strike
execute if score @s ds-ascension matches 2.. run effect give @e[distance=..2,tag=!singularity_caster,type=!#ds:immune] slowness 2 1

execute unless block ~ ~ ~ #ds:no_block run return 0

execute if score @s ds-var matches 1..10 positioned ^ ^ ^1 run return run function ds:spells/singularity/line_attack