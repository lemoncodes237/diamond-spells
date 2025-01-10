scoreboard players set #ds-tick ds-reg2 0

# In the Rush attack of Calamity
execute as @a[tag=calamity_normal] at @s run function ds:spells/calamity/attack
# Clear armor stands
execute as @e[type=armor_stand,tag=calamity_proj] if predicate ds:on_ground run kill @s
# Calamity Ultimate
execute as @a if predicate ds:death_shower at @s run function ds:spells/calamity/aim_ultimate
# Calamity Ultimate Attack
execute as @e[type=marker,tag=calamity_ultimate_attack] at @s run function ds:spells/calamity/prepare_ultimate_attack

# Jump Detection
execute as @a if score @s ds-jump matches 1.. at @s run function ds:check_jump