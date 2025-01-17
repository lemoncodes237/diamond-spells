# Normal Attack - TNT Piston

# Set score if needed
execute unless score @s ds-hydrogen-normal matches 0.. run scoreboard players set @s ds-hydrogen-normal 0

scoreboard players operation @s ds-reg1 = @s ds-hydrogen-normal
execute if score @s ds-reg1 > #ds-tick ds-var run return run function ds:lib/cooldown

playsound block.anvil.place master @a ~ ~ ~
particle block_crumble{block_state:{Name:"tnt"}} ~ ~1 ~ 0.5 0.75 0.5 0 30

summon item_display ~ ~1 ~ {item:{id:"tnt"},Tags:["ds_tnt_piston","ds_tnt_piston_temp"],transformation:{left_rotation:[0,0,0,1],translation:[0.0,0.25,0.0],right_rotation:[0,0,0,1],scale:[0.5,0.5,0.5]}}
scoreboard players operation @e[type=item_display,distance=..3,tag=ds_tnt_piston_temp,limit=1] ds-id = @s ds-id

# Ascension 2: Injury
execute if score @s ds-ascension matches 2.. run tag @e[type=item_display,distance=..3,tag=ds_tnt_piston_temp,limit=1] add ascension_2_tnt_piston

tag @e[type=item_display,distance=..3,tag=ds_tnt_piston_temp,limit=1] remove ds_tnt_piston_temp

scoreboard players operation @s ds-hydrogen-normal = #ds-tick ds-var
# 4 second cooldown
scoreboard players add @s ds-hydrogen-normal 80

# Ascension 5: Arsenal
execute if score @s ds-ascension matches 5.. run scoreboard players remove @s ds-hydrogen-normal 20