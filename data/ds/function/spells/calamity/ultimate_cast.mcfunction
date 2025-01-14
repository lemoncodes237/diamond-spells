# Ultimate - Death Shower
scoreboard players operation @s ds-reg1 = @s ds-calamity-ultimate
execute if score @s ds-reg1 > #ds-tick ds-var run return run function ds:lib/cooldown

# If we are in ultimate state, do not cast the ultimate
execute if predicate ds:in_ultimate run return run function ds:lib/in_ultimate

effect give @s levitation 1 3 true

scoreboard players operation @s ds-calamity-deathshower = #ds-tick ds-var
scoreboard players add @s ds-calamity-deathshower 600

tag @s add calamity_ultimate
attribute @s gravity modifier add ds:calamity -1 add_multiplied_base
playsound item.trident.thunder master @a ~ ~ ~ 1 0.3

# Ascension 4: Judgment
execute if score @s ds-ascension matches 4.. run effect give @e[type=!#ds:immune,distance=..7,tag=!calamity_caster] slowness 7 1

scoreboard players operation @s ds-calamity-ultimate = #ds-tick ds-var
# 2 minute cooldown
scoreboard players add @s ds-calamity-ultimate 2400