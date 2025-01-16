title @s actionbar "COMMON"

playsound entity.experience_orb.pickup master @a ~ ~ ~
particle crit ~ ~ ~ 0 0 0 0.2 50 force

execute store result score @s ds-reg1 run random value 1..20

execute if score @s ds-reg1 matches 1 run return run give @s iron_ingot 8
execute if score @s ds-reg1 matches 2 run return run give @s coal 16
execute if score @s ds-reg1 matches 3 run return run give @s cobblestone 64
execute if score @s ds-reg1 matches 4 run return run give @s oak_planks 64
execute if score @s ds-reg1 matches 5 run return run give @s carrot 32
execute if score @s ds-reg1 matches 6 run return run give @s book 3
execute if score @s ds-reg1 matches 7 run return run give @s obsidian 2
execute if score @s ds-reg1 matches 8 run return run give @s redstone 16
execute if score @s ds-reg1 matches 9 run return run give @s lapis_lazuli 16
execute if score @s ds-reg1 matches 10 run return run give @s white_wool 16
execute if score @s ds-reg1 matches 11 run return run give @s grass_block 64
execute if score @s ds-reg1 matches 12 run return run give @s glass 32
execute if score @s ds-reg1 matches 13 run return run give @s copper_ingot 32
execute if score @s ds-reg1 matches 14 run return run give @s terracotta 64
execute if score @s ds-reg1 matches 15 run return run give @s bricks 32
execute if score @s ds-reg1 matches 16 run return run give @s experience_bottle 8
execute if score @s ds-reg1 matches 17 run return run give @s gunpowder 16
execute if score @s ds-reg1 matches 18 run return run give @s bone 16
execute if score @s ds-reg1 matches 19 run return run give @s string 16
execute if score @s ds-reg1 matches 20 run return run give @s ender_pearl 4