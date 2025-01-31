# Ultimate - Tornado

# Set score if needed
execute unless score @s ds-autumnwind-ultimate matches 0.. run scoreboard players set @s ds-autumnwind-ultimate 0

scoreboard players operation @s ds-reg1 = @s ds-autumnwind-ultimate
execute if score @s ds-reg1 > #ds-tick ds-var run return run function ds:lib/cooldown

function ds:spells/autumnwind/summon_tornado

scoreboard players operation @s ds-autumnwind-ultimate = #ds-tick ds-var
# 40 second cooldown
scoreboard players add @s ds-autumnwind-ultimate 800