function ds:spells/malison/curse_circle
execute positioned ~ ~6 ~ run function ds:spells/malison/curse_circle

scoreboard players add @s ds-var 1

execute if score @s ds-var matches 5..14 positioned ~ ~3 ~ run return run function ds:spells/malison/attack
execute if score @s ds-var matches 15 run function ds:spells/malison/ultimate_attack
execute if score @s ds-var matches 16.. positioned ~ ~3 ~ run function ds:spells/malison/spread