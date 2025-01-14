particle explosion ~ ~ ~ 1 0 1 0 5
playsound item.trident.hit_ground master @a ~ ~ ~ 3 0.5
particle ash ~ ~ ~ 1 1 1 0.1 50

# Find player who summoned sword
scoreboard players operation #ds-temp ds-crashlanding-sworddrop-id = @s ds-crashlanding-sworddrop-id
execute as @a if score @s ds-crashlanding-sworddrop-id = #ds-temp ds-crashlanding-sworddrop-id run tag @s add ds_sword_spawner

# Ascension 5: Bloody Recharge
execute if entity @s[tag=ascension_5_sword] as @e[type=!#ds:immune,distance=..3,tag=!ds_sword_spawner] run function ds:spells/crashlanding/decrease_cooldown

execute as @e[type=!#ds:immune,distance=..3,tag=!ds_sword_spawner] run damage @s 10 player_attack by @a[tag=ds_sword_spawner,limit=1]

# Ascension 3: Paralyze
execute if entity @s[tag=higher_dmg] as @e[type=!#ds:immune,distance=..3,tag=!ds_sword_spawner] run effect give @s darkness 5 0

tag @a remove ds_sword_spawner
