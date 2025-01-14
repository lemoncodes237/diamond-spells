# Ultimate - Frenzy

# Set score if needed
execute unless score @s ds-sahd-ultimate matches 0.. run scoreboard players set @s ds-sahd-ultimate 0

scoreboard players operation @s ds-reg1 = @s ds-sahd-ultimate
execute if score @s ds-reg1 > #ds-tick ds-var run return run function ds:lib/cooldown

effect give @s strength 20 0

scoreboard players operation @s ds-sahd-frenzy = #ds-tick ds-var
scoreboard players add @s ds-sahd-frenzy 400

scoreboard players set @s ds-sahd-strength 0

# Ascension 1: Strong Start
execute if score @s ds-ascension matches 1.. run function ds:spells/sahd/on_kill

# Ascension 2: Extra Strength
# This tag is removed in ds:second.
execute if score @s ds-ascension matches 2.. run tag @s add ascension_2_frenzy

# Ascension 4: Speedy Frenzy
execute if score @s ds-ascension matches 4.. run effect give @s speed 20 1 true

playsound entity.elder_guardian.curse master @a ~ ~ ~

scoreboard players operation @s ds-sahd-ultimate = #ds-tick ds-var
# 1 minute 30 second cooldown
scoreboard players add @s ds-sahd-ultimate 1800