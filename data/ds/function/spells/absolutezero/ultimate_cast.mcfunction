# Ultimate - Sheer Cold

# Set score if needed
execute unless score @s ds-absolutezero-ultimate matches 0.. run scoreboard players set @s ds-absolutezero-ultimate 0

scoreboard players operation @s ds-reg1 = @s ds-absolutezero-ultimate
execute if score @s ds-reg1 > #ds-tick ds-var run return run function ds:lib/cooldown

summon marker ~ ~5 ~ {Tags:["ds_sheer_cold","ds_sheer_cold_temp"]}
scoreboard players operation @e[tag=ds_sheer_cold_temp,type=marker,distance=..10,limit=1] ds-id = @s ds-id

# Ascension 3: Preservation
execute if score @s ds-ascension matches 3.. run tag @e[tag=ds_sheer_cold_temp,type=marker,distance=..10,limit=1] add ascension_3_sheer_cold
# Ascension 5: Withering Cold
execute if score @s ds-ascension matches 3.. run tag @e[tag=ds_sheer_cold_temp,type=marker,distance=..10,limit=1] add ascension_5_sheer_cold

tag @e[tag=ds_sheer_cold_temp,type=marker,distance=..10,limit=1] remove ds_sheer_cold_temp

playsound block.powder_snow.place master @a ~ ~ ~ 10

# Ascension 1: Frozen
execute if score @s ds-ascension matches 1.. run effect give @e[tag=!absolutezero_caster,distance=..20,type=!#ds:immune] slowness 2 9

scoreboard players operation @s ds-absolutezero-ultimate = #ds-tick ds-var
# 1 minute cooldown
scoreboard players add @s ds-absolutezero-ultimate 1200