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

# Ember Core Ultimate Ascension 5 tag riddance
execute as @a[tag=ascension_5_lava_walk] unless predicate ds:lava_walk run tag @s remove ascension_5_lava_walk
# Ember Core Ultimate
execute as @a if predicate ds:lava_walk at @s run function ds:spells/embercore/lava_walk

# Oceanic Judge Ultimate
execute as @e[type=marker,tag=oceanicjudge_wave] at @s run function ds:spells/oceanicjudge/move_wave

# Clearsight Ultimate
execute as @e[type=item_display,tag=ds_all_seeing_eye] at @s run function ds:spells/clearsight/all_seeing_eye
execute as @e[type=marker,tag=incoming_eye_attack] at @s run function ds:spells/clearsight/cause_damage