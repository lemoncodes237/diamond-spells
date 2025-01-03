scoreboard players set #ds-tick ds-reg1 0

# Runs every second

# Luck 23 means that Adagio, Conductor's Baton's Ultimate has been cast
execute as @a if predicate ds:adagio at @s run particle note ~ ~ ~ 2 1 2 0.1 20

# If this is false, we get rid of the multiplier
execute as @a if entity @s[tag=calamity_ultimate] unless predicate ds:death_shower run function ds:spells/calamity/end_ultimate