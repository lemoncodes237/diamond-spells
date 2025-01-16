summon firework_rocket ~ ~-1 ~ {FireworksItem:{id:firework_rocket,components:{fireworks:{explosions:[{shape:star,colors:[I;11546150,1490270,3949738]}]}}}}
particle happy_villager ~ ~ ~ 0.5 0.5 0.5 0.2 50 force
title @s title [{"text":"RARE","color":"aqua"}]
playsound entity.player.levelup master @a ~ ~ ~
scoreboard players set @s ds-rare-pity 0

execute if entity @s[tag=ds_lost_5050] run return run function ds:gacha/get_rare_wand

execute store result score @s ds-reg1 run random value 1..2
execute if score @s ds-reg1 matches 1 run return run function ds:gacha/get_rare_wand
return run function ds:gacha/get_rare_item