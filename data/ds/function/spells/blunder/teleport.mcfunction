scoreboard players add @s ds-var 1

execute unless block ~ ~ ~ #ds:air unless block ~ ~1 ~ #ds:air run return run tp @s ^ ^ ^-1
execute if score @s ds-var >= #ds-temp ds-var run return run tp @s ^ ^ ^-1

particle sweep_attack ~ ~1 ~ 0.5 0.5 0.5 0 3
execute as @e[tag=!blunder_caster,type=!#ds:immune,distance=..2.5] run damage @s 7 player_attack by @a[tag=blunder_caster,limit=1]

# Ascension 3: Zugzwang
execute if entity @s[tag=ascension_3_rf2] run effect give @e[tag=!blunder_caster,type=!#ds:immune,distance=..1.5] blindness 3 1
execute if entity @s[tag=ascension_3_rf2] run effect give @e[tag=!blunder_caster,type=!#ds:immune,distance=..1.5] slowness 3 0

execute positioned ^ ^ ^1 run return run function ds:spells/blunder/teleport