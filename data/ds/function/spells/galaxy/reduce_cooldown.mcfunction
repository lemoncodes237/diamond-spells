# Get the type of weapon
execute store result score @s ds-var run data get entity @s SelectedItem.components."minecraft:custom_data".ds_wand_type
# Get the ascension of weapon
execute store result score @s ds-ascension run data get entity @s SelectedItem.components."minecraft:custom_data".ds_ascension

# Ascension 4: Blood Moon
execute if score @s ds-var matches 5 if score @s ds-ascension matches 4.. run scoreboard players remove @s ds-galaxy-ultimate 100

advancement revoke @s only ds:kill_enemy