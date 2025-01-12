# Normal Attack - Flame

# Set score if needed
execute unless score @s ds-embercore-normal matches 0.. run scoreboard players set @s ds-embercore-normal 0

scoreboard players operation @s ds-reg1 = @s ds-embercore-normal
execute if score @s ds-reg1 > #ds-tick ds-var run return run function ds:lib/cooldown

scoreboard players set @s ds-var 0
execute anchored eyes positioned ^ ^ ^ run function ds:spells/embercore/fling_projectile

playsound entity.arrow.shoot master @a ~ ~ ~

scoreboard players operation @s ds-embercore-normal = #ds-tick ds-var
# 1.5 second cooldown
scoreboard players add @s ds-embercore-normal 30