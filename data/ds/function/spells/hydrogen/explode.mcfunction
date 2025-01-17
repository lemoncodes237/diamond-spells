execute as @e[type=!#ds:immune,distance=..6,tag=!tnt_piston_caster] run damage @s 7 player_explosion by @a[tag=tnt_piston_caster,limit=1]
particle explosion ~ ~ ~ 1 1 1 0 5 force
playsound entity.generic.explode master @a ~ ~ ~ 10 2

# Ascension 2: Injury
execute if entity @s[tag=ascension_2_tnt_piston] run effect give @e[type=!#ds:immune,distance=..6,tag=!tnt_piston_caster] blindness 1 1
execute if entity @s[tag=ascension_2_tnt_piston] run effect give @e[type=!#ds:immune,distance=..6,tag=!tnt_piston_caster] slowness 5

kill @s