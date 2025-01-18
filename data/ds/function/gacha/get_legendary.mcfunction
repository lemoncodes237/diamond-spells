execute at @s run summon firework_rocket ~ ~-1 ~ {FireworksItem:{id:firework_rocket,components:{fireworks:{explosions:[{shape:large_ball,colors:[I;11546150,1490270,16701501,3949738,8991416]}]}}}}
particle end_rod ~ ~ ~ 0 0 0 0.2 50 force
title @s title [{"text":"LEGENDARY","color":"gold"}]
playsound ui.toast.challenge_complete master @a ~ ~ ~
tellraw @a [{"text":""},{"selector":"@s"},{"text":" pulled a legendary wand!"}]
scoreboard players set @s ds-pity 0

advancement grant @s only ds:adv/easy/wand
advancement grant @s only ds:adv/intermediate/legendary

execute if score #ds-banner ds-var matches 1 run return run function ds:give/calamity
execute if score #ds-banner ds-var matches 2 run return run function ds:give/clearsight
execute if score #ds-banner ds-var matches 3 run return run function ds:give/crash_landing
execute if score #ds-banner ds-var matches 4 run return run function ds:give/galaxy
execute if score #ds-banner ds-var matches 5 run return run function ds:give/malison
execute if score #ds-banner ds-var matches 6 run return run function ds:give/sahd
execute if score #ds-banner ds-var matches 7 run return run function ds:give/singularity
execute if score #ds-banner ds-var matches 8 run return run function ds:give/absolute_zero