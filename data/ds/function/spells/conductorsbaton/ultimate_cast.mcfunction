# Ultimate - Adagio
scoreboard players operation @s ds-reg1 = @s ds-conductors-baton-ultimate
execute if score @s ds-reg1 > #ds-tick ds-var run return run function ds:lib/cooldown

# If we are in ultimate state, do not cast the ultimate
execute if predicate ds:in_ultimate run return run function ds:lib/in_ultimate

# Ascension 0-3 times 
execute if score @s ds-ascension matches 0..3 run effect give @s regeneration 10
execute if score @s ds-ascension matches 0..3 run effect give @s speed 10 2
execute if score @s ds-ascension matches 0..3 run effect give @e[tag=!conductors_baton_caster,distance=..7,type=!#ds:immune] slowness 10 2
execute if score @s ds-ascension matches 0..3 run effect give @e[tag=!conductors_baton_caster,distance=..7,type=!#ds:immune] slow_falling 10
execute if score @s ds-ascension matches 0..3 run effect give @e[tag=!conductors_baton_caster,distance=..7,type=!#ds:immune] mining_fatigue 10 1
execute if score @s ds-ascension matches 0..3 run effect give @s luck 10 22 true

# Ascension 1: Pianissimo
execute if score @s ds-ascension matches 1..3 run effect give @e[tag=!conductors_baton_caster,distance=..7,type=!#ds:immune] weakness 10 0

# Ascension 4: Fermata
execute if score @s ds-ascension matches 4.. run effect give @s regeneration 12
execute if score @s ds-ascension matches 4.. run effect give @s speed 12 2
execute if score @s ds-ascension matches 4.. run effect give @e[tag=!conductors_baton_caster,distance=..7,type=!#ds:immune] slowness 12 2
execute if score @s ds-ascension matches 4.. run effect give @e[tag=!conductors_baton_caster,distance=..7,type=!#ds:immune] slow_falling 12
execute if score @s ds-ascension matches 4.. run effect give @e[tag=!conductors_baton_caster,distance=..7,type=!#ds:immune] mining_fatigue 12 1
execute if score @s ds-ascension matches 4.. run effect give @s luck 12 22 true
execute if score @s ds-ascension matches 4.. run effect give @e[tag=!conductors_baton_caster,distance=..7,type=!#ds:immune] weakness 12 0

# Ascension 5: Largo
execute if score @s ds-ascension matches 5.. run effect give @e[tag=!conductors_baton_caster,distance=..7,type=!#ds:immune] slowness 12 9

playsound minecraft:block.note_block.chime master @a ~ ~ ~ 1 0.1

scoreboard players operation @s ds-conductors-baton-ultimate = #ds-tick ds-var
# 30 second cooldown
scoreboard players add @s ds-conductors-baton-ultimate 600