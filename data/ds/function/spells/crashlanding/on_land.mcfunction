playsound entity.wither.break_block master @a ~ ~ ~
particle explosion ~ ~ ~ 1 0 1 0 5

execute unless entity @s[tag=hard_landing] as @e[type=!#ds:immune,tag=!crashlanding_ultimate,distance=..5] run damage @s 10 player_attack by @e[distance=..1,tag=crashlanding_ultimate,limit=1]

execute if entity @s[tag=hard_landing,tag=!hard_impact] as @e[type=!#ds:immune,tag=!crashlanding_ultimate,distance=..5] run function ds:spells/crashlanding/ascension_2_dmg
execute if entity @s[tag=hard_landing,tag=hard_impact] as @e[type=!#ds:immune,tag=!crashlanding_ultimate,distance=..5] run function ds:spells/crashlanding/ascension_4_dmg

particle block_crumble{block_state:"minecraft:stone"} ~ ~0.3 ~ 1 0 1 0.1 50
tag @s remove crashlanding_jumped