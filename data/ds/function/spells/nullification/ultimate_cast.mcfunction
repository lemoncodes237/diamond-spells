# Ultimate - Clearance

# Set score if needed
execute unless score @s ds-nullification-ultimate matches 0.. run scoreboard players set @s ds-nullification-ultimate 0

scoreboard players operation @s ds-reg1 = @s ds-nullification-ultimate
execute if score @s ds-reg1 > #ds-tick ds-var run return run function ds:lib/cooldown

function ds:spells/nullification/clear
particle end_rod ~ ~ ~ 0 0 0 0.5 20
playsound entity.player.levelup master @a ~ ~ ~

# Ascension 2: Rejuvenation
execute if score @s ds-ascension matches 2.. run effect give @s regeneration 10

# Ascension 4: Rehabilitation
execute if score @s ds-ascension matches 4.. run tag @s add nullification_ultimate_a4

scoreboard players operation @s ds-nullification-ultimate = #ds-tick ds-var
# 30s cooldown
scoreboard players add @s ds-nullification-ultimate 600

# Ascension 1: Veto
execute if score @s ds-ascension matches 1.. run scoreboard players remove @s ds-nullification-ultimate 120

advancement grant @s only ds:adv/easy/better_than_milk