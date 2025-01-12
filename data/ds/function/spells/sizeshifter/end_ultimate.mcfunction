attribute @s scale modifier remove ds:shrink
tag @s remove sizeshifter_ultimate

execute if entity @s[tag=sizeshifter_ascension_5] run function ds:spells/sizeshifter/damage_end_ultimate

particle witch ~ ~1 ~ 1 1 1 0.1 30
playsound entity.player.attack.sweep master @a ~ ~ ~ 1 0.3