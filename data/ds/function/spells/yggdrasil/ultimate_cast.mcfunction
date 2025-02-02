# Ultimate - Lumber

# Set score if needed
execute unless score @s ds-yggdrasil-ultimate matches 0.. run scoreboard players set @s ds-yggdrasil-ultimate 0

scoreboard players operation @s ds-reg1 = @s ds-yggdrasil-ultimate
execute if score @s ds-reg1 > #ds-tick ds-var run return run function ds:lib/cooldown

tag @s add ds_yggdrasil_lumber
playsound block.anvil.destroy master @a ~ ~ ~ 1 0.8

scoreboard players operation @s ds-yggdrasil-lumber = #ds-tick ds-var
scoreboard players add @s ds-yggdrasil-lumber 300
effect give @s haste 15 0

# Ascension 1: Longer Lumber
execute if score @s ds-ascension matches 1.. run scoreboard players add @s ds-yggdrasil-lumber 120
execute if score @s ds-ascension matches 1.. run effect give @s haste 21

# Ascension 2: Speedy Chops
execute if score @s ds-ascension matches 2.. run effect give @s speed 21 0

scoreboard players set @s ds-yggdrasil-oak 0
scoreboard players set @s ds-yggdrasil-spruce 0
scoreboard players set @s ds-yggdrasil-acacia 0
scoreboard players set @s ds-yggdrasil-jungle 0
scoreboard players set @s ds-yggdrasil-birch 0
scoreboard players set @s ds-yggdrasil-dark_oak 0
scoreboard players set @s ds-yggdrasil-pale_oak 0
scoreboard players set @s ds-yggdrasil-cherry 0
scoreboard players set @s ds-yggdrasil-mangrove 0
scoreboard players set @s ds-yggdrasil-warped 0
scoreboard players set @s ds-yggdrasil-crimson 0

# Ascension 4: Regrowth
execute if score @s ds-ascension matches 4.. run give @s bone_meal 10

scoreboard players operation @s ds-yggdrasil-ultimate = #ds-tick ds-var
# 30 second cooldown
scoreboard players add @s ds-yggdrasil-ultimate 600