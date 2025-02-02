# Normal Attack - Chopper

# Set score if needed
execute unless score @s ds-yggdrasil-normal matches 0.. run scoreboard players set @s ds-yggdrasil-normal 0

scoreboard players operation @s ds-reg1 = @s ds-yggdrasil-normal
execute if score @s ds-reg1 > #ds-tick ds-var run return run function ds:lib/cooldown

scoreboard players set @s ds-var 0
execute anchored eyes positioned ^ ^ ^1 run function ds:spells/yggdrasil/chopper

playsound entity.arrow.shoot master @a ~ ~ ~

scoreboard players operation @s ds-yggdrasil-normal = #ds-tick ds-var
# 2 second cooldown
scoreboard players add @s ds-yggdrasil-normal 40

# Ascension 5: Shorter Chops
execute if score @s ds-ascension matches 5.. run scoreboard players remove @s ds-yggdrasil-normal 10