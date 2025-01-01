# Normal Attack - Beam

scoreboard players operation @s ds-reg1 = @s ds-jumper-normal
execute if score @s ds-reg1 > #ds-tick ds-var run return run function ds:cooldown

scoreboard players set @s ds-var 0
execute anchored eyes positioned ^ ^ ^1 run function ds:spells/jumper/red_beam

scoreboard players operation @s ds-jumper-normal = #ds-tick ds-var
# 1 second cooldown
scoreboard players add @s ds-jumper-normal 20