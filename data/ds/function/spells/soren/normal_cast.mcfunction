# Normal Attack - Block Launch

# Set score if needed
execute unless score @s ds-soren-normal matches 0.. run scoreboard players set @s ds-soren-normal 0

scoreboard players operation @s ds-reg1 = @s ds-soren-normal
execute if score @s ds-reg1 > #ds-tick ds-var run return run function ds:lib/cooldown

scoreboard players set @s ds-var 0

playsound entity.arrow.shoot master @a ~ ~ ~
function ds:spells/soren/fling_projectile

# Ascension 4: Launched with the Block
execute if score @s ds-ascension matches 4.. run effect give @s speed 1 1

scoreboard players operation @s ds-soren-normal = #ds-tick ds-var
# 2 second cooldown
scoreboard players add @s ds-soren-normal 40