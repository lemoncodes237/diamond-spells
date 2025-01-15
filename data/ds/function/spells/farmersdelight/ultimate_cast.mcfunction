# Ultimate - Growth

# Set score if needed
execute unless score @s ds-farmersdelight-ultimate matches 0.. run scoreboard players set @s ds-farmersdelight-ultimate 0

scoreboard players operation @s ds-reg1 = @s ds-farmersdelight-ultimate
execute if score @s ds-reg1 > #ds-tick ds-var run return run function ds:lib/cooldown

playsound item.bone_meal.use master @a ~ ~ ~ 3
particle composter ~ ~1 ~ 0.5 0.5 0.5 0 30

execute if score @s ds-ascension matches 0..1 run function ds:spells/farmersdelight/weak_growth
# Ascension 2: Longer Growth
execute if score @s ds-ascension matches 2..3 run function ds:spells/farmersdelight/strong_growth
# Ascension 4: Double Growth
execute if score @s ds-ascension matches 4.. run function ds:spells/farmersdelight/strongest_growth

scoreboard players operation @s ds-farmersdelight-ultimate = #ds-tick ds-var
# 2 minute cooldown
scoreboard players add @s ds-farmersdelight-ultimate 2400

# Ascension 5: Quick Growth
execute if score @s ds-ascension matches 5.. run scoreboard players remove @s ds-farmersdelight-ultimate 600