execute if entity @s[tag=ds_lost_5050] run tag @s remove ds_lost_5050

execute store result score @s ds-reg1 run random value 1..2
scoreboard players operation @s ds-reg2 = #ds-banner ds-reg2
execute if score @s ds-reg1 matches 1 run scoreboard players operation @s ds-reg2 = #ds-banner ds-reg1

advancement grant @s only ds:adv/easy/wand

execute if score @s ds-reg2 matches 1 run return run function ds:give/conductors_baton
execute if score @s ds-reg2 matches 2 run return run function ds:give/ember_core
execute if score @s ds-reg2 matches 3 run return run function ds:give/farmers_delight
execute if score @s ds-reg2 matches 4 run return run function ds:give/jumper
execute if score @s ds-reg2 matches 5 run return run function ds:give/mining_fever
execute if score @s ds-reg2 matches 6 run return run function ds:give/nullification
execute if score @s ds-reg2 matches 7 run return run function ds:give/oceanic_judge
execute if score @s ds-reg2 matches 8 run return run function ds:give/size_shifter
execute if score @s ds-reg2 matches 9 run return run function ds:give/soren