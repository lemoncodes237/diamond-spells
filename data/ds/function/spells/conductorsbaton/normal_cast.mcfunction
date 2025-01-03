# Normal Attack - Quaver

# Set score if needed
execute unless score @s ds-conductors-baton-normal matches 0.. run scoreboard players set @s ds-conductors-baton-normal 0

scoreboard players operation @s ds-reg1 = @s ds-conductors-baton-normal
execute if score @s ds-reg1 > #ds-tick ds-var run return run function ds:lib/cooldown

particle note ~ ~ ~ 2 1 2 1 30

playsound block.note_block.bell master @a ~ ~ ~

execute as @e[distance=..5,tag=!conductors_baton_caster] run damage @s 5 player_attack by @a[tag=conductors_baton_caster,limit=1,sort=nearest]
execute as @e[distance=..5,tag=!conductors_baton_caster] run effect give @s blindness 1

scoreboard players operation @s ds-conductors-baton-normal = #ds-tick ds-var
# 2 second cooldown
scoreboard players add @s ds-conductors-baton-normal 40