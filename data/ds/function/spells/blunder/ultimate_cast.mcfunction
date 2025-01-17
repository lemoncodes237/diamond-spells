# Ultimate - Rf2

# Set score if needed
execute unless score @s ds-blunder-ultimate matches 0.. run scoreboard players set @s ds-blunder-ultimate 0

scoreboard players operation @s ds-reg1 = @s ds-blunder-ultimate
execute if score @s ds-reg1 > #ds-tick ds-var run return run function ds:lib/cooldown

tag @s add ds_rf2
effect give @s speed 15 1
scoreboard players set @s ds-blunder-rf2 0

# Ascension 3: Zugzwang
execute if score @s ds-ascension matches 3.. run tag @s add ascension_3_rf2

# Ascension 5: Bxh2
execute if score @s ds-ascension matches 5.. run function ds:spells/blunder/beam

# Ascension 1: Opening
execute if score @s ds-ascension matches 1.. run function ds:spells/blunder/face

scoreboard players operation @s ds-blunder-ultimate = #ds-tick ds-var
# 1 minute cooldown
scoreboard players add @s ds-blunder-ultimate 1200