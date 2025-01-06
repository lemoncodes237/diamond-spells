particle crit ^ ^ ^ 0 0 0 0 1

scoreboard players add @s ds-var 1
execute as @e[distance=..1.5,tag=!mining_fever_caster,type=!#ds:immune] run damage @s 3 player_attack by @a[tag=mining_fever_caster,limit=1,sort=nearest]
execute unless block ~ ~ ~ #ds:stones unless block ~ ~ ~ #ds:no_block run return 0

execute if block ~ ~ ~ #ds:stones run setblock ~ ~ ~ air destroy

# Ascension 0 reach
execute if score @s ds-ascension matches 0 if score @s ds-var matches 1..5 positioned ^ ^ ^1 run return run function ds:spells/miningfever/laser

# Ascension 1: Excavation
execute if score @s ds-ascension matches 1.. if score @s ds-var matches 1..10 positioned ^ ^ ^1 run return run function ds:spells/miningfever/laser
