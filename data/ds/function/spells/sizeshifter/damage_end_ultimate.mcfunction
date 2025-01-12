# Ascension 5: Returning Strike
tag @s add sizeshifter_inv
execute as @e[type=!#ds:immune,distance=..5,tag=!sizeshifter_inv] run damage @s 10 player_attack by @a[tag=sizeshifter_inv,distance=..7,limit=1]
tag @s remove sizeshifter_inv
tag @s remove sizeshifter_ascension_5