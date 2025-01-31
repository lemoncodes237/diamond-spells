execute store result score @s ds-reg4 run data get entity @s Health 100
scoreboard players add @s ds-autumnwind-invincibility 1

execute if score @s ds-health > @s ds-reg4 if score @s ds-autumnwind-invincibility matches 5.. run function ds:spells/autumnwind/additional_damage

# Rerun since we just did more damage
execute store result score @s ds-health run data get entity @s Health 100

scoreboard players add @s ds-autumnwind-swoop 1
# End after 7s
execute if score @s ds-autumnwind-swoop matches 140.. run tag @s remove ds_autumnwind_swoop
execute if score @s ds-autumnwind-swoop matches 140.. run scoreboard players set @s ds-autumnwind-a5-rares 0

# Particle showing the effect of Windy Swoop
particle dust{color:[1,1,1],scale:0.5} ~ ~1 ~ 0.5 0.5 0.5 0 1