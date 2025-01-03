# Normal Attack - Beam

# Set score if needed
execute unless score @s ds-jumper-normal matches 0.. run scoreboard players set @s ds-jumper-normal 0

scoreboard players operation @s ds-reg1 = @s ds-jumper-normal
execute if score @s ds-reg1 > #ds-tick ds-var run return run function ds:lib/cooldown

scoreboard players set @s ds-var 0
execute anchored eyes positioned ^ ^ ^1 run function ds:spells/jumper/red_beam

playsound entity.arrow.shoot master @a ~ ~ ~

scoreboard players operation @s ds-jumper-normal = #ds-tick ds-var
# 1 second cooldown
scoreboard players add @s ds-jumper-normal 20