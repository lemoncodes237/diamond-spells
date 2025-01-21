# Positive values indicate an active daily
# Zero indicates a completed daily
execute store result score @s ds-daily run random value 1..6

function ds:daily/show_daily

execute if score @s ds-daily matches 1 run return run advancement revoke @s only ds:daily/zombie
execute if score @s ds-daily matches 2 run return run advancement revoke @s only ds:daily/skeleton
execute if score @s ds-daily matches 3 run return run advancement revoke @s only ds:daily/creeper
execute if score @s ds-daily matches 4 run return run advancement revoke @s only ds:daily/spider
execute if score @s ds-daily matches 5 run return run advancement revoke @s only ds:daily/trade
execute if score @s ds-daily matches 6 run return run advancement revoke @s only ds:daily/spectral_star
