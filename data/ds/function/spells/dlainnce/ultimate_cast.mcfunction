# Ultimate - Deity of Chaos

# Set score if needed
execute unless score @s ds-dlainnce-ultimate matches 0.. run scoreboard players set @s ds-dlainnce-ultimate 0

scoreboard players operation @s ds-reg1 = @s ds-dlainnce-ultimate
execute if score @s ds-reg1 > #ds-tick ds-var run return run function ds:lib/cooldown

# If it has been over 3 seconds since last Surge, cast Chaotic Ending. Otherwise, cast Chaotic Surge.
execute if score @s ds-dlainnce-normal > #ds-tick ds-var run function ds:spells/dlainnce/chaotic_surge
execute unless score @s ds-dlainnce-normal > #ds-tick ds-var run function ds:spells/dlainnce/chaotic_ending

scoreboard players operation @s ds-dlainnce-ultimate = #ds-tick ds-var
# 30 second cooldown
scoreboard players add @s ds-dlainnce-ultimate 600