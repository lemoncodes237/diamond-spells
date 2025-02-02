particle block_crumble{block_state:{Name:"iron_block"}} ^ ^ ^ 0 0 0 0 1

scoreboard players add @s ds-var 1
execute unless block ~ ~ ~ #logs run return 0

setblock ~ ~ ~ air destroy

execute positioned ^ ^ ^1 run return run function ds:spells/yggdrasil/additional_beam