particle sonic_boom ~ ~ ~ 0 0 0 0 1
particle electric_spark ~ ~ ~ 0.5 0.5 0.5 0 10

scoreboard players add @s ds-var 1
execute if score @s ds-ascension matches 0..2 as @e[distance=..3,tag=!clearsight_caster,type=!#ds:immune] run damage @s 5 player_attack by @a[tag=clearsight_caster,limit=1,sort=nearest]
# Ascension 3: Brighter Light
execute if score @s ds-ascension matches 3.. as @e[distance=..3,tag=!clearsight_caster,type=!#ds:immune] run damage @s 7 player_attack by @a[tag=clearsight_caster,limit=1,sort=nearest]

execute if score @s ds-var matches 1..15 positioned ^ ^ ^1 run return run function ds:spells/clearsight/light_trail
