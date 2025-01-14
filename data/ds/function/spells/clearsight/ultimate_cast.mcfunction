# Ultimate - All Seeing Eye

# Set score if needed
execute unless score @s ds-clearsight-ultimate matches 0.. run scoreboard players set @s ds-clearsight-ultimate 0

scoreboard players operation @s ds-reg1 = @s ds-clearsight-ultimate
execute if score @s ds-reg1 > #ds-tick ds-var run return run function ds:lib/cooldown

summon item_display ~ ~6 ~ {Tags:["ds_all_seeing_eye"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1f,0f],scale:[4f,4f,4f]},item:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;88315087,1727545940,-1275907149,1770602545],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNWI0YzQzMmU1ZTY3ZGM4MzlmOGFhYzViMGJiYjAyNGMyMDNlNGNmZGMxYTMyZmE0MTcxMmJmYmQzNzYwNmY2MiJ9fX0="}]}}}}

# Create an ID for the all-seeing eye
execute positioned ~ ~6 ~ run scoreboard players operation @e[type=item_display,tag=ds_all_seeing_eye,distance=..2,limit=1,sort=nearest] ds-id = @s ds-id

# Ascension 1: Mobile Eye
execute if score @s ds-ascension matches 1.. positioned ~ ~6 ~ run tag @e[type=item_display,tag=ds_all_seeing_eye,distance=..2,limit=1,sort=nearest] add mobile_eye
# Ascension 2: Slowing Eye
execute if score @s ds-ascension matches 2.. positioned ~ ~6 ~ run tag @e[type=item_display,tag=ds_all_seeing_eye,distance=..2,limit=1,sort=nearest] add slowing_eye
# Ascension 4: Withering Eye
execute if score @s ds-ascension matches 4.. positioned ~ ~6 ~ run tag @e[type=item_display,tag=ds_all_seeing_eye,distance=..2,limit=1,sort=nearest] add withering_eye
# Ascension 5: Omniscient Eye
execute if score @s ds-ascension matches 5.. positioned ~ ~6 ~ run tag @e[type=item_display,tag=ds_all_seeing_eye,distance=..2,limit=1,sort=nearest] add omniscient_eye

playsound item.totem.use master @a ~ ~ ~

scoreboard players operation @s ds-clearsight-ultimate = #ds-tick ds-var
# 50 second cooldown
scoreboard players add @s ds-clearsight-ultimate 1000