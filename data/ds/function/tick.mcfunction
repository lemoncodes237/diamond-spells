execute as @a if score @s ds-spell_cast matches 1.. at @s run function ds:cast

scoreboard players add #ds-tick ds-var 1
scoreboard players add #ds-tick ds-reg1 1
scoreboard players add #ds-tick ds-reg2 1
execute if score #ds-tick ds-reg1 matches 20.. run function ds:second
execute if score #ds-tick ds-reg2 matches 2.. run function ds:half_speed

# These should be run every tick
# Galaxy Ultimate
execute as @e[tag=galaxy_meteor_location,type=marker] at @s run function ds:spells/galaxy/meteor_circle
execute as @e[tag=galaxy_meteor,type=block_display] at @s run function ds:spells/galaxy/move_to_impact

# Crash Landing Normal Attack
execute as @e[tag=sword_drop,type=item_display] at @s run function ds:spells/crashlanding/sword_drop
# Crash Landing Ultimate
execute as @a[tag=crashlanding_in_ultimate] at @s run function ds:spells/crashlanding/in_ultimate