# Ultimate - Adagio
scoreboard players operation @s ds-reg1 = @s ds-conductors-baton-ultimate
execute if score @s ds-reg1 > #ds-tick ds-var run return run function ds:lib/cooldown

# If we are in ultimate state, do not cast the ultimate
execute if predicate ds:in_ultimate run return run function ds:lib/in_ultimate

effect give @s regeneration 10
effect give @s speed 10 2
effect give @e[tag=!conductors_baton_caster,distance=..7] slowness 10 2
effect give @e[tag=!conductors_baton_caster,distance=..7] slow_falling 10
effect give @e[tag=!conductors_baton_caster,distance=..7] mining_fatigue 10 1
effect give @s luck 10 22 true

playsound minecraft:block.note_block.chime master @a ~ ~ ~ 1 0.1

scoreboard players operation @s ds-conductors-baton-ultimate = #ds-tick ds-var
# 30 second cooldown
scoreboard players add @s ds-conductors-baton-ultimate 600