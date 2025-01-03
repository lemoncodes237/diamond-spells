# Ultimate - Death Shower
scoreboard players operation @s ds-reg1 = @s ds-calamity-ultimate
execute if score @s ds-reg1 > #ds-tick ds-var run return run function ds:lib/cooldown

# If we are in ultimate state, do not cast the ultimate
execute if predicate ds:in_ultimate run return run function ds:lib/in_ultimate

effect give @s levitation 1 3 true
effect give @s luck 30 23 true
tag @s add calamity_ultimate
attribute @s gravity modifier add ds:calamity -1 add_multiplied_base
playsound item.trident.thunder master @a ~ ~ ~ 1 0.3

scoreboard players operation @s ds-calamity-ultimate = #ds-tick ds-var
# 2 minute cooldown
scoreboard players add @s ds-calamity-ultimate 2400