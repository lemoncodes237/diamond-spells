scoreboard players set #ds-temp ds-malison-curse 0
playsound entity.wither.death master @a ~ ~ ~ 2

# Find the person who casted
scoreboard players operation #ds-temp ds-var = @s ds-id
execute as @a if score @s ds-id = #ds-temp ds-var run tag @s add erad_caster

# Ascension 2: Base Strike
execute if entity @s[tag=ascension_2_erad] run scoreboard players add @s ds-malison-curse 5

execute store result storage ds:malison dmg int 1 run scoreboard players get @s ds-malison-curse
execute as @e[distance=..12.3,type=!#ds:immune,tag=!erad_caster] run function ds:spells/malison/damage with storage ds:malison

tag @a[tag=erad_caster] remove erad_caster