damage @s 10 player_attack by @a[tag=ds_surge_caster,limit=1]
execute unless score @s ds-dlainnce-chaos-cooldown matches 1.. run scoreboard players add @a[tag=ds_surge_caster] ds-dlainnce-chaos 1
# Ascension 1: Extra Chaos
execute if score #ds-temp ds-var matches 1 unless score @s ds-dlainnce-chaos-cooldown matches 1.. run scoreboard players add @a[tag=ds_surge_caster] ds-dlainnce-chaos 1

scoreboard players set @s ds-dlainnce-chaos-cooldown 6