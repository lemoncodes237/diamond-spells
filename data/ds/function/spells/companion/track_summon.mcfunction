data modify entity @s AngryAt set from entity @e[tag=ds_track_target,distance=..2,limit=1] UUID

# Ascension 4: Tracking Wolf
execute if entity @s[tag=ascension_4_summon] run damage @e[type=#ds:enemies,distance=..9,sort=nearest,limit=1,tag=!companion_caster] 5 ds:no_cooldown by @s