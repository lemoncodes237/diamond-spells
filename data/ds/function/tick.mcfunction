execute as @a if score @s ds-spell_cast matches 1.. at @s run function ds:cast

scoreboard players add #ds-tick ds-var 1
scoreboard players add #ds-tick ds-reg1 1
scoreboard players add #ds-tick ds-reg2 1
execute if score #ds-tick ds-reg1 matches 20.. run function ds:second
execute if score #ds-tick ds-reg2 matches 2.. run function ds:half_speed

# Check for new day
execute store result score #ds-tick ds-reg3 run time query daytime
execute if score #ds-tick ds-reg3 matches 1 run function ds:new_day

# Gacha!
execute as @e[type=item_display,tag=ds_spectral_star] at @s run function ds:gacha/get_ready

# These should be run every tick
# Galaxy Ultimate
execute as @e[tag=galaxy_meteor_location,type=marker] at @s run function ds:spells/galaxy/meteor_circle
execute as @e[tag=galaxy_meteor,type=block_display] at @s run function ds:spells/galaxy/move_to_impact

# Crash Landing Normal Attack
execute as @e[tag=sword_drop,type=item_display] at @s run function ds:spells/crashlanding/sword_drop
# Crash Landing Ultimate
execute as @a[tag=crashlanding_in_ultimate] at @s run function ds:spells/crashlanding/in_ultimate

# Ember Core Arrow detection
execute as @e[type=arrow,tag=embercore_flame] at @s run function ds:spells/embercore/set_ground_ablaze

# Size Shifter Normal Attack
execute as @e[type=block_display,tag=growth_orb] at @s run function ds:spells/sizeshifter/grow_orb

# For falling block attacks, making sure the blocks do not place down.
# Do NBT test after the first one
# From https://www.reddit.com/r/MinecraftCommands/comments/lsv4l3/is_there_any_way_to_make_falling_block_do_not/
execute as @e[type=falling_block, tag=ds_block_proj] if entity @s[nbt={Time:1}] run data merge entity @s {BlockState:{Name:"minecraft:wheat"},DropItem:0b}

# Singularity Ultimate
execute as @e[type=block_display,tag=ds_blackhole] at @s run function ds:spells/singularity/black_hole

# Hydrogen Normal Attack
execute as @e[type=item_display,tag=ds_tnt_piston] at @s run function ds:spells/hydrogen/tnt_piston

# Absolute Zero Ultimate
execute as @e[type=marker,tag=ds_sheer_cold] at @s run function ds:spells/absolutezero/sheer_cold

# Autumn Wind Normal Attack
execute as @e[type=!#ds:immune,tag=ds_autumnwind_swoop] at @s run function ds:spells/autumnwind/check_health