scoreboard players add @s ds-reg1 1
execute if score @s ds-reg1 matches 160.. run return 0

execute store result storage ds:sautrie color double 0.006 run scoreboard players get @s ds-reg1

scoreboard players set @s ds-reg2 0

execute positioned ^ ^ ^2 run function ds:spells/sautrie/swipe_line_big

execute rotated ~1 ~ run return run function ds:spells/sautrie/sword_swipe_big