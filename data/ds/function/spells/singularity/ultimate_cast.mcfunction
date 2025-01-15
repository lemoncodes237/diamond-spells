# Ultimate - Black Hole

# Set score if needed
execute unless score @s ds-singularity-ultimate matches 0.. run scoreboard players set @s ds-singularity-ultimate 0

scoreboard players operation @s ds-reg1 = @s ds-singularity-ultimate
execute if score @s ds-reg1 > #ds-tick ds-var run return run function ds:lib/cooldown

summon block_display ~ ~4 ~ {block_state:{Name:black_concrete},transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],translation:[-2,-2,-2],scale:[4,4,4]},Tags:["ds_blackhole","ds_blackhole_temp"]}

scoreboard players operation @e[type=block_display,tag=ds_blackhole_temp,distance=..10,limit=1] ds-id = @s ds-id

# Ascension 1: Shooting Star
execute if score @s ds-ascension matches 1.. run tag @e[type=block_display,tag=ds_blackhole_temp,distance=..10,limit=1] add ascension_1_blackhole
# Ascension 3: Dark Hole
execute if score @s ds-ascension matches 3.. run tag @e[type=block_display,tag=ds_blackhole_temp,distance=..10,limit=1] add ascension_3_blackhole
# Ascension 4: Strike Assistance
execute if score @s ds-ascension matches 4.. run tag @e[type=block_display,tag=ds_blackhole_temp,distance=..10,limit=1] add ascension_4_blackhole
# Ascension 5: Supernova
execute if score @s ds-ascension matches 5.. run tag @e[type=block_display,tag=ds_blackhole_temp,distance=..10,limit=1] add ascension_5_blackhole

tag @e[type=block_display,tag=ds_blackhole_temp,distance=..10,limit=1] remove ds_blackhole_temp

scoreboard players operation @s ds-singularity-ultimate = #ds-tick ds-var
# 1 minute cooldown
scoreboard players add @s ds-singularity-ultimate 1200