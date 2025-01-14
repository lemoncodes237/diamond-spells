scoreboard players add @s ds-reg1 1
execute unless score @s ds-reg1 matches 5.. run return 0

scoreboard players operation #ds-temp ds-var = @s ds-clearsight-eye-id

execute as @a if score @s ds-clearsight-eye-id = #ds-temp ds-var run tag @s add ds_eye_no_target

execute as @e[type=!#ds:immune,distance=..3,tag=!ds_eye_no_target] run damage @s 7 player_attack by @a[tag=ds_eye_no_target,limit=1,sort=nearest]

tag @a remove ds_eye_no_target

particle crit ~ ~0.5 ~ 0.5 0.5 0.5 0 30
playsound entity.evoker_fangs.attack master @a ~ ~ ~

kill @s