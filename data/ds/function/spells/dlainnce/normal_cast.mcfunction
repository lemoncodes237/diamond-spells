# Normal Attack - Surge

# Set score if needed
execute unless score @s ds-dlainnce-normal matches 0.. run scoreboard players set @s ds-dlainnce-normal 0

scoreboard players operation @s ds-reg1 = @s ds-dlainnce-normal
execute if score @s ds-reg1 > #ds-tick ds-var run return run function ds:lib/cooldown

execute anchored eyes run summon marker ^ ^ ^3 {Tags:["ds_dlainnce_surge","ds_dlainnce_surge_temp"]}
scoreboard players operation @e[type=marker,tag=ds_dlainnce_surge_temp,distance=..5] ds-id = @s ds-id
data modify entity @e[type=marker,tag=ds_dlainnce_surge_temp,distance=..5,limit=1] Rotation set from entity @s Rotation

# Ascension 4: Longer Surge
execute if score @s ds-ascension matches 4.. run scoreboard players set @e[type=marker,tag=ds_dlainnce_surge_temp,distance=..5] ds-var -10

tag @e[type=marker,tag=ds_dlainnce_surge_temp,distance=..5] remove ds_dlainnce_surge_temp

playsound block.piston.extend master @a ~ ~ ~ 3 2

scoreboard players operation @s ds-dlainnce-normal = #ds-tick ds-var
# 3 second cooldown
scoreboard players add @s ds-dlainnce-normal 60

# Ascension 5: Faster Chaos
execute if score @s ds-ascension matches 5.. run scoreboard players remove @s ds-dlainnce-normal 18