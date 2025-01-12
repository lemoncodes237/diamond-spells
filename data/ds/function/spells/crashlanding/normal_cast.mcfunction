# Normal Attack - Sword Drop

# Set score if needed
execute unless score @s ds-crashlanding-normal matches 0.. run scoreboard players set @s ds-crashlanding-normal 0

scoreboard players operation @s ds-reg1 = @s ds-crashlanding-normal
execute if score @s ds-reg1 > #ds-tick ds-var run return run function ds:lib/cooldown

# No entity to use sword on
execute positioned ^ ^ ^5 unless entity @e[type=!#ds:immune,tag=!crashlanding_caster,distance=..6] run return run title @s actionbar "There is no mob to use Sword Drop on nearby!"

# Find the entity to use sword on
execute positioned ^ ^ ^5 as @e[type=!#ds:immune,tag=!crashlanding_caster,sort=nearest,limit=1,distance=..7] at @s run summon marker ~ ~ ~ {Tags:["fallingsword_location"]}

execute as @e[tag=fallingsword_location,sort=nearest,limit=1,distance=..30,tag=!spawned] at @s run function ds:spells/crashlanding/summon_sword
execute if score @s ds-ascension matches 3.. as @e[tag=fallingsword_location,sort=nearest,limit=1,distance=..30] at @s positioned ~ ~20 ~ run tag @e[type=item_display,tag=sword_drop,distance=..2] add higher_dmg
execute if score @s ds-ascension matches 5.. as @e[tag=fallingsword_location,sort=nearest,limit=1,distance=..30] at @s positioned ~ ~20 ~ run tag @e[type=item_display,tag=sword_drop,distance=..2] add ascension_5_sword

scoreboard players operation @s ds-crashlanding-normal = #ds-tick ds-var
# 5 second cooldown
scoreboard players add @s ds-crashlanding-normal 100