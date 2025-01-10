# Ultimate - Mighty Impact

# Set score if needed
execute unless score @s ds-crashlanding-ultimate matches 0.. run scoreboard players set @s ds-crashlanding-ultimate 0

scoreboard players operation @s ds-reg1 = @s ds-crashlanding-ultimate
execute if score @s ds-reg1 > #ds-tick ds-var run return run function ds:lib/cooldown

effect give @s jump_boost 20 80 true
attribute @s gravity modifier add ds:mighty_impact 10 add_value
attribute @s safe_fall_distance modifier add ds:mighty_impact 1000 add_value
execute unless score @s ds-ascension matches 1.. run effect give @s speed 20 2 true

# Ascension 1: Chase
execute if score @s ds-ascension matches 1.. run effect give @s speed 20 4 true

execute if score @s ds-ascension matches 2.. run tag @s add hard_landing
execute if score @s ds-ascension matches 4.. run tag @s add hard_impact

effect give @s luck 20 24 true
tag @s add crashlanding_in_ultimate

playsound entity.wither.spawn master @a ~ ~ ~

scoreboard players operation @s ds-crashlanding-ultimate = #ds-tick ds-var
# 2 minute cooldown
scoreboard players add @s ds-crashlanding-ultimate 2400