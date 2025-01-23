# Get the type of weapon
execute store result score @s ds-reg1 run data get entity @s SelectedItem.components."minecraft:custom_data".ds_wand_type
# Get the ascension of weapon
execute store result score @s ds-reg2 run data get entity @s SelectedItem.components."minecraft:custom_data".ds_ascension

# Get the type of weapon on offhand
execute store result score @s ds-reg3 run data get entity @s Inventory[{Slot:-106b}].components."minecraft:custom_data".ds_wand_type
# Get the ascension of weapon on offhand
execute store result score @s ds-reg4 run data get entity @s Inventory[{Slot:-106b}].components."minecraft:custom_data".ds_ascension

execute unless score @s ds-reg1 = @s ds-reg3 run return run title @s actionbar "The wands in your hands must be of the same type in order to ascend your wand!"

execute unless score @s ds-reg4 matches 0 run return run title @s actionbar "The wand in your offhand must be Ascension 0 in order to ascend your wand!"

execute if score @s ds-reg2 matches 5.. run return run title @s actionbar "The wand in your mainhand cannot be ascended further!"

# Ascension tests passed, time to ascend!
item replace entity @s weapon.mainhand with air
item replace entity @s weapon.offhand with air

playsound item.totem.use master @s ~ ~ ~
playsound ui.toast.challenge_complete master @s ~ ~ ~ 2
particle totem_of_undying ~ ~1 ~ 0.5 1 0.5 0 50
title @s actionbar "You ascended your wand!"

execute if score @s ds-reg2 matches 0 run return run function ds:lib/ascension/ascension_1/ascend
execute if score @s ds-reg2 matches 1 run return run function ds:lib/ascension/ascension_2/ascend
execute if score @s ds-reg2 matches 2 run return run function ds:lib/ascension/ascension_3/ascend
execute if score @s ds-reg2 matches 3 run return run function ds:lib/ascension/ascension_4/ascend
execute if score @s ds-reg2 matches 4 run return run function ds:lib/ascension/ascension_5/ascend