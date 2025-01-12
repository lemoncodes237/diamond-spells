# From https://www.reddit.com/r/MinecraftCommands/wiki/questions/shootfacing/

# summon the temporary entity at the players position
summon marker ~ ~ ~ {Tags:["direction"]}
# execute the below function as the marker entity, so it doesn't get lost from being unloaded
# also run positioned at the world zero point
execute as @e[tag=direction,limit=1] positioned 0.0 0.0 0.0 run function ds:spells/embercore/get_motion

# summon the projectile entity. Again, it might make sense to summon the projectile at the players eyes
# and in front of them, so we'll do that in this example
# Change this to invisible item in the future.
execute anchored eyes positioned ~ ~-0.3 ~ run summon arrow ^ ^ ^1 {Tags:["embercore_proj"],Fire:300s}
# store the previously stored Motion into the projectile entity
data modify entity @e[type=arrow,distance=..3,tag=embercore_proj,limit=1] Owner set from entity @s UUID
data modify entity @e[type=arrow,distance=..3,tag=embercore_proj,limit=1] Motion set from storage ds:storage Motion

# Set ground ablaze if Ascension is at least 2 or if the player is in the nether.
execute if score @s ds-ascension matches 2.. run tag @e[type=arrow,distance=..3,tag=embercore_proj] add embercore_flame
execute if biome ~ ~ ~ #is_nether run tag @e[type=arrow,distance=..3,tag=embercore_proj] add embercore_flame

execute if score @s ds-ascension matches 4.. run data merge entity @e[type=arrow,distance=..3,tag=embercore_proj,limit=1] {item:{components:{potion_contents:{custom_effects:[{duration:100,amplifier:1b,show_icon:1b,id:"minecraft:weakness"}]}},count:1,id:"tipped_arrow"}}

tag @e[type=arrow,distance=..3,tag=embercore_proj] remove embercore_proj