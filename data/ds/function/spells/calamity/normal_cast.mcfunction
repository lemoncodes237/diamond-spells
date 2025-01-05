# Normal Attack - Rush

# Set score if needed
execute unless score @s ds-calamity-normal matches 0.. run scoreboard players set @s ds-calamity-normal 0

scoreboard players operation @s ds-reg1 = @s ds-calamity-normal
execute if score @s ds-reg1 > #ds-tick ds-var run return run function ds:lib/cooldown

function ds:spells/calamity/fling_projectile

# For fall damage
attribute @s safe_fall_distance modifier add ds:calamity_normal 100 add_value
tag @s add calamity_normal

scoreboard players operation @s ds-calamity-normal = #ds-tick ds-var
# 3 second cooldown
scoreboard players add @s ds-calamity-normal 60