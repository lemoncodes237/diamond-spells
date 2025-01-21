# Buggy with Players, do it every 0.25 seconds instead
scoreboard players add @s ds-singularity-player 1
execute if score @s ds-singularity-player matches 5.. run scoreboard players set @s ds-singularity-player 0
execute unless score @s ds-singularity-player matches 1 run return 0

execute facing entity @e[type=block_display,tag=ds_blackhole_curr,distance=..41,limit=1] eyes run tp @s ^ ^ ^1
particle dust{color:[0,0,0],scale:0.5} ~ ~1 ~ 0.5 0.5 0.5 0 10

execute unless predicate ds:wither run effect give @s wither 5 1