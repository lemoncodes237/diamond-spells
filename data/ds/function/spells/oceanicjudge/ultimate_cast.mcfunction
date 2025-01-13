# Ultimate - Wave

# Set score if needed
execute unless score @s ds-oceanicjudge-ultimate matches 0.. run scoreboard players set @s ds-oceanicjudge-ultimate 0

scoreboard players operation @s ds-reg1 = @s ds-oceanicjudge-ultimate
execute if score @s ds-reg1 > #ds-tick ds-var run return run function ds:lib/cooldown

execute anchored eyes run function ds:spells/oceanicjudge/summon_wave

# Ascension 2: One with Water
execute if score @s ds-ascension matches 2.. run effect give @s water_breathing 30

# Ascension 4: Flow
execute if score @s ds-ascension matches 4.. run effect give @s dolphins_grace 30 1

scoreboard players operation @s ds-oceanicjudge-ultimate = #ds-tick ds-var
# 20 second cooldown
scoreboard players add @s ds-oceanicjudge-ultimate 400

# Ascension 1: In the Depths
execute if score @s ds-ascension matches 1.. if biome ~ ~ ~ #is_ocean run scoreboard players remove @s ds-oceanicjudge-ultimate 600