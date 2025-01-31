# Normal Attack - Windy Swoop

# Set score if needed
execute unless score @s ds-autumnwind-normal matches 0.. run scoreboard players set @s ds-autumnwind-normal 0

scoreboard players operation @s ds-reg1 = @s ds-autumnwind-normal
execute if score @s ds-reg1 > #ds-tick ds-var run return run function ds:lib/cooldown
# Can only be casted on ground
execute unless predicate ds:on_ground run return run title @s actionbar [{"text": "You must be on the ground to cast Windy Swoop!","color": "red"}]

summon wind_charge ~ ~0.5 ~ {Motion:[0.0d,-0.1d,0.0d],acceleration_power:0.1d}

particle sweep_attack ~ ~1 ~ 4 1 4 0.1 60

scoreboard players operation #ds-temp ds-ascension = @s ds-ascension
execute store result score #ds-temp ds-autumnwind-a5-rares run clear @s carrot_on_a_stick[custom_data~{ds_rarity:1}] 0

# Ascension 4: Carried by the Wind
execute if score @s ds-ascension matches 4.. run effect give @s speed 3 1

# Deal damage and cause them to take more future damage for 7s.
execute as @e[type=!#ds:immune,distance=..10,tag=!autumnwind_caster] at @s run function ds:spells/autumnwind/increase_damage

# Ascension 1: Plunge Attack
execute if score @s ds-ascension matches 1.. run tag @s add ds_ascension_1_windy_swoop_not_yet

scoreboard players operation @s ds-autumnwind-normal = #ds-tick ds-var
# 10 second cooldown
scoreboard players add @s ds-autumnwind-normal 200