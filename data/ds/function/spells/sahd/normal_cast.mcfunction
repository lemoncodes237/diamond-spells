# Normal Attack - Sweep

# Set score if needed
execute unless score @s ds-sahd-normal matches 0.. run scoreboard players set @s ds-sahd-normal 0

scoreboard players operation @s ds-reg1 = @s ds-sahd-normal
execute if score @s ds-reg1 > #ds-tick ds-var run return run function ds:lib/cooldown

scoreboard players set @s ds-var 0

execute anchored eyes positioned ^ ^ ^3 run function ds:spells/sahd/sweep_attack

scoreboard players operation @s ds-sahd-normal = #ds-tick ds-var
# 1.5 second cooldown
scoreboard players add @s ds-sahd-normal 30