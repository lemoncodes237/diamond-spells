scoreboard players add @s ds-var 1

execute if score @s ds-var matches 10 run function ds:spells/calamity/alchemy_circle_yellow
execute if score @s ds-var matches 10 run playsound block.respawn_anchor.charge master @a ~ ~ ~ 1 0.7
execute if score @s ds-var matches 10 as @a[tag=calamity_ultimate,distance=..70] at @s run playsound block.respawn_anchor.charge master @a ~ ~ ~ 1 0.7

execute if score @s ds-var matches 20 run function ds:spells/calamity/alchemy_circle_orange
execute if score @s ds-var matches 20 run playsound block.respawn_anchor.charge master @a ~ ~ ~ 1 1.1
execute if score @s ds-var matches 20 as @a[tag=calamity_ultimate,distance=..70] at @s run playsound block.respawn_anchor.charge master @s ~ ~ ~ 1 1.1

execute if score @s ds-var matches 30 run function ds:spells/calamity/alchemy_circle_red
execute if score @s ds-var matches 30 run playsound block.respawn_anchor.charge master @a ~ ~ ~ 1 1.5
execute if score @s ds-var matches 30 as @a[tag=calamity_ultimate,distance=..70] at @s run playsound block.respawn_anchor.charge master @s ~ ~ ~ 1 1.5


execute unless score @s ds-var matches 40.. run return 0

# Create the attack
playsound entity.wither.spawn master @a ~ ~ ~ 2
execute as @a[tag=calamity_ultimate,distance=..70] at @s run playsound entity.wither.spawn master @s ~ ~ ~ 2
particle dragon_breath ~ ~ ~ 1.2 0.3 1.2 0.3 50
summon lightning_bolt ~ ~ ~
execute as @e[tag=!calamity_ultimate,distance=..5,type=!item] run damage @s 15 player_attack by @a[tag=calamity_ultimate,sort=nearest,limit=1]
kill @s