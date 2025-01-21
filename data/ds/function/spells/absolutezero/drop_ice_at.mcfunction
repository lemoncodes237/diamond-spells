# Don't drop ice if there is a block on it or right below it
execute unless block ~ ~10 ~ #air run return 0
execute unless block ~ ~9 ~ #air run return 0

execute if score @s ds-ascension matches 0..3 run summon falling_block ~ ~10 ~ {Tags:["ds_absolutezero_proj","ds_block_proj","ds_absolutezero_proj_temp"],BlockState:{Name:"ice"}}
# Ascension 4: Blinding Ice
execute if score @s ds-ascension matches 4.. run summon falling_block ~ ~10 ~ {Tags:["ds_absolutezero_proj","ds_block_proj","ds_absolutezero_proj_temp","ascension_4_iceology"],BlockState:{Name:"ice"}}

particle snowflake ~ ~ ~ 0.5 0.5 0.5 0 30
scoreboard players operation @e[type=falling_block,tag=ds_absolutezero_proj_temp,distance=..50,limit=1] ds-id = @s ds-id

tag @e[type=falling_block,tag=ds_absolutezero_proj_temp,distance=..50,limit=1] remove ds_absolutezero_proj_temp