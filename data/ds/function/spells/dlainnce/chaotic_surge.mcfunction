execute anchored eyes run summon marker ^ ^ ^3 {Tags:["ds_dlainnce_chaotic_surge","ds_dlainnce_chaotic_surge_temp"]}
execute anchored eyes run summon marker ^1.7 ^ ^1.7 {Tags:["ds_dlainnce_chaotic_surge","ds_dlainnce_chaotic_surge_temp"]}
execute anchored eyes run summon marker ^-1.7 ^ ^1.7 {Tags:["ds_dlainnce_chaotic_surge","ds_dlainnce_chaotic_surge_temp"]}
scoreboard players operation @e[type=marker,tag=ds_dlainnce_chaotic_surge_temp,distance=..5] ds-id = @s ds-id

execute anchored eyes positioned ^ ^ ^3 as @e[type=marker,tag=ds_dlainnce_chaotic_surge_temp,distance=..3,limit=1,sort=nearest] run rotate @s facing ^ ^ ^4
execute anchored eyes positioned ^1.7 ^ ^1.7 as @e[type=marker,tag=ds_dlainnce_chaotic_surge_temp,distance=..3,limit=1,sort=nearest] run rotate @s facing ^3 ^ ^3
execute anchored eyes positioned ^-1.7 ^ ^1.7 as @e[type=marker,tag=ds_dlainnce_chaotic_surge_temp,distance=..3,limit=1,sort=nearest] run rotate @s facing ^-3 ^ ^3

# Ascension 1: Extra Chaos
execute if score @s ds-ascension matches 1.. run tag @e[type=marker,tag=ds_dlainnce_chaotic_surge_temp,distance=..5] add ascension_1_surge
# Ascension 3: Quick Weakening
execute if score @s ds-ascension matches 3.. run tag @e[type=marker,tag=ds_dlainnce_chaotic_surge_temp,distance=..5] add ascension_3_surge
# Ascension 4: Longer Surge
execute if score @s ds-ascension matches 4.. run scoreboard players set @e[type=marker,tag=ds_dlainnce_chaotic_surge_temp,distance=..5] ds-var -10

playsound item.firecharge.use master @a ~ ~ ~ 2 0.5

tag @e[type=marker,tag=ds_dlainnce_chaotic_surge_temp,distance=..5] remove ds_dlainnce_chaotic_surge_temp