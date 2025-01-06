# Normal Attack - Stars

# Set score if needed
execute unless score @s ds-galaxy-normal matches 0.. run scoreboard players set @s ds-galaxy-normal 0

scoreboard players operation @s ds-reg1 = @s ds-galaxy-normal
execute if score @s ds-reg1 > #ds-tick ds-var run return run function ds:lib/cooldown

execute anchored eyes run particle electric_spark ^ ^ ^4 0.5 0.1 0.5 0 10
execute anchored eyes run particle electric_spark ^1 ^ ^3 0.5 0.1 0.5 0 10
execute anchored eyes run particle electric_spark ^-1 ^ ^3 0.5 0.1 0.5 0 10
execute anchored eyes run particle electric_spark ^2 ^ ^2 0.5 0.1 0.5 0 10
execute anchored eyes run particle electric_spark ^-2 ^ ^2 0.5 0.1 0.5 0 10

playsound entity.player.attack.sweep master @a ~ ~ ~ 1 0.3

execute positioned ^ ^ ^3 as @e[type=!#ds:immune,tag=!galaxy_caster,distance=..3] run damage @s 7 player_attack by @a[tag=galaxy_caster,sort=nearest,limit=1]

scoreboard players operation @s ds-galaxy-normal = #ds-tick ds-var
# 1.5 second cooldown
scoreboard players add @s ds-galaxy-normal 30