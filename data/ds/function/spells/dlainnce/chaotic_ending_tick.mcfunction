scoreboard players remove @s ds-dlainnce-chaos-tick 1

scoreboard players operation #ds-temp ds-id = @s ds-dlainnce-chaos-caster
execute as @a if score @s ds-id = #ds-temp ds-id run tag @s add ds_chaos_caster

damage @s 2 ds:no_cooldown by @a[tag=ds_chaos_caster,limit=1]

tag @a[tag=ds_chaos_caster] remove ds_chaos_caster

particle wax_on ~ ~1 ~ 0.5 0.5 0.5 0.1 5
title @s actionbar ["",{"text":"CHAOS","color":"dark_red"}]