execute if score @s guide matches 1 run function ds:guide/general
execute if score @s guide matches 2 run function ds:guide/wand
execute if score @s guide matches 3 run function ds:guide/spectral_star
execute if score @s guide matches 4 run function ds:guide/use
execute if score @s guide matches 5 run function ds:guide/ascension
execute if score @s guide matches 6 run function ds:guide/discord
execute unless score @s guide matches 1..6 run function ds:guide/unknown

scoreboard players set @s guide 0