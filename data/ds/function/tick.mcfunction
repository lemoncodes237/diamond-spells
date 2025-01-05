execute as @a if score @s ds-spell_cast matches 1.. at @s run function ds:cast

scoreboard players add #ds-tick ds-var 1
scoreboard players add #ds-tick ds-reg1 1
execute if score #ds-tick ds-reg1 matches 20.. run function ds:second

# In the Rush attack of Calamity
execute as @a if predicate ds:calamity_cast at @s run function ds:spells/calamity/attack
# Clear armor stands
execute as @e[type=armor_stand,tag=calamity_proj] if predicate ds:on_ground run kill @s
# Calamity Ultimate
execute as @a if predicate ds:death_shower at @s run function ds:spells/calamity/aim_ultimate
# Calamity Ultimate Attack
execute as @e[type=marker,tag=calamity_ultimate_attack] at @s run function ds:spells/calamity/prepare_ultimate_attack

# Galaxy Ultimate
execute as @e[tag=galaxy_meteor_location,type=marker] at @s run function ds:spells/galaxy/meteor_circle
execute as @e[tag=galaxy_meteor,type=block_display] at @s run function ds:spells/galaxy/move_to_impact