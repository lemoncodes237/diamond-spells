# Normal Attack - Curse

# Set score if needed
execute unless score @s ds-malison-normal matches 0.. run scoreboard players set @s ds-malison-normal 0

scoreboard players operation @s ds-reg1 = @s ds-malison-normal
execute if score @s ds-reg1 > #ds-tick ds-var run return run function ds:lib/cooldown

playsound block.enchantment_table.use master @a ~ ~ ~

scoreboard players set #ds-temp ds-reg2 0
execute if score @s ds-ascension matches 5.. run scoreboard players set #ds-temp ds-reg2 1

execute as @e[type=!#ds:immune,distance=..5,tag=!malison_caster] at @s run function ds:spells/malison/curse

scoreboard players operation @s ds-malison-normal = #ds-tick ds-var
# 1 second cooldown
scoreboard players add @s ds-malison-normal 20