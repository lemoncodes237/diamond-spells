scoreboard players operation #ds-temp ds-sizeshifter-grow-id = @s ds-sizeshifter-grow-id
execute as @a if score @s ds-sizeshifter-grow-id = #ds-temp ds-sizeshifter-grow-id run tag @s add ds_orb_spawner

execute as @e[type=!#ds:immune,tag=!ds_orb_spawner,distance=..5] run damage @s 7 player_explosion by @a[tag=ds_orb_spawner,limit=1]

# Ascension 2: Poisonous Growth
execute if entity @s[tag=ascension_2] run effect give @e[type=!#ds:immune,distance=..5,tag=!ds_orb_spawner] poison 10

tag @a remove ds_orb_spawner

kill @s

particle explosion ~ ~ ~ 0 0 0 0 1
particle dust{color:[1,0,0],scale:0.5} ~ ~ ~ 1 1 1 0.1 30
playsound entity.generic.explode master @a ~ ~ ~