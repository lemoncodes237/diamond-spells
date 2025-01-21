scoreboard players add @s ds-pity 1

kill @e[type=item_display,tag=ds_kill_star,limit=1]

advancement grant @s only ds:adv/easy/gamble
scoreboard players add @s ds-pulls 1

execute if score @s ds-pulls matches 10.. run advancement grant @s only ds:adv/easy/wish10
execute if score @s ds-pulls matches 100.. run advancement grant @s only ds:adv/intermediate/hundred
execute if score @s ds-pulls matches 1000.. run advancement grant @s only ds:adv/hard/thousand
execute if score @s ds-daily matches 6 run advancement grant @s only ds:daily/spectral_star

execute if score @s ds-pity matches 100.. run return run function ds:gacha/get_legendary

execute store result score @s ds-reg1 run random value 1..100

execute if score @s ds-reg1 matches 1 run return run function ds:gacha/get_legendary

scoreboard players add @s ds-rare-pity 1
execute if score @s ds-rare-pity matches 10.. run return run function ds:gacha/get_rare

execute if score @s ds-reg1 matches 2..10 run return run function ds:gacha/get_rare
return run function ds:gacha/get_common