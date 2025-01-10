scoreboard players set @s ds-spell_cast 0

# Get the type of weapon
execute store result score @s ds-var run data get entity @s SelectedItem.components."minecraft:custom_data".ds_wand_type
# Get the ascension of weapon
execute store result score @s ds-ascension run data get entity @s SelectedItem.components."minecraft:custom_data".ds_ascension

execute if score @s ds-var matches 1 run return run function ds:spells/jumper/cast
execute if score @s ds-var matches 2 run return run function ds:spells/conductorsbaton/cast
execute if score @s ds-var matches 3 run return run function ds:spells/calamity/cast
execute if score @s ds-var matches 4 run return run function ds:spells/miningfever/cast
execute if score @s ds-var matches 5 run return run function ds:spells/galaxy/cast
execute if score @s ds-var matches 6 run return run function ds:spells/nullification/cast
execute if score @s ds-var matches 7 run return run function ds:spells/crashlanding/cast