particle dust{color:[1,0,1],scale:0.5} ~ ~ ~ 0.1 0.1 0.1 0 3

execute unless entity @e[tag=ds_track_target,distance=..2] positioned ^ ^ ^1 run return run function ds:spells/companion/beam

execute if score @s ds-ascension matches 0 run damage @e[tag=ds_track_target,distance=..2,limit=1] 4 player_attack by @a[tag=companion_caster,distance=..10,limit=1]
# Ascension 1: Stronger Track
execute if score @s ds-ascension matches 1.. run damage @e[tag=ds_track_target,distance=..2,limit=1] 6 player_attack by @a[tag=companion_caster,distance=..10,limit=1]

# See if there is a summon, if so, make it angry at the target
scoreboard players operation #ds-temp ds-id = @s ds-id
execute as @e[type=wolf,tag=ds_summon] if score @s ds-id = #ds-temp ds-id run function ds:spells/companion/track_summon

# Created by Y-J Minecraft