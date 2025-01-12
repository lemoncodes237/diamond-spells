execute store result storage ds:obsidian_replaced replaced int 1 run fill ~-2 ~-1 ~-2 ~2 ~-1 ~2 obsidian replace lava
particle small_flame ~ ~1 ~ 0.5 0.5 0.5 0.1 3

execute if entity @s[tag=ascension_5_lava_walk] run function ds:spells/embercore/get_obsidian with storage ds:obsidian_replaced