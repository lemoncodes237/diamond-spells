scoreboard players operation @s ds-dlainnce-chaos-tick += @a[tag=dlainnce_caster,limit=1] ds-dlainnce-chaos
damage @s 20 ds:no_cooldown by @a[tag=dlainnce_caster,limit=1]

particle enchanted_hit ~ ~1 ~ 0.5 0.5 0.5 0.1 20

scoreboard players operation @s ds-dlainnce-chaos-caster = @a[tag=dlainnce_caster,limit=1] ds-id