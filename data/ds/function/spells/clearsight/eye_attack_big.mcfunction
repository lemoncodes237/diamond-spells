# Ascension 5: Omniscient Eye

scoreboard players set @s ds-var 0

execute as @a if score @s ds-clearsight-eye-id = @e[type=item_display,tag=ds_all_seeing_eye,distance=..2,sort=nearest,limit=1] ds-clearsight-eye-id run tag @s add ds_eye_no_target

execute positioned ~ ~-6 ~ unless entity @e[tag=!ds_eye_no_target,type=!#ds:immune,distance=..20] run return run tag @a remove ds_eye_no_target

execute positioned ~ ~-6 ~ run tag @e[tag=!ds_eye_no_target,type=!#ds:immune,distance=..20,sort=random,limit=1] add ds_eye_target

# Ascension 4: Withering Eye
execute if entity @s[tag=withering_eye] positioned ~ ~-6 ~ as @e[tag=!ds_eye_no_target,type=!#ds:immune,distance=..23] unless predicate ds:wither run effect give @s wither 5 1

execute at @s run tp @s ~ ~ ~ facing entity @e[type=!#ds:immune,distance=..48,tag=ds_eye_target,limit=1] feet
execute at @s run tp @s ~ ~ ~ facing ^ ^ ^-1

# Ascension 2: Slowing Eye
execute if entity @s[tag=slowing_eye] run effect give @e[type=!#ds:immune,distance=..48,tag=ds_eye_target,limit=1] slowness 5

execute at @s run function ds:spells/clearsight/eye_laser

execute at @e[type=!#ds:immune,distance=..48,tag=ds_eye_target,limit=1] run function ds:spells/clearsight/summon_attack

tag @a remove ds_eye_no_target
execute positioned ~ ~-6 ~ as @e[distance=..70,tag=ds_eye_target] run tag @s remove ds_eye_target