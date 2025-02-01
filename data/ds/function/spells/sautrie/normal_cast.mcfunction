# Normal Attack - Sword Methods

# Set score if needed
execute unless score @s ds-sautrie-normal matches 0.. run scoreboard players set @s ds-sautrie-normal 0

scoreboard players operation @s ds-reg1 = @s ds-sautrie-normal
execute if score @s ds-reg1 > #ds-tick ds-var run return run function ds:lib/cooldown

playsound block.glass.break master @a ~ ~ ~ 1 0.3

# During Ultimate
execute if score #ds-tick ds-var <= @s ds-sautrie-hiddenmethods run return run function ds:spells/sautrie/big_attack

scoreboard players set @s ds-reg1 0
execute anchored eyes rotated ~-60 ~ run function ds:spells/sautrie/sword_swipe

execute if score @s ds-ascension matches 0..3 anchored eyes positioned ^ ^ ^2 as @e[type=!#ds:immune,distance=..4,tag=!sautrie_caster] run damage @s 4 player_attack by @a[tag=sautrie_caster,limit=1]
# Ascension 4: Better Methods
execute if score @s ds-ascension matches 4.. anchored eyes positioned ^ ^ ^2 as @e[type=!#ds:immune,distance=..4,tag=!sautrie_caster] run damage @s 5 player_attack by @a[tag=sautrie_caster,limit=1]

scoreboard players operation @s ds-sautrie-normal = #ds-tick ds-var
# 1 second cooldown
scoreboard players add @s ds-sautrie-normal 20