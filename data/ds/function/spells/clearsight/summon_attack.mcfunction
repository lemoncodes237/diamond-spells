summon marker ~ ~ ~ {Tags:["incoming_eye_attack"]}
scoreboard players operation #ds-temp ds-var = @s ds-clearsight-eye-id
execute as @e[type=marker,tag=incoming_eye_attack,distance=..1,sort=nearest,limit=1] run scoreboard players operation @s ds-clearsight-eye-id = #ds-temp ds-var
particle dust{color:[1,0,0],scale:1} ~ ~ ~ 0.5 0 0.5 0 30 force