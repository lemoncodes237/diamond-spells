scoreboard players operation #ds-temp ds-clearsight-eye-id = @s ds-clearsight-eye-id

tag @s add ds_to_tp

execute as @a if score @s ds-clearsight-eye-id = #ds-temp ds-clearsight-eye-id at @s positioned ~ ~6 ~ run tp @e[type=item_display,tag=ds_to_tp] ~ ~ ~

tag @s remove ds_to_tp