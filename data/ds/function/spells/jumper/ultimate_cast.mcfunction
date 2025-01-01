# Ultimate - High Jump
scoreboard players operation @s ds-reg1 = @s ds-jumper-ultimate
execute if score @s ds-reg1 > #ds-tick ds-var run return run function ds:cooldown

particle explosion ~ ~ ~ 1 1 1 0 5
playsound entity.generic.explode master @a ~ ~ ~
execute as @e[distance=..5,tag=!jumper_caster] run damage @s 10 player_attack by @a[tag=jumper_caster,limit=1,sort=nearest]
effect give @s levitation 1 43 true
effect give @s slow_falling 10

scoreboard players operation @s ds-jumper-ultimate = #ds-tick ds-var
# 20 second cooldown
scoreboard players add @s ds-jumper-ultimate 400