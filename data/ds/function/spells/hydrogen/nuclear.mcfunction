particle block_crumble{block_state:{Name:"tnt"}} ~ ~1 ~ 0.5 0.75 0.5 0 30

scoreboard players add @s ds-hydrogen-nuclear 1

execute if score @s ds-hydrogen-nuclear matches 11.. run return run function ds:spells/hydrogen/end_nuclear

scoreboard players operation @s ds-var = @s ds-hydrogen-nuclear
scoreboard players operation @s ds-var %= #ds-two ds-var

execute if score @s ds-var matches 1 run return 0

# Explode
playsound entity.generic.explode master @a ~ ~ ~
particle explosion ~ ~1 ~ 1.5 1.5 1.5 0 10 force
particle flame ~ ~1 ~ 0.5 0.5 0.5 0.1 30
tag @s add ds_nuclear_temp

# Ascension 1: Boom Boom
execute if entity @s[tag=ds_nuclear_ascension_1] if score @s ds-hydrogen-nuclear matches 10 as @e[type=!#ds:immune,distance=..8,tag=!ds_nuclear_temp] run damage @s 16 player_explosion by @a[tag=ds_nuclear_temp,limit=1]

# Ascension 4: Big Injury
execute if entity @s[tag=ds_nuclear_ascension_4] run effect give @e[type=!#ds:immune,distance=..8,tag=!ds_nuclear_temp] slowness 5
execute if entity @s[tag=ds_nuclear_ascension_4] run effect give @e[type=!#ds:immune,distance=..8,tag=!ds_nuclear_temp] blindness 2 1

# Because of invincibility frames, this one will not be registered if Ascension 1 damage was already done.
execute as @e[type=!#ds:immune,distance=..8,tag=!ds_nuclear_temp] run damage @s 8 player_explosion by @a[tag=ds_nuclear_temp,limit=1]
# Reset TNT Piston cooldown
scoreboard players set @s ds-hydrogen-normal 0

tag @s remove ds_nuclear_temp