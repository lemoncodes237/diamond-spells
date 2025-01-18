# Find who launched it
scoreboard players operation #ds-temp ds-id = @s ds-id
execute as @a if score @s ds-id = #ds-temp ds-id run tag @s add absolutezero_launcher

execute positioned ~ ~-1 ~ as @e[distance=..2.5,type=!#ds:immune,tag=!absolutezero_launcher] run damage @s 10 player_attack by @a[tag=absolutezero_launcher,limit=1]

# Ascension 4: Blinding Ice
execute if entity @s[tag=ascension_4_iceology] positioned ~ ~-1 ~ as @e[distance=..2.5,type=!#ds:immune,tag=!absolutezero_launcher] run effect give @s blindness 3 1

tag @a[tag=absolutezero_launcher] remove absolutezero_launcher