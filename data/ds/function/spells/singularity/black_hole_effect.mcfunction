execute if entity @s[type=player] run return run function ds:spells/singularity/black_hole_effect_player

execute facing entity @e[type=block_display,tag=ds_blackhole_curr,distance=..41,limit=1] eyes run tp @s ^ ^ ^0.2
particle dust{color:[0,0,0],scale:0.5} ~ ~1 ~ 0.5 0.5 0.5 0 10

execute unless predicate ds:wither run effect give @s wither 5 1