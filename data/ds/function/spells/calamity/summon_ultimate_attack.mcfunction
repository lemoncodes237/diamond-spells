execute if score @s ds-reg2 matches 50.. run return -1

scoreboard players add @s ds-reg2 1
execute if block ^ ^ ^1 #ds:no_block positioned ^ ^ ^1 run return run function ds:spells/calamity/summon_ultimate_attack

# Block found
summon marker ~ ~ ~ {Tags:["calamity_ultimate_attack"]}
scoreboard players set @e[type=marker,tag=calamity_ultimate_attack] ds-var 0
playsound block.respawn_anchor.charge master @a ~ ~ ~ 1 0.3
execute as @a[tag=calamity_ultimate,distance=..70] at @s run playsound block.respawn_anchor.charge master @s ~ ~ ~ 1 0.3

scoreboard players operation @s ds-calamity-ultimate-attack = #ds-tick ds-var
# 2 second cooldown
scoreboard players add @s ds-calamity-ultimate-attack 40