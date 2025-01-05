# Normal Attack - Dig

# Set score if needed
execute unless score @s ds-mining-fever-normal matches 0.. run scoreboard players set @s ds-mining-fever-normal 0

scoreboard players operation @s ds-reg1 = @s ds-mining-fever-normal
execute if score @s ds-reg1 > #ds-tick ds-var run return run function ds:lib/cooldown

scoreboard players set @s ds-var 0
execute anchored eyes positioned ^ ^ ^1 run function ds:spells/miningfever/laser

scoreboard players operation @s ds-mining-fever-normal = #ds-tick ds-var
# 1.5 second cooldown
scoreboard players add @s ds-mining-fever-normal 30