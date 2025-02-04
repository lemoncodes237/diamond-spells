# Normal Attack - Puncture

# Set score if needed
execute unless score @s ds-shredder-normal matches 0.. run scoreboard players set @s ds-shredder-normal 0

scoreboard players operation @s ds-reg1 = @s ds-shredder-normal
execute if score @s ds-reg1 > #ds-tick ds-var run return run function ds:lib/cooldown

function ds:spells/shredder/both_puncture

# Ascension 5: Back Puncture
execute if score @s ds-ascension matches 5.. facing ^ ^ ^-1 run function ds:spells/shredder/both_puncture

playsound item.trident.hit_ground master @a ~ ~ ~

scoreboard players operation @s ds-shredder-normal = #ds-tick ds-var
# 2 second cooldown
scoreboard players add @s ds-shredder-normal 40