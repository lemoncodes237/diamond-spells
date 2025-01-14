scoreboard players operation #ds-temp ds-id = @s ds-id

tag @s add ds_to_tp

execute as @a if score @s ds-id = #ds-temp ds-id at @s positioned ~ ~6 ~ run tp @e[type=item_display,tag=ds_to_tp] ~ ~ ~

tag @s remove ds_to_tp