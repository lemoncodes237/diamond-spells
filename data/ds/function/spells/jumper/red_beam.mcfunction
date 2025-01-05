particle dust{color:[1,0,0],scale:1} ^ ^ ^ 0 0 0 0 1

scoreboard players add @s ds-var 1
execute as @e[distance=..1.5,tag=!jumper_caster,type=!item] run damage @s 5 player_attack by @a[tag=jumper_caster,limit=1,sort=nearest]
execute unless block ~ ~ ~ #ds:no_block run return 0
execute if score @s ds-var matches 1..10 positioned ^ ^ ^1 run return run function ds:spells/jumper/red_beam