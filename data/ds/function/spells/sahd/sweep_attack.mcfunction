particle sweep_attack ~ ~ ~ 0.1 0.1 0.1 0 3 force

scoreboard players set @s ds-var 3

# Ascension 5: Frenzied Sweep
execute if score @s ds-ascension matches 5.. if predicate ds:frenzy run scoreboard players operation @s ds-var += @s ds-sahd-strength
execute if score @s ds-ascension matches 5.. if predicate ds:frenzy run scoreboard players add @s ds-var 1

# Scale 2 so that the base damage is 6 and increases by 2 per level of strength
execute store result storage ds:frenzy dmg int 2 run scoreboard players get @s ds-var

execute as @e[type=!#ds:immune,tag=!sahd_caster,distance=..3] run function ds:spells/sahd/damage with storage ds:frenzy
playsound entity.player.attack.sweep master @a ~ ~ ~ 2

# Ascension 3: Slowing Sweep
execute if score @s ds-ascension matches 3.. run effect give @e[type=!#ds:immune,tag=!sahd_caster,distance=..3] slowness 5 1