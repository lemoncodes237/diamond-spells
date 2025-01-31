scoreboard players operation @s ds-health -= @s ds-reg4

execute if score @s ds-autumnwind-a5-rares matches 1.. run function ds:spells/autumnwind/calc_additional_damage

execute store result storage ds:autumn_wind deal double 0.002 run scoreboard players get @s ds-health
function ds:spells/autumnwind/deal_additional_damage with storage ds:autumn_wind

# Give them invincibility to this for a few ticks. This stops the damage we caused getting multiplied further.
scoreboard players set @s ds-autumnwind-invincibility 0