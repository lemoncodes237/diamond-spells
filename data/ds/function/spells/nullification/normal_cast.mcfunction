# Normal Attack - Triple

# Set score if needed
execute unless score @s ds-nullification-normal matches 0.. run scoreboard players set @s ds-nullification-normal 0

scoreboard players operation @s ds-reg1 = @s ds-nullification-normal
execute if score @s ds-reg1 > #ds-tick ds-var run return run function ds:lib/cooldown

scoreboard players set @s ds-var 0
execute anchored eyes positioned ^ ^ ^1 run function ds:spells/nullification/laser
scoreboard players set @s ds-var 0
execute anchored eyes facing ^1 ^ ^1 positioned ^ ^ ^1 run function ds:spells/nullification/laser
scoreboard players set @s ds-var 0
execute anchored eyes facing ^-1 ^ ^1 positioned ^ ^ ^1 run function ds:spells/nullification/laser
scoreboard players set @s ds-var 0
# Ascension 3: Backstab
execute if score @s ds-ascension matches 3.. anchored eyes facing ^ ^ ^-1 positioned ^ ^ ^1 run function ds:spells/nullification/laser

execute if entity @s[tag=nullification_ultimate_a4] run tag @s remove nullification_ultimate_a4

scoreboard players operation @s ds-nullification-normal = #ds-tick ds-var
# 1 second cooldown
scoreboard players add @s ds-nullification-normal 20