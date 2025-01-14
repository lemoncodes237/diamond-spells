scoreboard players set #ds-tick ds-reg1 0

# Runs every second

# Luck 23 means that Adagio, Conductor's Baton's Ultimate has been cast
execute as @a if score @s ds-conductors-baton-adagio >= #ds-tick ds-var at @s run particle note ~ ~ ~ 2 1 2 0.1 20

# If this is false, we get rid of the multiplier
execute as @a if entity @s[tag=calamity_ultimate] if score @s ds-calamity-deathshower < #ds-tick ds-var run function ds:spells/calamity/end_ultimate
# Clear fall damage multiplier
execute as @a if entity @s[tag=calamity_normal] if predicate ds:on_ground run function ds:spells/calamity/clear_fall_damage_inv

# End of Size Shifter Ultimate
execute as @a[tag=sizeshifter_ultimate] unless predicate ds:shrink at @s run function ds:spells/sizeshifter/end_ultimate

# Sahd Ultimate
execute as @a if predicate ds:frenzy at @s run function ds:spells/sahd/refresh_strength
execute as @a[tag=ascension_2_frenzy] unless predicate ds:frenzy run tag @s remove ascension_2_frenzy