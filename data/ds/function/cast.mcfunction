scoreboard players set @s ds-spell_cast 0

# Get the type of weapon
execute store result score @s ds-var run data get entity @s SelectedItem.components."minecraft:custom_data".type

execute if score @s ds-var matches 1 run return run function ds:spells/jumper/cast