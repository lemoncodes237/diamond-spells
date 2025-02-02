particle block_crumble{block_state:{Name:"iron_block"}} ^ ^ ^ 0 0 0 0 1

scoreboard players add @s ds-var 1

execute as @e[distance=..1.5,tag=!yggdrasil_caster,type=!#ds:immune] run damage @s 3 player_attack by @a[tag=yggdrasil_caster,limit=1,sort=nearest]

execute unless block ~ ~ ~ #ds:no_block unless block ~ ~ ~ #logs run return 0

execute if block ~ ~ ~ #logs run function ds:spells/yggdrasil/vertical_beam

execute if score @s ds-var matches 1..15 positioned ^ ^ ^1 run return run function ds:spells/yggdrasil/chopper