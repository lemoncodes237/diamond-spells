scoreboard players set @s daily 0

execute if score @s ds-daily matches 0 run return run tellraw @s "You already completed your daily for this Minecraft day!"

tellraw @s "Your daily for this Minecraft day is:"

execute if score @s ds-daily matches 1 run return run tellraw @s "Kill a zombie"
execute if score @s ds-daily matches 2 run return run tellraw @s "Kill a skeleton"
execute if score @s ds-daily matches 3 run return run tellraw @s "Kill a creeper"
execute if score @s ds-daily matches 4 run return run tellraw @s "Kill a spider"
execute if score @s ds-daily matches 5 run return run tellraw @s "Trade with a villager"
execute if score @s ds-daily matches 6 run return run tellraw @s "Use a Spectral Star"
execute if score @s ds-daily matches 7 run return run tellraw @s "Place 64 blocks"
execute if score @s ds-daily matches 8 run return run tellraw @s "Break 64 blocks"