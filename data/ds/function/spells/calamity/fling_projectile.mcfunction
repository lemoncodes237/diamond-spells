# From https://www.reddit.com/r/MinecraftCommands/wiki/questions/shootfacing/

# summon the temporary entity at the players position
summon marker ~ ~ ~ {Tags:["direction"]}
# execute the below function as the marker entity, so it doesn't get lost from being unloaded
# also run positioned at the world zero point
execute if score @s ds-ascension matches 0..1 run execute as @e[tag=direction,limit=1] positioned 0.0 0.0 0.0 run function ds:spells/calamity/get_motion

# Ascension 2: Push
execute if score @s ds-ascension matches 2.. run execute as @e[tag=direction,limit=1] positioned 0.0 0.0 0.0 run function ds:spells/calamity/get_faster_motion

# summon the projectile entity. Again, it might make sense to summon the projectile at the players eyes
# and in front of them, so we'll do that in this example
# Change this to invisible item in the future.
execute anchored eyes run summon armor_stand ^ ^ ^ {Tags:["calamity_proj"],Invulnerable:true,Invisible:true,Small:true,DisabledSlots:4144959}
# store the previously stored Motion into the projectile entity
data modify entity @e[tag=calamity_proj,limit=1,sort=nearest] Motion set from storage ds:storage Motion
ride @s mount @e[tag=calamity_proj,sort=nearest,limit=1]