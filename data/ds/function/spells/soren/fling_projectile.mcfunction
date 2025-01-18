# From https://www.reddit.com/r/MinecraftCommands/wiki/questions/shootfacing/

execute positioned ~ ~0.5 ~ unless block ^ ^ ^1 #ds:air run return 0
execute positioned ~ ~0.5 ~ unless block ^ ^ ^2 #ds:air run return 0

# summon the temporary entity at the players position
summon marker ~ ~ ~ {Tags:["direction"]}
# execute the below function as the marker entity, so it doesn't get lost from being unloaded
# also run positioned at the world zero point
execute as @e[tag=direction,limit=1] positioned 0.0 0.0 0.0 run function ds:spells/soren/get_motion

# summon the projectile entity. Again, it might make sense to summon the projectile at the players eyes
# and in front of them, so we'll do that in this example
# Change this to invisible item in the future.
execute if score @s ds-ascension matches 0..1 anchored eyes run summon falling_block ^ ^ ^ {Tags:["soren_proj","soren_temp",ds_block_proj],BlockState:{Name:"cobblestone"}}

# Ascension 2: Obsidian Launch
execute if score @s ds-ascension matches 2.. anchored eyes run summon falling_block ^ ^ ^ {Tags:["soren_proj","soren_temp","ascension_2_soren",ds_block_proj],BlockState:{Name:"obsidian"}}


# store the previously stored Motion into the projectile entity
data modify entity @e[type=falling_block,distance=..3,tag=soren_temp,limit=1] Motion set from storage ds:storage Motion

scoreboard players operation @e[type=falling_block,distance=..3,tag=soren_temp,limit=1] ds-id = @s ds-id

tag @e[type=falling_block,distance=..3,tag=soren_temp,limit=1] remove soren_temp
