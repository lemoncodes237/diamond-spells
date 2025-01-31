execute if score @s ds-autumnwind-a5-rares >= #ds-temp ds-autumnwind-a5-rares if entity @s[tag=ds_autumnwind_swoop] run return 0

# The higher one is kept
scoreboard players operation @s ds-autumnwind-a5-rares = #ds-temp ds-autumnwind-a5-rares