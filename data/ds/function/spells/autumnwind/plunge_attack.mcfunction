particle sweep_attack ~ ~1 ~ 4 1 4 0.1 60
execute as @e[type=!#ds:immune,tag=!ds_ascension_1_windy_swoop,distance=..7] run damage @s 5 player_attack by @a[limit=1,tag=ds_ascension_1_windy_swoop]
tag @s remove ds_ascension_1_windy_swoop
playsound entity.wind_charge.wind_burst master @a ~ ~ ~ 1 0.5