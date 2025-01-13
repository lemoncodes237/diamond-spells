particle sweep_attack ~ ~ ~
particle falling_water ^ ^ ^1 0.5 0.5 0.5 0 10
particle falling_water ^-2 ^ ^ 0.5 0.5 0.5 0 10
particle falling_water ^2 ^ ^ 0.5 0.5 0.5 0 10

execute as @e[distance=..3,tag=!oceanicjudge_caster,type=!#ds:immune] run damage @s 5 player_attack by @a[tag=oceanicjudge_caster,limit=1]

playsound entity.player.splash.high_speed master @a ~ ~ ~