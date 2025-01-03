scoreboard players set @s ds-spell_cast 0

# Get the type of weapon
execute store result score @s ds-var run data get entity @s SelectedItem.components."minecraft:custom_data".type

execute if score @s ds-var matches 1 run return run function ds:spells/jumper/cast
execute if score @s ds-var matches 2 run return run function ds:spells/conductorsbaton/cast
execute if score @s ds-var matches 3 run return run function ds:spells/calamity/cast