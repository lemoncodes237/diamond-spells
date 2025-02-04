scoreboard players set @s ds-spell_cast 0

# Check if the player is trying to ascend their weapon
execute if predicate ds:is_sneaking if items entity @s weapon.offhand carrot_on_a_stick[custom_data~{ds_wand:1}] if items entity @s weapon.mainhand carrot_on_a_stick[custom_data~{ds_wand:1}] run return run function ds:lib/ascension/ascend

# Check if a Spectral Star is being used
execute as @a store result score @s ds-var run data get entity @s SelectedItem.components."minecraft:custom_data".ds_spectral_star
execute if score @s ds-var matches 1.. run return run function ds:gacha/pull

# Check if we are even trying to use a wand
execute as @a store result score @s ds-var run data get entity @s SelectedItem.components."minecraft:custom_data".ds_wand
execute unless score @s ds-var matches 1.. run return 0

# Only 5 wands are allowed at a time.
execute as @a store result score @s ds-reg1 run clear @s carrot_on_a_stick[custom_data~{ds_wand:1}] 0
execute if score @s ds-reg1 matches 6.. unless entity @s[tag=ds_override_limit] run return run function ds:too_many_wands

# Get the type of weapon
execute store result score @s ds-var run data get entity @s SelectedItem.components."minecraft:custom_data".ds_wand_type
# Get the ascension of weapon
execute store result score @s ds-ascension run data get entity @s SelectedItem.components."minecraft:custom_data".ds_ascension

# New way to do it - use macros
execute store result storage ds:wand num int 1 run scoreboard players get @s ds-var
function ds:lib/wand/cast with storage ds:wand