tag @s add ds_lost_5050

execute store result score @s ds-reg1 run random value 1..10

execute if score @s ds-reg1 matches 1 run return run give @s ancient_debris 2
execute if score @s ds-reg1 matches 2 run return run give @s wither_skeleton_skull
execute if score @s ds-reg1 matches 3 run return run give @s sniffer_egg
execute if score @s ds-reg1 matches 4 run return run give @s name_tag 5
execute if score @s ds-reg1 matches 5 run return run give @s diamond_block
execute if score @s ds-reg1 matches 6 run return run give @s enchanted_book[stored_enchantments={levels:{"mending":1}}]
execute if score @s ds-reg1 matches 7 run return run give @s enchanted_book[stored_enchantments={levels:{"unbreaking":3}}]
execute if score @s ds-reg1 matches 8 run return run give @s golden_carrot 32
execute if score @s ds-reg1 matches 9 run return run give @s rabbit_foot 5
execute if score @s ds-reg1 matches 10 run return run give @s shulker_shell 6
