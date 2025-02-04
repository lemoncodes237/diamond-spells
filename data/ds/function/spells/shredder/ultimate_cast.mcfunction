# Ultimate - Armor Shred

# Set score if needed
execute unless score @s ds-shredder-ultimate matches 0.. run scoreboard players set @s ds-shredder-ultimate 0

scoreboard players operation @s ds-reg1 = @s ds-shredder-ultimate
execute if score @s ds-reg1 > #ds-tick ds-var run return run function ds:lib/cooldown

particle crit ~ ~1 ~ 8 1 8 0 80

playsound block.anvil.place master @a ~ ~ ~ 1 0.8

execute as @e[distance=..15,tag=!shredder_caster,type=!#ds:immune] run function ds:spells/shredder/armor_shred
# Ascension 3: Blinding Shred
execute if score @s ds-ascension matches 3.. as @e[distance=..15,tag=!shredder_caster,type=!#ds:immune] run effect give @s blindness 7 0
# Ascension 4: Jumping Shred
execute if score @s ds-ascension matches 4.. run effect give @s jump_boost 10 2

# Ascension 1: Armor Steal
execute if score @s ds-ascension matches 1.. run function ds:spells/shredder/armor_shred_a1

scoreboard players operation @s ds-shredder-ultimate = #ds-tick ds-var
# 40 second cooldown
scoreboard players add @s ds-shredder-ultimate 800