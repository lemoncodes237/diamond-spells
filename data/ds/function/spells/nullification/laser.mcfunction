particle composter ^ ^ ^ 0 0 0 0 1

scoreboard players add @s ds-var 1

execute unless entity @s[tag=nullification_ultimate_a4] as @e[distance=..1.5,tag=!nullification_caster,type=!#ds:immune] run damage @s 4 player_attack by @a[tag=nullification_caster,limit=1,sort=nearest]
# Ascension 4: Rehabilitation
execute if entity @s[tag=nullification_ultimate_a4] as @e[distance=..1.5,tag=!nullification_caster,type=!#ds:immune] run damage @s 6 player_attack by @a[tag=nullification_caster,limit=1,sort=nearest]
execute if entity @s[tag=nullification_ultimate_a4] as @e[distance=..1.5,tag=!nullification_caster,type=!#ds:immune] run effect give @s slowness 5 1

execute unless block ~ ~ ~ #ds:no_block run return 0

execute if score @s ds-var matches 1..10 positioned ^ ^ ^1 run return run function ds:spells/nullification/laser