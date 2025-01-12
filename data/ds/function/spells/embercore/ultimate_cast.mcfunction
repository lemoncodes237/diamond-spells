# Ultimate - Lava Walk

# Set score if needed
execute unless score @s ds-embercore-ultimate matches 0.. run scoreboard players set @s ds-embercore-ultimate 0

scoreboard players operation @s ds-reg1 = @s ds-embercore-ultimate
execute if score @s ds-reg1 > #ds-tick ds-var run return run function ds:lib/cooldown

# If we are in a different ultimate state, do not cast the ultimate
execute if predicate ds:in_ultimate unless predicate ds:lava_walk run return run function ds:lib/in_ultimate

playsound block.lava.extinguish master @a ~ ~ ~

effect give @s luck 30 25
effect give @s speed 30 1
effect give @s fire_resistance 30

effect give @e[type=!#ds:immune,tag=!embercore_caster,distance=..5] darkness 7

execute if score @s ds-ascension matches 5.. run tag @s add ascension_5_lava_walk

scoreboard players operation @s ds-embercore-ultimate = #ds-tick ds-var
# 1 minute cooldown
scoreboard players add @s ds-embercore-ultimate 1200

# Zero Cooldown when in Nether and Ascension 1
execute if biome ~ ~ ~ #is_nether if score @s ds-ascension matches 1.. run scoreboard players remove @s ds-embercore-ultimate 1200