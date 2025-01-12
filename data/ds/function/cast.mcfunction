scoreboard players set @s ds-spell_cast 0

# Only 5 wands are allowed at a time.
execute as @a store result score @s ds-reg1 run clear @s carrot_on_a_stick[custom_data~{ds_wand:1}] 0
execute if score @s ds-reg1 matches 6.. run return run function ds:too_many_wands

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
execute if score @s ds-var matches 8 run return run function ds:spells/embercore/cast
execute if score @s ds-var matches 9 run return run function ds:spells/sizeshifter/cast