# Normal Attack - Track

# Set score if needed
execute unless score @s ds-companion-normal matches 0.. run scoreboard players set @s ds-companion-normal 0

scoreboard players operation @s ds-reg1 = @s ds-companion-normal
execute if score @s ds-reg1 > #ds-tick ds-var run return run function ds:lib/cooldown

execute unless entity @e[type=#ds:enemies,distance=..9,tag=!companion_caster] run return run title @s actionbar "There is no enemy to use Track on nearby!"

execute as @e[type=#ds:enemies,distance=..9,tag=!companion_caster,sort=nearest,limit=1] run tag @s add ds_track_target

execute anchored eyes facing entity @e[tag=ds_track_target,distance=..10,limit=1,type=#ds:enemies] eyes run function ds:spells/companion/beam

tag @e[tag=ds_track_target,distance=..10,type=#ds:enemies] remove ds_track_target

scoreboard players operation @s ds-companion-normal = #ds-tick ds-var
# 1.5 second cooldown
scoreboard players add @s ds-companion-normal 30